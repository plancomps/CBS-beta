[IMP++]
=======

Unstable language specification, illustrating use of multithreading funcons

Grigore Rosu wrote ([Rosu2017KSF]):
> IMP++ extends the IMP language with:
> - Strings and concatenation of strings. [...]
> - Variable increment. [...]
> - Input and output. [...]
> - Abrupt termination. [...]
> - Dynamic threads. [...]
> - Blocks and local variables. [...]

Colophon
--------

Status:
- abstract syntax:   complete
- dynamic semantics: complete
- static semantics:  not relevant
- disambiguation:    complete

Tests:
- 6 small multithreading programs
- 9 small imperative tests
- 3 small imperative programs

Evolution:
- extends [IMP]

Reuse of funcons:
- [IMPPP-Funcons-Index]
- [IMPPP-Unstable-Funcons-Index]

References:
- K semantic definition of the IMP++ language ([IMP++ in K])
- K -- A Semantic Framework for Programming Languages and Formal Analysis Tools ([Rosu2017KSF])

Keywords:
- imperative, multithreading, illustrative, simple, disambiguation, K framework

Main contributors:

- [Peter Mosses], Neil Sculthorpe


[IMP++]: IMPPP-cbs/IMPPP/IMPPP-Start
[IMP]: ../../Languages-beta/IMP
[IMPPP-Funcons-Index]: IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
[IMPPP-Unstable-Funcons-Index]: IMPPP-cbs/IMPPP/IMPPP-Unstable-Funcons-Index
[IMP++ in K]: https://kframework.org/k-distribution/pl-tutorial/1_k/4_imp++/lesson_8/
  "OUTDATED?"
[Rosu2017KSF]:  https://fsl.cs.illinois.edu/publications/rosu-2017-marktoberdorf.html
  "MARKTOBERDORF 2016"
[Peter Mosses]: https://pdmosses.github.io
  "HOME PAGE"
