usingdune:
	dune build

usingcoqmakefile:all

-include Makefile.coq

Makefile.coq: _CoqProject
	coq_makefile -f _CoqProject -o Makefile.coq

reallyclean: cleanall
	rm -f .Makefile.d Makefile.coq Makefile.coq.conf
	rm -f foo.app.opam foo.lib.opam
	dune clean

PHONY: usingdune usingcoqmakefile

