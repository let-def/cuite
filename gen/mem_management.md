# Naming types

Each type description comes with a few different naming schemes, used depending on situation:

## Identifier

A simple name that is a valid C symbol / OCaml name.
Used to derive C symbols, OCaml module and type constructors, etc.

## Positive ML type

A string that is a valid OCaml type and is used to type positive occurrences of
this type.

## Negative ML type

A string that is a valid OCaml type and is used to type negative occurrences of
this type.

## Positive C type

A string that is a valid C++ and is used to type positive occurrences of this
type (in return position, local variables, etc) in C++ code.

## Negative C type

A string that is a valid C++ and is used to type positive occurrences of this
type (in return position, local variables, etc) in C++ code.

# Memory management strategy

Different properties arise from the way an object is used on C++ side. The
memory strategy will determine how a C++ object will be mapped in OCaml.

Among these properties:

- Automatic 
Whether the memory can be reclaimed automatically by the GC. If not, you have
to call [Qt.delete] at some point or there will be a memory leak.
- Deletion
Whether the object can be deleted explicitly, usually to improve memory use.
- Safety
Whether incorrect use of the API will be caught at runtime. If not you risk
corrupting the heap. Usually, it means that calling a function on a deleted
object will be detected.
- Aliasing
Whether the object is part of the heap graph or if it lives on its own.

Derived classes inherit the memory management strategy of their parent.

## QObject

Automatic (maybe slow), deletable, safe, aliased.

The common kind of Qt objects. They are reasonably expensive on C++ side, so
they aren't used everywhere.
The GC cannot track the size allocated by a QObject nor benefit of the memory
reclaimed, therefore it is not inclined to reclaim them quickly: it is usually ok to let the GC do its work if the objects are not referencing external data, however it will be more efficient to use explicit deletion if they use an arbitrary amount of memory.

For instance it is ok to let the GC collect simple dialogs but if you are opening a gallery of images, it is better to explicitly delete the form after use so that memory of images is returned quickly.

These objects form a tree (each object has an optional parent and one or more parent, Qt enforces that an object is a children of its parent). Deleting an object will recursively delete all children.

## Custom

Automatic (fast), non-deletable, safe, non-aliased.

These are copied every-time the FFI frontier is crossed. They are usually suitable for primitive types, or "plain old data" such as small tuples of primitive types.

### Strings

In most cases, QString are represented as OCaml strings and handled like a primitive type. 
The assumption is that these strings are usually small and the copy will be cheap: in the minor heap on OCaml side, as stack objects on Qt side.

If this prove to be too expensive in some cases it will be fine to introduce a second string type with a custom management strategy.

## Managed values

Automatic, deletable, safe, non-aliased.

These come in two flavors, relocatable and non-relocatable:
- relocatable ones stay in minor heap and are free (there is no benefit in
  manually deleting them)
- non-relocatable ones are in C++-heap and are not accounted by the GC (though
  they will be deleted if necessary)

## Unmanaged

Manual, deletable, unsafe, may alias.

These are just pointers to the C++-heap. 
You are responsible for tracking aliasing, doing proper memory management, etc:
- you have to delete them unless Qt API says the opposite, for instance the memory is managed by another object
- even if there are multiple ways to refer to the object, it should be deleted at most once
- if it has been freed somewhere else, you should not use the pointer

Double-frees through the same reference will be detected, but that's the only
guarantee you will get for these objects.

# Method arguments

When passed as arguments, objects can have multiple qualification. Some affects the OCaml semantics, others are just to match the C++-API:
- const: C++ argument requires the const qualifier
- ref: C++ argument should be a reference, the pointer will be dereferenced to satisfy the compiler
- optional: the C++ argument can be NULL, this is represented as an option on ML side
- var: the C++ argument will be mutated, the ML value should be updated, this is represented as a reference on ML side
