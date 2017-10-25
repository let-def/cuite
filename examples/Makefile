OCAMLC=ocamlc.opt -g
OCAMLOPT=ocamlopt.opt -g

all: abook_addresswidget

clean:
	rm -f *.o *.cm* *.gen.*

## EXAMPLES

CUITEOPT= $(OCAMLOPT) -I ../lib ../lib/cuite.cmxa

example_1: example_1.ml
	$(CUITEOPT) -o $@ $^

abook_addresswidget: abook_addresswidget.ml
	$(CUITEOPT) -o $@ $^

test: test.ml
	$(CUITEOPT) -o $@ $^

