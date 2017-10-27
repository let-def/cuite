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

ML_SOURCES = 													 \
	cuite__flags.mli   cuite__flags.ml 	 \
	cuite__alloc.mli   cuite__alloc.ml 	 \
	cuite__qt.mli		   cuite__qt.ml      \
	cuite__variant.mli cuite__variant.ml \
	cuite__models.ml 										 \
	cuite.ml

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

cuite.cma: $(ML_SOURCES) | libcuite.so
	$(OCAMLC) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(PWD) $^

cuite.cmxa: $(ML_SOURCES) | libcuite.so
	$(OCAMLOPT) -a -o $@ -cclib -lcuite -cclib -Wl,-rpath,$(PWD) $^
