[MiniJava]
==========

Joao Cangussu, Jens Palsberg and Vidyut Samanta gave a BNF grammar for a very
simple subset of Java in the [MiniJava project]. They wrote:

> MiniJava is a subset of Java. The meaning of a MiniJava program is given by
> its meaning as a Java program. Overloading is not allowed in MiniJava. [...]

MiniJava is a very simple subset of Java. Its CBS illustrates the funcons
for classes and objects. The start of the specification of MiniJava in CBS
is at [MiniJava].

Colophon
--------

Status:
  - abstract syntax:   complete, derived from [BNF for MiniJava]
  - dynamic semantics: complete
  - static semantics:  not specified
  - disambiguation:    complete

Tests:
  - 8 small-to-medium-size programs from the [MiniJava Project]
  - 65 small unit tests, high coverage

Evolution:
  - first version

Reuse of funcons:
  - [MiniJava-Funcons-Index]

References:
  - [MiniJava Project]
  - [Java Manual]
  - [BNF for MiniJava]

Keywords:
  - Java, object-oriented

Main contributors:
  - Peter Mosses

[MiniJava project]: http://www.cambridge.org/us/features/052182060X/
[Java Manual]: https://docs.oracle.com/javase/specs
[BNF for MiniJava]: http://www.cambridge.org/us/features/052182060X/grammar.html

[MiniJava]:               MiniJava-cbs/MiniJava/MiniJava-Start
[MiniJava-Funcons-Index]: MiniJava-cbs/MiniJava/MiniJava-Funcons-Index
