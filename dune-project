(lang dune 2.2)
(authors "JM")
(using coq 0.1)
(name foo)
(generate_opam_files true)
(package
   (name foo.lib)
   (depends
     ("coq" (>= 8.11.0)))
   (synopsis "A foo library"))

(package
   (name foo.app)
   (depends
     ("coq" (>= 8.11.0)))
   (synopsis "A foo app"))
