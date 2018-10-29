# CAMLregion: revisiting the OCaml-C FFI

# Introduction

Writing code bridging C library to OCaml code is a difficult task. While writing [Cuite](https://github.com/let-def/cuite), an OCaml library that interfaces the Qt tool-kit, we discovered a few idioms that, we believe, help to keep this plumbing simple to reason about.

Qt is a C++ framework that enables writing portable user interfaces. More generally, it offers many tools for solving many common software engineering problems. User interfaces are challenging to write because they involve complex life times and control flow: data is described as a dynamically changing graph of components, control can jump back-and-forth between user code and library code, different tasks can run concurrently... 

Interfacing with OCaml means replicating all these functionalities while abiding by OCaml & Qt rules about memory management. By revisiting a few assumptions of the OCaml GC interface, we ...

The Cuite case is a bit peculiar. Because of the wide surface of Qt API (tens of thousands of definitions), the binding is generated:

- a manually written runtime support library connects OCaml and Qt memory management infrastructures,
- a compiler takes a high-level description of the API and generates OCaml and C++ code, linking against the runtime support library.

For this reason when possible we preferred to generate uniform, if repetitive, code that suits the mechanical nature of a compiler. With minor adjustment, we believe this approach is suitable for human beings too -- the inherently tricky nature of binding code is better dealt with boring code rather than subtle one.

## Our approach : indirect and dynamic management of roots

We observed that the less natural part of OCaml interaction from C code was the manipulation of roots and the lifetime of OCaml values. [TODO: reference Stephen Dolan Caml-Oxide that encodes the lifetimes rules using Rust type system?]. The C programmer is accustomed to manual memory management: by explicitly creating and destroying pieces of memory or by tying the variable lifetime to the scope. While syntactically the management of OCaml memory seems to fall into these cases, it is actually much more subtle.

<!-- Registration of roots is done through some macros that are provided by the OCaml runtime and look a lot like black magic. Using them properly can, in theory, be done by blindly following rules from the OCaml manual [TODO: reference living in harmony with the OCaml garbage collector]. But this alone is not enough to correctly manage OCaml memory. -->

If the OCaml garbage collector triggers at the wrong time, (1) a value can get moved, (2) a piece of OCaml memory that is locally referenced but not registered as a root can get collected. If (1) happens in the middle of a _sequence point_ (TODO: reference the definition of C sequence point?) where the same value has been read, this results in an undefined behavior of the C language. In practice, the lifetime of the value gets disconnected from the lifetime of the variable that holds it. This behavior completely contradicts the intuition of the C developer who is not used to distinguishing a variable from its contents.

Fortunately (1) can be adressed by a slight, almost mechanical, change to the C API of the garbage collector. By preventing allocating functions from having `value` return type (ideally by preferring them to be `void` functions), this class of error can be ruled-out.

And while the programmer could be blamed for not following the rules in (2), we propose an alternative root management strategy that is more in line with usual C practices and should prevent that kind of mistake.

## Contributions

We claim the following three contributions:

- a general design principle for OCaml FFI helpers function, working with value pointers rather than plain values, that resolves a class of FFI bugs and integrates transparently with existing FFI code,
- an alternative approach to root management that trades some performance for ease of use and safety,
- a reusable and open-source library that implements both of those.

While these were developed in the context of Cuite, the Qt binding, this paper solely focuses on the management of OCaml memory from C code. However to illustrate its applicability to realistic code, we describe how our proposed API behaves in complex situations -- involving callbacks, exceptions and multi-threaded code.

# The OCaml-C FFI

The OCaml FFI lets the developer manipulate OCaml values from another programming language. A C library provided by the OCaml distribution exposes the primitive operations to achieve that.

This library helps accomplishing two main tasks:

- constructing and deconstructing OCaml values, interpreting them in a meaningful way from the C language (for instance by mapping back-and-forth between OCaml and C representations of integers, of strings, etc);
- cooperating with the OCaml garbage collector, or GC, the runtime service that takes care of managing OCaml memory.

Even though both tasks are much more difficult than when working from within OCaml code (the typechecker will not help you in foreign code), it is at least possible to reason locally, in a compositional way, about OCaml values. For instance, building nested tuples just involves repeatedly building flat ones.

The same cannot be said about the second task. The GC needs to know about all OCaml values that are manipulated from C code, and can look at them at almost any moment.  These restrictions are not natural while programming in C and can lead to subtle bugs that are hard to discover.

Most of the time the GC will not do any work, preferring to wait for a batch of work that is big enough to amortize its overhead. As such an improper use of the OCaml API can go unnoticed for a long time. But even once harm has been done, it might just lead to a corruption of the OCaml heap that will affect an unrelated piece of code.

In short, GC bugs combine two nasty properties: they cannot be studied in isolation and they trigger depending on a complex set of conditions that cannot be inferred by solely looking at the buggy code.

*: The low-level programming community jokingly dubbed these Heisenbugs and Mandelbugs, for their uncertain and chaotic nature.

On the other hand, the OCaml FFI API enjoys a remarkably low overhead: the restrictions are difficult but lead to a cheap and portable interface with the OCaml runtime.
This made OCaml applicable to domains where connecting to a foreign programming language is generally considered too expensive [TODO reference Sundial].

We propose to explore a different trade-off in the design space of FFI API: providing a safer and more convenient API by giving up some of the performance.

This might actually be a more useful position as many mainstream languages got away with heavier FFIs by default (Lua, Python, Java JNI, Go), optionally allowing to resort to a lower-level one for performance critical code (Java JIO, ctypes from LuaJit).

But before trying to build an alternative to the FFI abstraction, we will take a closer look at the restrictions imposed by the GC.

## Value representation

From the C programming language, all OCaml values are represented by the `value` type. It is a signed integer of the same size as a pointer of the host system (in practice, 32 or 64 bits). Values of this size are called "words".

The least significant bit is reserved to help the GC traverse the OCaml heap:

- if it is set, the value is said to be immediate and the remaining bits are directly interpreted: as a 1-bit shorter integer for the `int` OCaml type, or as a unique pattern of bits for constant variants and polymorphic variant constructors
- if it is not set, the value is interpreted as a pointer to a "block", a piece of memory provided by the runtime and guaranteed to be aligned.

Blocks are preceded by a header that determines their "tag" and their size. The tag will determine how to interpret the contents of the block. For common OCaml values, such as algebraic data, records, tuples or arrays, blocks are made of other values.

TODO Figure:

- immediate value, LSB=1: integer
- block value, LSB=0, pointer to a block of memory preceded

<!--  Tags serve two purposes:

- distinguishing between the different non-constant constructors of algebraic types and arrays,
- special tags are reserved to represent objects with a special representation (strings, float and float arrays, foreign objects, ...).
  -->

## Traversal and compaction

Under certain conditions, the OCaml GC might need to traverse the heap. The basic operation is to find which blocks are reachable from a value.

Depending on the tag, the OCaml GC will decide whether a block is made of other `value`s (that, in turn, can be immediate or pointer to blocks) or just an opaque chunk of memory that does not need to be scanned.

By repeating this operation, the GC can traverse the whole heap. If necessary it might also decide to move some blocks.

This operation is even more demanding than mere traversal: the GC not only needs to know all values referenced from C code, it also needs to be able to update them. The C compiler needs to be aware that all OCaml values have to be reloaded when such an operation can happen, as old ones might have been invalidated.

## The memory management macros.

A few C macros are provided by the OCaml runtime to implement foreign functionalities. We will use a simple function that takes two values and makes a pair out of them as a guiding example:

```ocaml
(* The OCaml version *)
let mk_pair_ocaml x y = (x,y)

(* An external function, that we will implement in C *)
external mk_pair_c : 'a -> 'b -> 'a * 'b = "mk_pair_c_impl"
```

The string after the external declaration is the name of the C function that implements the functionality:

- when `mk_pair_c` is applied, the OCaml compiler generates a call to `mk_pair_c_impl` symbol,
- a C file must defines a function of this name
- the C compiler turns it into an object file defining this symbol,
- the system linker connects the two together.

The corresponding C code looks like this:

```c
CAMLprim
value mk_pair_c_impl(value a, value b)
{
  CAMLparam2(a, b);
  CAMLlocal1(pair);
  pair = caml_alloc(2, 0);
  Store_field(pair, 0, a);
  Store_field(pair, 1, b);
  CAMLreturn(pair);
}
```

The first macro `CAMLprim` makes sure that the symbol will be visible from the OCaml code. The other ones do more interesting jobs.

*CAMLparam* `CAMLparam2(a,b)` expands to two other macros:

- `CAMLparam0()` saves the current local roots at the beginning of the function,
- `CAMLxparam2(a,b)` setups a new block of roots with the addresses of `a` and `b`).

