export LD_LIBRARY_PATH:=../_build/default/lib/:$(LD_LIBRARY_PATH)

run-abook_addresswidget.exe:
	dune build abook_addresswidget.exe
	../_build/default/examples/abook_addresswidget.exe

run-syntaxhl.exe:
	dune build syntaxhl.exe
	../_build/default/examples/syntaxhl.exe

run-syntaxhl2.exe:
	dune build syntaxhl2.exe
	../_build/default/examples/syntaxhl2.exe

.PHONY: run-abook_addresswidget.exe run-syntaxhl.exe run-syntaxhl2.exe

#OCAMLC=ocamlc.opt -g
#OCAMLOPT=ocamlopt.opt -g
#
#TARGETS=abook_addresswidget test example_1 syntaxhl syntaxhl2 dbg/dbg otop
#
#all: $(TARGETS)
#
#clean:
#	rm -f *.o *.cm* *.gen.* $(TARGETS)
#
### EXAMPLES
#
#CUITEOPT= $(OCAMLOPT) -I ../lib ../lib/cuite.cmxa
#
#example_1: example_1.ml
#	$(CUITEOPT) -o $@ $^
#
#abook_addresswidget: abook_addresswidget.ml
#	$(CUITEOPT) -o $@ $^ -no-alias-deps
#
#test: test.ml
#	ocamlfind opt -I ../lib ../lib/cuite.cmxa -o $@ -linkpkg -package lwt.unix $^
#
#syntaxhl: syntaxhl.ml
#	$(CUITEOPT) -o $@ $^
#
#syntaxhl2: syntaxhl2.ml
#	$(CUITEOPT) -o $@ $^
#
#dbg/dbg: dbg/dbg.ml
#	$(CUITEOPT) -o $@ $^
#
#otop: otop.ml
#	$(CUITEOPT) -o $@ $^
#
