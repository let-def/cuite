all:
	dune build lib/cuite.ml
	dune build lib/libcuite.so

clean:
	dune clean

#LIB_PREFIX ?= $(shell pwd)
#
#default:
#	$(MAKE) -C gen
#	$(MAKE) -C lib LIB_PREFIX=$(LIB_PREFIX)
#
#install:
#	ln -sf libcuite.so lib/dllcuite.so
#	ocamlfind install cuite lib/META lib/cuite.a lib/cuite.cma lib/cuite.cmxa \
#		lib/cuite.cmi $(filter-out lib/cuite__alloc.%,$(wildcard lib/cuite_*.cmi)) \
#		lib/cuite.cmx lib/cuite__qt.cmx lib/cuite__flags.cmx lib/dllcuite.so
#	install -t $(LIB_PREFIX) lib/libcuite.so
#
#uninstall:
#	ocamlfind remove cuite
#	rm -f $(LIB_PREFIX)/libcuite.so
#
#reinstall:
#	-$(MAKE) uninstall
#	$(MAKE) install
