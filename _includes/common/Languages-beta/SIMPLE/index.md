[SIMPLE]
========

Grigore Rosu and Traian Florin Serbanuta gave a definition of
[SIMPLE in the K framework]. They wrote:

> SIMPLE is intended to be a pedagogical and research language that captures
> the essence of the imperative programming paradigm, extended with several
> features often encountered in imperative languages.

SIMPLE is a somewhat larger imperative language than IMP. Its CBS illustrates
further features of the framework. The start of the specification of SIMPLE in
CBS is at [SIMPLE].

Note that this CBS specification of SIMPLE does not yet include threads, since
funcons for threads were not yet available when it was created.

See [SIMPLE-Threads] for a CBS of the full SIMPLE language.

Colophon
--------

Status:
  - abstract syntax:   complete, derived from [K Overview and SIMPLE Case Study]
  - dynamic semantics: complete except for concurrency constructs
  - static semantics:  not specified
  - disambiguation:    incomplete

Tests:
  - 53 small programs
  - high coverage (to be verified)

Evolution:
  - initial version

Reuse of funcons:
  - [SIMPLE-Funcons-Index]

References:
  - [K Overview and SIMPLE Case Study]

Keywords:
  - imperative, illustrative, simple, disambiguation, K framework

Main contributors:
  - Thomas van Binsbergen, Peter Mosses, Neil Sculthorpe

[K Overview and SIMPLE Case Study]:  http://dx.doi.org/10.1016/j.entcs.2014.05.002
[SIMPLE in the K framework]: http://fsl.cs.illinois.edu/index.php/K_Overview_and_SIMPLE_Case_Study

[SIMPLE]:               SIMPLE-cbs/SIMPLE/SIMPLE-Start
[SIMPLE-Funcons-Index]: SIMPLE-cbs/SIMPLE/SIMPLE-Funcons-Index

[SIMPLE-Threads]: ../Unstable-Languages-beta/SIMPLE-Threads