The local root is a linked list of pointer to OCaml values, implemented by the `struct caml__roots_block` type, and stored in the `caml_local_roots` global variable.

The job of the memory management macros is to make it as easy as possible to register all local variables of type `value` in this linked list and to remove them when returning from the function.

There should be only one `CAMLparam0()` in a function, but there can be as many calls to `CAMLxparam` as needed. The variants from `CAML(x)param1(x1)` to `CAML(x)param5(x1,x2,x3,x4,x5)` are available, as well as `CAML(x)paramN(array, array_size)` for registering array of values.

*CAMLlocal* The next macro call of interest is `CAMLlocal1(pair)`. It expands to `value pair = Val_unit; CAMLxparam1(pair)`:

- it declares and initializes a local variable named `pair`,
- it adds its address to the set of local roots.

The next lines, the calls to `caml_alloc` and `Store_field`, are not directly related to the management of roots. They deal with the construction of OCaml values -- assuming that all variables have been registered properly.

The last macro is `CAMLreturn`. It restores the `caml_local_roots` variable to the state saved by `CAMLparam0();`.

The code above can be desugared to the equivalent:

```c
CAMLprim
value mk_pair_c_impl(value a, value b)
{
  // CAMLparam2(a, b);
  CAMLparam0();      // 1) save the state of local roots
  CAMLxparam2(a, b); // 2a) add &a and &b to local roots

  // CAMLlocal1(pair);
  value pair = Val_unit;
  CAMLxparam1(pair); // 2b) add &pair to local roots

  ...
  
  // CAMLreturn(pair);
  CAMLdrop;		    // 3) restore the state of local roots
                     //    (forgetting &a, &b and &pair)
  return(pair);
}
```

