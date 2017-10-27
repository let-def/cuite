OCAMLC=ocamlc.opt -g
OCAMLOPT=ocamlopt.opt -g
CXX=g++ -g -fPIC $(shell pkg-config --cflags --libs Qt5Gui Qt5Widgets) -I $(shell ocamlfind printconf stdlib)

all: libcuite.so cuite.cma cuite.cmxa

clean:
	rm -f *.o *.cm* *.gen.* cuite.ml

distclean: clean
	rm -f *.a *.so

CPP_SOURCES=$(wildcard *.gen.cpp) \
						cuite_models.cpp cuite_stubs.cpp cuite_support.cpp \
						cuite_wrappers.cpp cuite_variant.cpp cuite_csupport.c

libcuite.so: $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(CPP_SOURCES)))
	$(CXX) -shared -o $@ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network $^

BOOT_SOURCES =												 \
	cuite__flags.mli   cuite__flags.ml 	 \
	cuite__alloc.mli   cuite__alloc.ml 	 \
	cuite__qt.mli		   cuite__qt.ml

BOOT_CMO = $(patsubst %.ml,%.cmo, $(patsubst %.mli,, $(BOOT_SOURCES)))
BOOT_CMX = $(patsubst %.ml,%.cmx, $(patsubst %.mli,, $(BOOT_SOURCES)))

OTHER_SOURCES = 											 \
	cuite__variant.mli cuite__variant.ml \
	cuite__models.ml

GEN_SOURCES = $(shell ocamldep.opt -sort cuite___*.ml)

## RULES

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

PWD=$(shell pwd)

pre.cmo: $(BOOT_SOURCES)
	$(OCAMLC) -c $^

pre.cmx: $(BOOT_SOURCES)
	$(OCAMLOPT) -c $^

$(BOOT_CMO): pre.cmo

$(BOOT_CMX): pre.cmx

%.cmi: %.mli
	$(OCAMLC) -c $<

%.cmo: %.ml
	$(OCAMLC) -c $<

%.cmx: %.ml
	$(OCAMLOPT) -c $<

cuite.cmo: cuite.ml | pre.cmo
	$(OCAMLC) -c -no-alias-deps $^

cuite.cmx: cuite.ml | pre.cmx
	$(OCAMLOPT) -c -no-alias-deps $^

cuite.cma: $(BOOT_CMO) cuite.cmo $(OTHER_SOURCES) $(GEN_SOURCES) | libcuite.so
	$(OCAMLC) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(PWD) $^

cuite.cmxa: $(BOOT_CMX) cuite.cmx $(OTHER_SOURCES) $(GEN_SOURCES) | libcuite.so
	$(OCAMLOPT) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(PWD) $^
