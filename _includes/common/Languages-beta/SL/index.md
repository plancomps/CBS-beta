[SL]
====

The SimpleLanguage, abbreviated "SL", is a dynamic demonstration language.
It was built using [Truffle for the GraalVM] at Oracle Labs.
A specification of [SL in DynSem] has been given by Vlad Vergu.
Its CBS illustrates how dynamic bindings can be translated to funcons.

The start of the specification of SL in CBS is at [SL].

This CBS specification of SL has been prototyped using a funcon interpreter
generated using the Haskell package [Funcons Tools].

Colophon
--------

Status:
  - abstract syntax: complete, derived from [SL in SD3]
  - dynamic semantics: complete except for 'defineFunction', 'stackTrace', 'nanoTime'
  - static semantics: not relevant
  - disambiguation: complete, derived from [SL in SDF3]

Tests:
  - 15 small programs
  - medium coverage (to be verified)

Evolution:
  - first version

Reuse of funcons:
  - [SL-Funcons-Index]

References:
  - [SL in DynSem]

Keywords:
  - dynamic language, dynamic binding, imperative, disambiguation

Main contributors:
  - Peter Mosses
  - previous: Vlad Vergu

[Truffle for the GraalVM]: https://github.com/graalvm/simplelanguage
[SL in DynSem]: https://github.com/MetaBorgCube/metaborg-sl/
[SL in SDF3]:   https://github.com/MetaBorgCube/metaborg-sl/blob/master/org.metaborg.lang.sl/syntax/SL.sdf3
[Funcons Tools]: https://hackage.haskell.org/package/funcons-tools

[SL]:               SL-cbs/SL/SL-Start
[SL-Funcons-Index]: SL-cbs/SL/SL-Funcons-Index