In plain words, the three fundamental operations are:

- saving local roots,
- registering roots,
- restoring local roots.

### Carefully dealing with intermediate results

To illustrate how easy it is to misuse this API, let us recall an example from Dolan[caml-oxide].

Lets imagine one wants to make a triplet as two nested pairs:

```ocaml
let triplet x y z = (x,(y,z))
```

Armed with `mk_pair_c_impl` and following the rules above, one might be tempted to write:

```c
CAMLprim
value c_triplet(value x, value y, value z)
{
  CAMLparam3(x,y,z);
  CAMLlocal1(triplet);

  triplet = mk_pair_c_impl(x, mk_pair_c_impl(y, z));

  CAMLreturn(triplet);
}
```

But a bug lies in this implementation: the C compiler might have already loaded the value of `x` (for instance, by copying it on the stack) before the nested call to `mk_pair_c_impl(y, z)`.

If this call triggers a compaction and `x` get moved, the old, and wrong, value of `x` will be passed to the outer call.

The correct version uses an intermediate variable for the temporary value:

```c
CAMLprim
value c_triplet(value x, value y, value z)
{
  CAMLparam3(x,y,z);
  CAMLlocal2(intermediate, triplet);

  intermediate = mk_pair_c_impl(y, z);
  triplet = mk_pair_c_impl(x, intermediate);

  CAMLreturn(triplet);
}
```

To avoid bugs, calls to functions manipulating the OCaml memory should be linearized as often as possible and temporary results stored in local roots.

# value*, one level of indirection

