BIN=query

all:
	ocamlbuild -use-ocamlfind main.native
	mv main.native $(BIN)

clean:
	rm -rf _build $(BIN)

test:
	cd tests/catphos ; make

full-clean: clean
	cd tests/catphos ; make clean