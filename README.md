Bindings to Qt library

# Installation

Only Linux is supported for now. A proof of concept was made for macOS and will
be merged before first release.

The package should install with `opam pin add cuite $CUITE_ROOT`.

## libcuite.so

```
error while loading shared libraries: libcuite.so: cannot open shared object file: No such file or directory
```

At runtime, binaries rely on the `libcuite.so` dynamic library.

They will look for this library in opam by default. If you are building the project locally (without installing it), you will need to tell the dynamic loader where to find the library:

```shell
export LD_LIBRARY_PATH=$CUITE_ROOT/lib
```

# Minimal projects

You will find early examples in the `examples/` directory.

If you start playing with cuite, it is very important to use the `Qt` module: it will setup the integration between Qt memory management and OCaml GC. Simply adding `let () = ignore Qt.disconnect` should be enough to force it to be linked. (FIXME)

## Lwt integration

The `minimal_lwt.ml` example shows how to deal with Lwt programs.

The important part is to replace the `Lwt` engine with a Qt-aware one:

```ocaml
let () =
  Lwt_engine.set (object
    inherit Lwt_engine.select_based
    method select = Cuite.Qt.qselect
  end)
```
