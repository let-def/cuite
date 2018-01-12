OCAMLC=ocamlc.opt -g
OCAMLOPT=ocamlopt.opt -g

TARGETS=abook_addresswidget test example_1 syntaxhl

all: $(TARGETS)

clean:
	rm -f *.o *.cm* *.gen.* $(TARGETS)

## EXAMPLES

CUITEOPT= $(OCAMLOPT) -I ../lib ../lib/cuite.cmxa

example_1: example_1.ml
	$(CUITEOPT) -o $@ $^

abook_addresswidget: abook_addresswidget.ml
	$(CUITEOPT) -o $@ $^ -no-alias-deps

test: test.ml
	$(CUITEOPT) -o $@ $^

syntaxhl: syntaxhl.ml
	$(CUITEOPT) -o $@ $^