The first change we propose is to replace return types of type `value` in FFI functions that allocates by a new argument of type `value*`. While it looks like a minor change, this brings a lot of simplifications to the rest of the code and prevents some undefined behaviors.

##### No risk of unexpected copy

A tricky source of bug that we highlighted in the previous section was that OCaml values get unexpectedly copied while being manipulated. With this new level of indirection only the pointer gets copied. If the GC comes and rewrites the roots, the pointer will still point to the right one.

Looking at the operations involved in terms of lifetime, reading a value from a root makes it epheremal: the value is valid only until the next OCaml allocation -- or simply undefined if an allocation can happen in the same sequence-point.

When directly working with `value`, this operation is implicit. Working with `value*`, the operation becomes explicit and forces the developer to think about its effects -- they choose when to dereference the pointer. In practice, this should only happen in the primitive functions of the Garbage Collector, relieving the user of the API from this burden.

#### Figure: Indirect API

```c
// Allocating functions with the new API
void icaml_alloc(value *root, size_t size, int tag);
void icaml_copy_string(value *root, const char *string);
void icaml_alloc_string(value *root, size_t size);
...
    
// Non-allocating functions still work direct values
long iLong_val(value *x);
value iVal_long(long x);
int iget_tag(value *x);
value iget_field(value *root, int n);
void iset_field(value *root, int n, value *v);
void iset_field_long(value *root, int n, long v);
...
```

#####   Return values become explicit

Now that all functions that interacts with the garbage collector take pointers, most offending code becomes impossible to write:

- functions returning void simply cannot be nested,
- nesting a call to a function returning `value` where a `value*` requires taking the address of a temporary (`&get_field(x, 0)`), which is rejected by the C compiler.

To illustrate the benefits of this approach, let's take a look at how our `triplet` would look like:

```c
static void mk_pair(value *result, value *a, value *b)
{
  icaml_assert(result != a, result != b);
  icaml_alloc(result, 2, 0);
  iset_field(result, 0, a);
  iset_field(result, 1, b);
}

CAMLprim
value caml_triplet(value x, value y, value z)
{
  CAMLparam3(x, y, z);
  CAMLlocal2(pair, result);
  mk_pair(&pair, &y, &z);
  mk_pair(&result, &x, &pair);
  CAMLreturn(result);
}
```

##### No need to repeat roots.

Another benefit of this approach is that callees no longer have the responsibility of reregistering roots for their arguments.

With the existing OCaml API, any function receiving an argument of type `value` has to register a corresponding root. There are as many roots for a value as sub-routines calls to the value.

```c
TODO: some example?
```

With the indirect approach it is the duty of whoever produced a `value*` to register the root. The final consumer also has to be careful when dereferencing the value, but this will generally be done by a primitive function of the GC interface. On the other hand, the rest of the binding code no longer has to be littered with root management.

##### Dealing with immediate values

A reader familiar with OCaml binding code might be worried that working with immediate values (an integer directly stored in a `value`) becomes more complicated with our approach than the normal API.

Immediate values enjoy a lot of nice properties in the OCaml FFI. Since they do not play with the memory graph of OCaml -- they don't reference blocks, they cannot be moved -- the rules for dealing with them are relaxed: they don't have to be put in roots, they can be created without triggering a garbage collection, etc.

However we argue these properties should not be exploited. That some values can be represented without interacting with the GC is an implementation detail. Being prepared for the "worst case" allow to present an uniform interface without special-casing.

Still, the API provide the `iVal_long` and `iset_field_long`  short-hands for cases that are known to be safe.

## Safety of the indirect API

Moving everything to pointers opened a new opportunity for incorrect uses: aliasing. In the `triplet` case it would mean using the `result` variable both as input and output in the same call:

```c
CAMLprim
value caml_triplet(value x, value y, value z)
{
  CAMLparam3(x, y, z);
  CAMLlocal1(result);
  mk_pair(&result, &y, &z);
  mk_pair(&result, &x, &result); // result is aliased!
  CAMLreturn(result);
}
```

While true, this case is actually less worrying. The code that dereferences roots can be instrumented to deal with that:

