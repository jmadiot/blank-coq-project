(lang dune 2.2)
(authors "JM")
(using coq 0.1)
(name foo)
(generate_opam_files true)
(package
   (name foo.lib)
   (depends
     ("coq" (>= 8.11.0))
	 ("dune" (>= 2.2))
     ("coq-relation-algebra" (>= 1.7)))
   (synopsis "A foo library"))

(package
   (name foo.app)
   (depends
     ("foo.lib" (>= 0))  ; comme ça ?
     ("coq" (>= 8.11.0))
	 ("dune" (>= 2.2))
	 ("coq-relation-algebra" (>= 1.7)))
   (synopsis "A foo app"))
