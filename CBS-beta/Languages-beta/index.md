Languages-beta
==============

This page provides access to the beta-release of five examples of language
specifications in CBS, based on an initial collection of so-called 'funcons' 
(fundamental programming constructs). Funcons are reusable components of 
programming language specifications: in the [CBS framework], a language is 
specified by defining a translation from its constructs to funcon terms, 
reusing (by reference) the definitions of the required funcons. 

Before proceeding, take a look at the navigation and language definition
sections of the [Browsing guide].

See [Funcons-beta] for the beta-release of an initial collection of funcons.
Those funcons used in the CBS of a particular language are listed in an index,
accessed from the dropdown menu shown when browsing its specification. 
The [reuse] page shows how may funcons are directly reused in the different
language specifications.

The specification of each funcon has been validated by basic unit tests that
exercise all its rules. Moreover, funcons that are reused in two or more of
the illustrative language specifications have been exercised in different
contexts.

The current level of validation of the illustrative language specifications
varies considerably, and the coverage of the test suites has not yet been
analysed. The colophon on the start page of each language specification
includes the size of the current test suite and an indication of its expected
coverage. Further tests are to be made during the beta-release review period;
the test suites will subsequently be added to this website.

IMP
---

IMP is a very small imperative language. Its CBS specification illustrates the 
basic features of the framework. See [IMP in CBS] for further details.

SIMPLE
------

SIMPLE is a somewhat larger imperative language than IMP. Its CBS illustrates
further features of the framework. See [SIMPLE in CBS] for further details. 

MiniJava
--------

MiniJava is a very simple subset of Java. Its CBS illustrates the funcons 
for classes and objects. See [MiniJava in CBS] for further details. 

SL
--

The SimpleLanguage, abbreviated "SL", is a dynamic language. Its CBS illustrates
how dynamic bindings can be translated to funcons. See [SL in CBS] for further
details. 

OCaml Light
-----------

OCaml Light is a core sublanguage of [OCaml], corresponding closely to 
[Caml Light] (an obsolete pedagogical functional programming language). 
Its CBS illustrates scaling up to a medium-sized language. 
See [OCaml Light in CBS] for further details.


[CBS framework]: ../index.md

[Browsing guide]: ../Guide/Browsing.md

[Funcons-beta]: ../Funcons-beta/index.md

[IMP in CBS]: IMP/index.md

[SIMPLE in CBS]: SIMPLE/index.md

[MiniJava in CBS]: MiniJava/index.md

[SL in CBS]: SL/index.md

[OCaml Light in CBS]: OCaml-Light/index.md

[Caml Light]: https://caml.inria.fr/caml-light/

[Published specification of Caml Light]: http://plancomps.org/taosd2015/

[OCaml]: http://ocaml.org
