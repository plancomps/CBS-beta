[SIMPLE-Threads]
================

Grigore Rosu and Traian Florin Serbanuta gave a definition of
SIMPLE in the [K-framework] in the following article:

> K Overview and SIMPLE Case Study.  
> Grigore Rosu and Traian Florin Serbanuta.  
> K'11, ENTCS 304, pp 3-56, 2014.  
> <http://dx.doi.org/10.1016/j.entcs.2014.05.002>

They wrote:

> SIMPLE is intended to be a pedagogical and research language that captures
> the essence of the imperative programming paradigm, extended with several
> features often encountered in imperative languages.

Note that the CBS definition uses a more precise abstract syntax grammar than
presented in the above publication.  In particular, rather than allowing
arbitrary expressions as variable declarators and l-expressions, we introduce
specialised productions.  We also make use of "?" (optional) to avoid the
need for multiple productions for variations of the same syntactic construct.

The original [SIMPLE] specification in CBS omitted its concurrency aspects.
The present specification [SIMPLE-Threads] extends [SIMPLE] to the complete
language. The CBS rules from [SIMPLE] have been copied unchanged, except for the
insertion of the funcon `multithread` in the rule for entire programs.

Colophon
--------

Status:
- abstract syntax:   complete
- dynamic semantics: complete, including concurrency constructs
- static semantics:  not specified
- disambiguation:    incomplete

Tests:
- 63 small programs
- high coverage (to be verified)

Evolution:
- extension of [SIMPLE]

Reuse of funcons:
- [SIMPLE-Threads-Funcons-Index]
- [SIMPLE-Threads-Unstable-Funcons-Index]

Keywords:
- imperative, concurrent, illustrative, simple, disambiguation, K framework

Main contributors:
- Thomas van Binsbergen, Peter Mosses, Neil Sculthorpe

[K-framework]: http://kframework.org "HOME PAGE"
[SIMPLE]: ../../Languages-beta/SIMPLE
[Funcons-beta]: ../../Funcons-beta "FUNCONS-BETA"
[Unstable-Funcons-beta]: ../../Unstable-Funcons-beta "FUNCONS-BETA"
[Languages-beta]: ../../Languages-beta "LANGUAGES-BETA"
[Unstable-Languages-beta]: .. "UNSTABLE-LANGUAGES-BETA"
[SIMPLE-Threads]: SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start
[SIMPLE-Threads-Funcons-Index]: SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Funcons-Index
[SIMPLE-Threads-Unstable-Funcons-Index]: SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index
