OCAMLC=ocamlc -g
CXX=g++ -g -fPIC $(shell pkg-config --cflags --libs Qt5Gui Qt5Widgets) -I $(shell ocamlfind printconf stdlib)

all: abook_addresswidget

clean:
	rm -f *.o *.cm* *.gen.*

CPP_SOURCES=$(wildcard *.gen.cpp) mlqt_models.cpp cuite_stubs.cpp mlqt_support.cpp mlqt_lib.cpp mlqt_qvariant.cpp mlqt_csupport.c cuite_const.cpp

libcuite.so: $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(CPP_SOURCES)))
	$(CXX) -shared -o $@ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network $^

MLQT_OBJECTS= qflags.mli qflags.ml qt_ref.mli qt_ref.ml qt.mli qt.ml cuite_types.ml qVariant.mli qVariant.ml qModels.ml cuite.ml

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

## EXAMPLES

CUITEOPT=ocamlopt.opt -g -cclib '-Wl,-rpath,. -L. -lcuite'
example_1: $(MLQT_OBJECTS) example_1.ml | libcuite.so 
	$(CUITEOPT) -o $@ $^

abook_addresswidget: $(MLQT_OBJECTS) abook_addresswidget.ml | libcuite.so 
	$(CUITEOPT) -o $@ $^

test: $(MLQT_OBJECTS) test.ml | libcuite.so 
	$(CUITEOPT) -o $@ $^