- by properly handling aliasing, for instance by ensuring that all arguments are read before any are written
- by checking for this case and emitting a warning or failing, as illustrated by the assertions in the implementation of `mk_pair` primitive. 

Actually thanks to the indirection we can go further than that. The observation is that any well-formed argument of type `value*` is actually a root. Native OCaml FFI is `value`-centric: functions directly take and produce values. Our rewriting make it `root`-centric: functions receive roots and manipulate values though them.

The main API function that seems to break the `value*` rule is `iget_field`, which returns a value. But that is precisely because this value is not a root and could be pointing to an arbitrary place in the OCaml heap. To make further use of this value one will have to store it in a root.

While the connection between a root and its value is lost with native OCaml FFI,  we can access it at any time with the indirect API. Plugging into GC infrastructure we can introspect the roots and provide a debug variant of the FFI where the validity of values are checked dynamically. This prevents a large class of misuse of GC API and delayed heap corruption bugs.

##### Discussion: where to add the indirection?

Having made explicit the distinction between values (of type `value`) and roots (of type `value*`) in the API, one could wonder why our API makes use of roots in places where values would be fine: the arguments to `iget_field`, `iLong_val`, etc.

We are not totally decided on this issue and might revisit this decision in the future. However the ability to dynamically check for correct use and the more explicit, safer-looking, nature of the resulting code makes us prefer the approach favoring root arguments.

Beside the slight increase in verbosity, we did not find any drawback to this approach.

# Regions: dynamic allocation of roots

To further simplify the API described above we propose to make allocation of roots simpler.

The `CAMLparam` and `CAMLlocal` macros declare OCaml roots with a static, known at compile-time, lifetime. This is nice for performance but puts more burden on the developer.

The semantics of these macros alone are hard to understand and some use cases are not easily covered. As we already saw, returning values is tricky, but storing temporary values in code controlled by an external framework is even more problematic.

#### The need for root side-channels

For the sake of the example, let's imagine that we need to sort some C structures that contain OCaml values. To achieve this the `qsort_r` from the C standard library seems appropriate. It takes an array of user-defined structures and a custom comparison operator in the form of a function pointer.

```c
struct item {
  my_c_type x;
  value v;
};

static int
c_comparator(const void *item1, const void *item2, void *comparator)
{
    value v1 = ((const struct item *)item1)->v;
    value v2 = ((const struct item *)item2)->v;
    value ml_comparator = *(value*)comparator;
    return Val_int(caml_callback2(ml_comparator,v1,v2));
}

void sort_ocaml_items(struct item *items, size_t count, value *comparator)
{
    qsort_r(items, count, sizeof(struct item),
           	c_comparator, comparator);
}
```

`caml_callback2` is a primitive function of native OCaml FFI that allows to invoke an OCaml closure from C code (*for the sake of simplicity we do not deal with the case where the callback raises an exception).

Because some OCaml code is being called in the middle of the comparator, the garbage collector can get called in the middle of the sorting. Even if we registered roots for all the values in this array, the implementation of `qsort_r` might have made some copy that will not be updated by the GC. More generally, rewriting the array in the middle of the sort can lead to unexpected behaviors.

Because we know all the values of interest prior to calling `qsort_r`, a solution is to work with pointer to values. One first allocates an array of roots and pass pointers to this array. However in other situations, the set of roots might be determined dynamically.

<!-- While this might seem contrived, the case occurred for us when binding some C++ object-oriented patterns to OCaml.

```c++
struct Agent
{
    virtual void handleChange() = 0;
}
struct Simulation
{
    void run();
}
```

In this problem an arbitrary number of agents, implemented by inheriting the `Agent`, are managed by a simulation, represented as an instance of the `Simulation` class.
When `run()` is called, the simulation determines which agents changed and will call their `handleChange` method.  One or more rounds can be executed, depending on parameters determined by the simulation.

```c++
struct MLAgent : Agent
{
  value *x;
}
```
 -->

## Region-based management

To let the developer dynamically manages the set of roots, we propose a simple API that over-approximates the lifetime of local roots:

