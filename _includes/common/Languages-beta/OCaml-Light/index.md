[OCaml-Light]
=============

OCaml-Light is a core sublanguage of [OCaml], corresponding closely to
[Caml-Light] (an obsolete pedagogical functional programming language).

Its CBS illustrates scaling up to a medium-sized language.
The start of the specification of OCaml-Light in CBS is at [OCaml-Light].
The specification is divided into sections corresponding to Chapter 7 of the
[OCaml Manual].

The OCaml-Light language corresponds closely to the language whose static
and dynamic semantics have been specified by Scott Owens in the [Ott framework].

The correctness of the CBS semantics (in relation to the implementation
provided by the OCaml developers) has been partially tested by generating
a parser, translator, and interpreter from the specifications, and checking
that the results of running a suite of about 150 small programs using the
generated implementation correspond to the results of running them directly.

Colophon
--------

Status:
  - abstract syntax:   complete, derived from [OCaml Manual]
  - dynamic semantics: complete
  - static semantics:  not specified
  - disambiguation:    incomplete, derived from [OCaml Manual]

Tests:
  - 177 small programs
  - high coverage (to be verified)

Evolution:
  - supersedes [Reusable Components of Semantic Specifications]

Reuse of funcons:
  - [OCaml-Light-Funcons-Index]

References:
  - [OCaml Implementation]
  - [OCaml Manual]
  - [A formal specification for OCaml: the Core Language]
  - [Reusable Components of Semantic Specifications]

Keywords:
  - OCaml, higher-order, functional, imperative, patterns, disambiguation

Main contributors:
  - recent: Peter Mosses, Neil Sculthorpe
  - previous: Martin Churchill, Paolo Torrini


[Caml-Light]:   https://caml.inria.fr/caml-light/
[OCaml Manual]: https://caml.inria.fr/pub/docs/manual-ocaml-4.08
[OCaml]:        https://ocaml.org
[OCaml Implementation]: https://ocaml.org/docs/install.html
[A formal specification for OCaml: the Core Language]: https://github.com/ott-lang/ott/tree/master/examples/ocaml_light
[Reusable Components of Semantic Specifications]: http://plancomps.org/taosd2015
[Ott framework]: https://www.cl.cam.ac.uk/~pes20/ott/

[OCaml-Light]:               OC-L-cbs/OC-L/OC-L-Start
[OCaml-Light-Funcons-Index]: OC-L-cbs/OC-L/OC-L-Funcons-Index
