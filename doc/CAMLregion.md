# CAMLregion: revisiting the OCaml-C FFI

## Introduction

Writing code bridging C library to OCaml code is a difficult task. While writing [Cuite], an OCaml library that interfaces the Qt tool-kit, we discovered a few idoims that, we believe, help to keep this plumbing simple to reason about.

Qt is a C++ framework that enables writing portable user interfaces. More generally, it offers many tools for solving many common software engineering problems. User interfaces are challenging to write because they involve complex life times and control flow: data is described as a dynamically changing graph of components, control can jump back-and-forth between user code and library code, different tasks can run concurrently... 

Interfacing with OCaml means replicating all these functionalities while abiding by OCaml & Qt rules about memory management. By revisiting a few assumptions of the OCaml GC interface, we ...

The Cuite case is a bit peculiar: because of the wide surface of Qt API (tens of thousands of definitions), the binding is generated:

- a manually written runtime support library connects OCaml and Qt memory management infrastructures,
- a compiler takes a high-level description of the API and generates OCaml and C++ code.

For this reason when possible we preferred to generate uniform, if repetitive, code that suits the mechanical nature of a compiler. With minor adjustment, we believe this approach is suitable for human beings too -- the inherently tricky nature of binding code is better dealt with boring code rather than subtle one.

### Our approach : indirect and dynamic management of roots

We observed that the less natural part of OCaml interaction from C code was the manipulation of roots and the lifetime of OCaml values. [TODO: reference Stephen Dolan Caml-Oxide that encodes the lifetimes rules using Rust type system?]. The C programmer is accustomed to manual memory management: by explicitly creating and destroying pieces of memory or by tying the variable lifetime to the scope. While syntactically the management of OCaml memory seems to fall into these cases, it is actually much more subtle.

<!-- Registration of roots is done through some macros that are provided by the OCaml runtime and look a lot like black magic. Using them properly can, in theory, be done by blindly following rules from the OCaml manual [TODO: reference living in harmony with the OCaml garbage collector]. But this alone is not enough to correctly manage OCaml memory. -->

If the OCaml garbage collector triggers at the wrong time, (1) a value can get moved, (2) a piece of OCaml that is locally referenced but not registered as a root will be collected. If (1) happens in the middle of a _sequence point_ (TODO: reference the definition of C sequence point?) where the same value has been read, this results in an undefined behavior of the C language and, in practice, the lifetime of the value gets disconnected from the lifetime of the variable that holds it. This behavior is completely contradicts the intuition of the C developer who is not used to distinguishing a variable from its contents.

Fortunately (1) can be adressed by a slight, almost mechanical, change to the C API of the garbage collector. By preventing allocating functions from having `value` return type (ideally by preferring them to be `void` functions), this class of error can be ruled-out.

And while the programmer could be blamed for not following the rules in (2), we propose an alternative root management strategy that is more in line with usual C practices.

### Contributions

We claim the following three contributions:

- a general design principle for OCaml FFI helpers function, working with value pointers rather than plain values, that resolves a class of FFI bugs and integrates nicely with existing FFI code,
- an alternative approach to root management that trades some performance for ease of use and safety,
- a reusable and open-source library that implements both of those.

While these were developed in the context of Cuite, the Qt binding, this paper solely focuses on the management of OCaml memory from C code. However to illustrate its applicability to realistic code, we describe how our proposed API behaves in complex situations -- involving callbacks, exceptions and multi-threaded code.

## The OCaml-C FFI

TODO

## value*, one level of indirection

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

With the indirect approach it is the duty of whoever produced the `value*` to register the root. The final consumer also has to be careful when dereferencing the value, but this will generally be done by a primitive function of the GC interface. On the other hand, the rest of the binding code no longer has to be littered with root management.

##### Dealing with immediate values

A reader familiar with OCaml binding code might be worried that working with immediate values (an integer directly stored in a `value`) becomes more complicated with our approach than the normal API.

Immediate values enjoy a lot of nice properties in the OCaml FFI. Since they do not play with the memory graph of OCaml -- they don't reference blocks, they cannot be moved -- the rules for dealing with them are relaxed: they don't have to be put in roots, they can be created without triggering a garbage collection, etc.

However we argue these properties should not be exploited. That some values can be represented without interacting with the GC is an implementation detail. Being prepared for the "worst case" allow to present an uniform interface without special-casing.

Still, the API provide the `iVal_long` and `iset_field_long`  short-hands for cases that are known to be safe.

### Safety of the indirect API

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

## Region: dynamic allocation of roots

To further simplify the API described above we propose to make allocation of roots simpler.

The `CAMLparam` and `CAMLlocal` macros declare OCaml roots with a static lifetime, known at compile time. This is nice for performance but requires the developer to be careful with the manipulation of OCaml values.

The semantics of these macros alone are hard to understand and some use cases are not easily covered. As we already saw, returning values is tricky, but storing temporary values in code controlled by the framework is even more problematic.

##### The need for root side-channels

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

##### Region-based management

To let the user dynamically manages the set of roots, we propose a simple API that over-approximates the lifetime of local roots:

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

#### Sub-regions






## Advanced applications

### Sub-regions

### Unlocked regions

### Interacting with exceptions

## Conclusion

materializes roots as a different type, here `value*`