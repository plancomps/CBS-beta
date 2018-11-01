CBS-beta
========

_CBS_ is a framework and meta-language for _component-based specification of
programming languages_. The main idea is to translate languages to so-called 
_'funcons'_ ([fundamental programming constructs]). The behaviour of the funcons
has already been specified, so translating a language to funcons determines the
behaviour of programs in that language.

Specifications of translations to funcons can be significantly _simpler_ -- both
to read and to write -- than direct specifications of program behaviour. In fact
CBS aims to make specification of language behaviour as easy as specification of
context-free syntax! Specifications of translations to funcons are also
_highly modular_, to support co-evolution of languages and their specifications. 

Funcons are _reusable_ components: the same funcon can be used, unchanged, in
the specifications of many different languages. Funcons correspond closely to
concepts of high-level programming languages such as data and control flow,
scopes of bindings, mutable variables, streams, abrupt termination, procedural
abstraction, etc. Funcon names are strongly suggestive of the corresponding
concepts.

The [PLanCompS] project has developed an initial collection of funcons:
[Funcons-beta]. Crucially, adding new funcons does not require any changes to
the specifications of existing funcons, thanks to the use of a modular variant
of structural operational semantics.

Current tool support for CBS (not yet released) includes a CBS editor with
syntax highlighting, hyperlinks from references to declarations, and generation
of parsers, translators, and interpreters from specifications of languages and
funcons. Using these tools, programs can be executed according to their
specified behaviour, allowing rapid prototyping and empirical validation of
language design.


Beta-release
------------

The funcons provided by the [CBS library] are to have *fixed* definitions, so 
*no version control* will be needed for their safe reuse in CBS language 
specifications. The aim of this beta-release of CBS and its initial library of
funcons is to allow review of the current definitions, and subsequent adoption
of suggestions for improvement, before their full release.

**The beta-release review period has been extended to (early) 2019.**

The current funcon definitions have been validated by empirical testing of
generated interpreters for several programming languages, as well as by unit
testing of individual funcon definitions. Further testing during the
beta-release period may however reveal issues that require changes to
definitions; lack of expected algebraic properties of funcons might
also motivate some changes. Language specifications that use the affected
funcons may then need to be updated to take account of the changes.

The current names of funcons have been chosen to be suggestive, but proposals
for improvements are welcome. The tension between conciseness and suggestiveness
has been addressed by defining short aliases for longer names. Bias towards
keywords used in particular language families has been avoided. Many funcons
are directly related to fundamental concepts of programming languages, and
their names try to reflect current terminology.

New funcons are likely to be introduced in the beta-release period, and further
examples of language definitions will be provided. Demonstration of scaling-up
to major languages (e.g., C#) is a longer-term goal. The current funcon
definitions cover only their dynamic semantics, but are to be extended to
static semantics.

All additions and changes will be listed in the [beta-release change log],
as well as in the version history of this project site.

Tool support for using CBS will be released as soon as it is sufficiently robust
and well-documented. The CBS editor has been implemented as a [Spoofax] language
project in Eclipse; generation of interpreters from funcon definitions has been
implemented as a Haskell package [Funcon.Tools].


PLanCompS: Programming Language Components and Specifications
----------

CBS has been developed by the [PLanCompS] project. From 2011 to 2016, the
research was funded by EPSRC in the UK. The PLanCompS project is now continuing
as an open international collaboration, and welcomes new [contributors]. 

If you would like to contribute to PLanCompS (e.g., by using CBS to define a new
or existing language, or by suggesting new or improved funcons) please email 
plancomps@gmail.com.

[Fundamental programming constructs]: Funcons-beta/index.md

[Funcons-beta]: Funcons-beta/index.md

[Languages-beta]: Languages-beta/index.md

[CBS library]: Funcons-beta/Funcons-Index/index.html

[Beta-release change log]: Changes.md

[Spoofax]: http://www.metaborg.org

[Funcon.Tools]: https://hackage.haskell.org/package/funcons-tools/docs/Funcons-Tools.html

[PLanCompS]: http://plancomps.org

[Contributors]: Contributors.md
