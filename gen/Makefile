LIBS=qtCore qtGui qtWidgets

all: ../lib/cuite.ml ../lib/cuite_stubs.gen.cpp ../lib/cuite_stubs.gen.h ../lib/cuite_const.cpp ../lib/cuite_const.h

../lib/cuite_stubs.gen.cpp: tool/shared.ml $(foreach LIB,$(LIBS),$(LIB)_enum.ml $(LIB)_classes.ml $(LIB)_impl.ml) flag_values.ml tool/gen_classes.ml tool/gen_enum.ml tool/driver.ml
	ocamlc -g -o /tmp/driver -I tool $^
	cd ../lib && /tmp/driver

../lib/cuite.ml ../lib/cuite_stubs.gen.h ../lib/cuite_const.cpp ../lib/cuite_const.h: ../lib/cuite_stubs.gen.cpp

flag_values.ml: tool/shared.ml $(foreach LIB,$(LIBS),$(LIB)_enum.ml) tool/gen_value.ml
	ocamlc -g -o /tmp/gen_value -I tool $^
	/tmp/gen_value > flag_values.ml

clean:
	rm -f *.cm? tool/*.cm? flag_values.ml
