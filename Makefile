LIB_PREFIX ?= $(shell pwd)

all clean:
	$(MAKE) -C gen $@
	$(MAKE) -C lib LIB_PREFIX=$(LIB_PREFIX) $@
	$(MAKE) -C examples $@

default:
	$(MAKE) -C gen
	$(MAKE) -C lib LIB_PREFIX=$(LIB_PREFIX)

install:
	ocamlfind install cuite lib/META lib/cuite.a lib/cuite.cma lib/cuite.cmxa \
		$(filter-out lib/cuite__alloc.%,$(wildcard lib/cuite_*.cmi))
	install -t $(LIB_PREFIX) lib/libcuite.so

uninstall:
	ocamlfind remove cuite
	rm -f $(LIB_PREFIX)/libcuite.so

reinstall:
	-$(MAKE) uninstall
	$(MAKE) install
