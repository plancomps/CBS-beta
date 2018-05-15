CBS-beta ![PREVIEW](Funcons-beta/preview.png)
========

**(The CBS-beta website is currently being constructed. This preview of it**
**will be updated when complete and ready for review.)**

_CBS_ is a framework and meta-language for _component-based specification of
programming languages_ by translation to so-called _'funcons'_ 
([fundamental programming constructs]).

Defining a translation of programming language constructs to funcons in CBS can
be significantly easier than defining the behaviour of the language constructs
directly. This is illustrated by the CBS specifications of several small and
medium-scale programming languages; see [Languages-beta].

Moreover, the definition of the translation to funcons is highly modular, which
should facilitate co-evolution of a language and its formal specification. 
And CBS definitions are executable, to support rapid prototyping during
language development.

Funcons are highly reusable components of language specifications. In CBS, the 
name, signature, and behaviour of each funcon are defined independently, using
a modular variant of structural operational semantics. Crucially, adding new 
funcons does not require any changes to the definitions of existing funcons. 

Beta-release
------------

The funcons provided by the [CBS library] are to have *fixed* definitions, so 
*no version control* will be needed for their safe reuse in CBS language 
specifications. The aim of this beta-release of CBS and its initial library of
funcons is to allow review of the current definitions before their full release.
After that, the only way of dealing with mistakes in funcon definitions will
be to define new funcons (with fresh names) to replace them.

The current funcon definitions have been validated by empirical testing of
generated interpreters for several programming languages, as well as by unit
testing of individual funcon definitions. Further testing during the
beta-release period may however reveal issues that require changes to
definitions. The expected algebraic properties of the funcons also need to be
verified, which might also motivate some changes.

The current names of funcons are reasonably suggestive, but proposals for 
improvements are welcome. The tension between conciseness and suggestiveness
has been addressed by defining short aliases for longer names. Note also that
many funcons are closely related to fundamental concepts of programming
languages, and their names could be used as a precise vocabulary in
programming linguistics.

New funcons are likely to be introduced in the beta-release, and further
examples of language definitions will be provided. All additions and changes
will be listed in the [beta-release change log], as well as in the version
history of this project site.

**The beta-release period is currently expected to end in October 2018.**


PLanCompS: Programming Language Components and Specifications
----------

CBS has been developed by the [PLanCompS] project. From 2011 to 2016, the research
was funded by EPSRC in the UK. The PLanCompS project is now an open international
collaboration, and welcomes new [contributors]. 

If you would like to contribute to PLanCompS (e.g., by using CBS to define a new
or existing language, or by suggesting new or improved funcons) please email 
plancomps@gmail.com.

[Fundamental programming constructs]: Funcons-beta/index.md

[Languages-beta]: Languages-beta/index.md

[CBS library]: Funcons-beta/Funcons-Index/index.html

[PLanCompS]: http://plancomps.org

[Contributors]: Contributors.md
