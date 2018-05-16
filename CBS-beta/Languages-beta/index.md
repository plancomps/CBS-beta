Languages-beta ![PREVIEW](../Funcons-beta/preview.png)
==============

This page provides access to the beta-release of several examples of language
specifications in CBS, based on an initial collection of so-called 'funcons' 
(fundamental programming constructs). Funcons are reusable components of 
programming language specifications: in the [CBS framework], a language is 
specified by defining a translation from its constructs to funcon terms, 
reusing (by reference) the definitions of the required funcons. 

See [Funcons-beta] for the beta-release of an initial collection of funcons.

Before proceeding, it is recommended to take a look at the 
[CBS-beta language specification reading guide].

IMP
---

IMP is a very small imperative language, useful for illustration of the basic
features of the CBS framework. See the page about the definition of 
[IMP in CBS] for further details.

SIMPLE
------

SIMPLE is a somewhat larger imperative language than IMP, useful for
illustration of further features of the CBS framework. See the page about the 
definition of [SIMPLE in CBS] for further details. 

MiniJava
--------

MiniJava is a very simple subset of Java, useful for illustrating the funcons 
for classes and objects. See the page about the definition of [MiniJava in CBS]
for further details. 

SL
--

The SimpleLanguage, abbreviated "SL", is useful for illustrating the CBS of
dynamic language features. See the page about the definition of [SL in CBS]
for further details. 


Caml Light
----------

Caml Light is a lightweight, portable implementation of the core Caml language
that was developed in the early 1990's, as a precursor to OCaml. See the page
about the definition of [Caml Light in CBS] for further details. 


[CBS framework]: ../index.md

[Funcons-beta]: ../Funcons-beta/index.md

[CBS-beta language specification reading guide]

[IMP in CBS]: IMP/index.md

[SIMPLE in CBS]: SIMPLE/index.md

[MiniJava in CBS]: MiniJava/index.md

[SL in CBS]: SL/index.md

[Caml Light in CBS]: Caml-Light/index.md
