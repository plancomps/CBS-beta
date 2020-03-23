---
layout: default
title: IMPPP
parent: Unstable-Languages-beta
has_children: true
permalink: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus
nav_order: "1"
---

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
- K: A Semantic Framework for Programming Languages and Formal Analysis Tools ([Rosu2017KSF])

Keywords:
- imperative, multithreading, illustrative, simple, disambiguation, K framework

Main contributors:

- [Peter Mosses], Neil Sculthorpe


[IMP++]: /CBS-beta/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Start
[IMP]: /CBS-beta/docs/Languages-beta/IMP
[IMPPP-Funcons-Index]: /CBS-beta/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
[IMPPP-Unstable-Funcons-Index]: /CBS-beta/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Unstable-Funcons-Index
[IMP++ in K]: http://www.kframework.org/language-pdfs/new/imppp.pdf
  "OUTDATED"
[Rosu2017KSF]:  http://fslweb.cs.illinois.edu/FSL/papers/2017/rosu-2017-marktoberdorf/rosu-2017-marktoberdorf-public.pdf
  "MARKTOBERDORF 2017"
[Peter Mosses]: https://pdmosses.github.io
  "HOME PAGE"