```c
typedef struct ... region_t;
void rcaml_enter(region_t *region);
void rcaml_leave(region_t *region);
value *rcaml_root(void);
#define rCAMLregion(...) ...
#define rCAMLreturn(p) ...
```

In this approach, we distinguish between external and helper functions:

- external functions are the ones that can be directly called from OCaml,
- helper functions implement useful routines for binding foreign code.

The external functions are responsible for setting up the region while helper functions assume that a region has already been setup. Mimicking `CAMLparam...` macros, we provide some sugar for registering parameters while setting up the region:

```c
value *pair_helper(value *a, value *b)
{
    value *v = rcaml_root();
    icaml_alloc(v, 2, 0);
    icaml_set_field(v, 0, a);
    icaml_set_field(v, 0, b);
    return v;
}

CAMLprim
value mk_pair(value a, value b)
{
    rCAMLregion(&a, &b);
    rCAMLreturn(pair_helper(&a, &b));
}

CAMLprim
value mk_triplet(value x, value y, value z)
{
    rCAMLregion(&x, &y, &z);
    rCAMLreturn(pair_helper(&x, pair_helper(&y, &z)));
}
```

Setting up a region introduces a new set of local roots that can grow dynamically as new roots are requested. Leaving a region releases all the roots at once.

## Sub-regions

Assuming that roots have the same life-time as an external function works well when a finite amount of work is done by this function, in particular a finite number of root is needed.

However, for long-running function (for instance, an event loop driven by C-code), the over-approximation of lifetimes can be problematic. For these cases, we allow the introduction of sub-regions, valid in a local scope.

These sub-regions follow a stack discipline: they can be nested and are released in the reverse order of their allocation.

```c
void rcaml_subenter(region_t *region);
void rcaml_subleave(region_t *region);
```

For instance, the following code avoids leaking roots while transforming all the elements of an array:

```c
void fold_array(value *result, value *array)
{
    region_t region;
    size_t count = iget_size(array);
    *result = initial_value;
    for (size_t i = 0; i < count; ++i)
    {
        rcaml_subenter(&region);
        value *item = rcaml_root();
        *item = iget_field(array, i);
        process_item(*result, *item);
        rcaml_subleave(&region);
    }
}
```

Like normal regions, macros an be used to automate some of the boilerplate.

## Releasing the lock in a region

So far we demonstrated the use of region to allocate and manage OCaml memory.  The concept can also be applied to the converse: preventing allocation and manipulation of OCaml memory in a given scope.

Although a multi-core runtime is being developed (TODO: Reference Dolan & KC MCGC), the vanilla OCaml runtime can only executes on a single thread of execution. When multiple threads are in use, a lock is used by the OCaml runtime to ensure that only one of them executes OCaml code at any given time.

The C FFI provides an API for releasing the OCaml runtime in a given scope of code.

```c
// Existing API
void caml_release_runtime_system(void);
void caml_acquire_runtime_system(void);
```

These APIs can be wrapped in corresponding `rcaml_{acquire,release}_runtime_system` functions, that does additional bookkeeping to ensure proper use of regions:

- new roots cannot be allocated,
- setting up normal regions is forbidden, but a special-kind of region allow reacquiring the runtime,
- inside a released region, dereferencing a value is forbidden, most helper functions won't work.

```c
// Wrapper releasing the runtime
void rcaml_release_runtime_system(void);
void rcaml_acquire_runtime_sytem(void);

// Wrapper locally reacquiring the runtime
void rcaml_reacquire_runtime_sytem(void);
void rcaml_rerelease_runtime_system(void);

// Macros
#define rcaml_without_ocaml...
#define rcaml_with_ocaml...
// Macros that allow writing code such as:
// rcaml_without_ocaml
// {
//   long_running_c1();
//   rcaml_with_ocaml
//   {
//     commit_result();
//   }
//   long_running_c2();
// }
```

All these restrictions can be tested dynamically. While no checks can be done at compile-time, errors can be detected deterministically during execution.

## Calling OCaml from region-managed code



### Handling exceptions

# Implementing regions



# Conclusion

materializes roots as a different type, here `value*`