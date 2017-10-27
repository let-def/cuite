OCAMLC=ocamlc.opt -g
OCAMLOPT=ocamlopt.opt -g
CXX=g++ -g -fPIC $(shell pkg-config --cflags --libs Qt5Gui Qt5Widgets) -I $(shell ocamlfind printconf stdlib)

PWD=$(shell pwd)
LIB_PREFIX ?= $(PWD)

all: libcuite.so cuite.cma cuite.cmxa

clean:
	rm -f *.o *.cm* *.gen.* cuite.ml cuite___*.ml Makefile.gen

distclean: clean
	rm -f *.a *.so

## C++ COMPILATION

CPP_SOURCES=$(wildcard *.gen.cpp) \
						cuite_models.cpp cuite_stubs.cpp cuite_support.cpp \
						cuite_wrappers.cpp cuite_variant.cpp cuite_csupport.c

%.o: %.cpp %.h %.gen.cpp %.gen.h
	$(CXX) -c $<

%.o: %.cpp %.h
	$(CXX) -c $<

%.o: %.cpp
	$(CXX) -c $<

%.o: %.c %.h
	$(OCAMLC) -ccopt -fPIC -c $<

%.o: %.c
	$(OCAMLC) -ccopt -fPIC -c $<

libcuite.so: $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(CPP_SOURCES)))
	$(CXX) -shared -o $@ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network $^

## ML COMPILATION

PRE_SOURCES = cuite__flags.mli cuite__flags.ml cuite__alloc.mli cuite__alloc.ml cuite__qt.mli cuite__qt.ml cuite.ml cuite__variant.mli cuite__variant.ml cuite__models.ml

-include Makefile.gen

PRE_BYTECODE  = $(patsubst %.ml,%.cmo,$(patsubst %.mli,%.cmi,$(PRE_SOURCES)))
PRE_NATIVE    = $(patsubst %.ml,%.cmx,$(patsubst %.mli,%.cmi,$(PRE_SOURCES)))

$(GEN_BYTECODE): $(PRE_BYTECODE)
$(GEN_NATIVE): $(PRE_NATIVE)

cuite__variant.cmo: cuite__variant.cmi cuite.cmo
cuite__variant.cmx: cuite__variant.cmi cuite.cmx

cuite__models.cmo: cuite__variant.cmi cuite.cmx
cuite__models.cmx: cuite__variant.cmx cuite__variant.cmi cuite.cmx

%.cmi: %.mli
	$(OCAMLC) -c $<

%.cmo: %.ml
	$(OCAMLC) -c $<

%.cmx: %.ml
	$(OCAMLOPT) -c $<

cuite___%.cmo: cuite___%.ml
	$(OCAMLC) -c -opaque $<

cuite___%.cmx: cuite___%.ml
	$(OCAMLOPT) -c -opaque $<

cuite.cmo: cuite.ml
	$(OCAMLC) -c -no-alias-deps $^

cuite.cmx: cuite.ml
	$(OCAMLOPT) -c -no-alias-deps $^

cuite.cma: $(PRE_BYTECODE) $(GEN_BYTECODE) | libcuite.so
	$(OCAMLC) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(LIB_PREFIX) $(patsubst %.cmi,,$^)

cuite.cmxa: $(PRE_NATIVE) $(GEN_NATIVE) | libcuite.so
	$(OCAMLOPT) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(LIB_PREFIX) $(patsubst %.cmi,,$^)
