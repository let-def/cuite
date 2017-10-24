OCAMLC=ocamlc -g
CXX=g++ -g -fPIC $(shell pkg-config --cflags --libs Qt5Gui Qt5Widgets) -I $(shell ocamlfind printconf stdlib)

all: abook_addresswidget

clean:
	rm -f *.o *.cm*

CPP_SOURCES= mlqt_models.cpp cuite_stubs.cpp mlqt_support.cpp mlqt_lib.cpp mlqt_qvariant.cpp mlqt_csupport.c cuite_const.cpp 
MLQT_OBJECTS= $(patsubst %.cpp,%.o,$(CPP_SOURCES)) qflags.mli qflags.ml qt_ref.mli qt_ref.ml qt.mli qt.ml cuite_types.ml qVariant.mli qVariant.ml qModels.ml cuite.ml

## RULES

%.o: %.cpp %.h %.gen.cpp %.gen.h
	$(CXX) -c $<

%.o: %.cpp %.h
	$(CXX) -c $<

%.o: %.cpp
	$(CXX) -c $<

%.o: %.c %.h
	$(OCAMLC) -c $<

%.o: %.c
	$(OCAMLC) -c $<

## EXAMPLES

example_1: $(MLQT_OBJECTS) example_1.ml
	ocamlfind opt -g -o $@ -cclib '-lstdc++ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network' $^

abook_addresswidget: $(MLQT_OBJECTS) abook_addresswidget.ml
	ocamlfind opt -g -o $@ -cclib '-lstdc++ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network' $^

test: $(MLQT_OBJECTS) test.ml
	ocamlfind opt -g -o $@ -cclib '-lstdc++ -lQt5Widgets -lQt5Gui -lQt5Core -lQt5PrintSupport -lQt5Network' $^

