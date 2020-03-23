---
layout: default
title: CBS-beta
# nav_order: "1"
nav_exclude: true
---

CBS-beta
========

_CBS_ is a framework and meta-language for _component-based specification of
programming languages_. The main idea is to translate languages to so-called
_'funcons'_ ([fundamental programming constructs]). The behaviour of the funcons
has already been specified, so translating a language to funcons determines the
behaviour of programs in that language.

> Specifications of translations to funcons can be significantly _simpler_ -- both
> to read and to write -- than direct specifications of program behaviour.

In fact CBS aims to make specification of language behaviour as easy as
specification of context-free syntax! Specifications of translations to funcons
are also _highly modular_, to support co-evolution of languages and their
specifications.

> Funcons are _reusable_ components: the same funcon can be used, unchanged, in
> the specifications of many different languages.

Funcons correspond closely to concepts of high-level programming languages
such as data and control flow, scopes of bindings, mutable variables, streams,
abrupt termination, procedural abstraction, etc. Funcon names are strongly
suggestive of the corresponding concepts.

The [PLanCompS] project has developed an initial collection of funcons.

> Crucially, adding new funcons does not require any changes to
> the specifications of existing funcons, thanks to the use of a
> modular variant of structural operational semantics (MSOS).

Current tool support for CBS (not yet released) includes an IDE for CBS with
syntax highlighting, hyperlinks from references to declarations, and generation
of parsers, translators, and interpreters from specifications of languages and
funcons. Using these tools, programs can be executed according to their
specified behaviour, allowing rapid prototyping and empirical validation of
language design.

Beta-release
------------

The funcons provided by the PLanCompS project are to have *fixed* definitions,
so *no version control* will be needed for their safe reuse in CBS language
specifications. The aim of this beta-release of CBS and its initial library of
funcons is to allow review of the current definitions, and subsequent adoption
of suggestions for improvement, before their full release.

**The beta-release review period has been extended.**

The funcon definitions in [Funcons-beta] have been validated by empirical
testing of generated interpreters for various programming languages,
including those provided in [Languages-beta]. Individual funcon definitions
have also been unit-tested. Further testing during the beta-release review
period may however reveal issues that require changes to definitions; lack of
expected algebraic properties of funcons might also motivate some adjustments.
Language specifications that use the affected funcons may then need to be
updated to take account of the changes.

The current names of funcons have been chosen to be suggestive, but proposals
for improvements are welcome. The tension between conciseness and suggestiveness
has been addressed by defining short aliases for longer names. Bias towards
keywords used in particular language families has been avoided. Many funcons
are directly related to fundamental concepts of programming languages, and
their names try to reflect current terminology.

Unstable funcons and languages
------------------------------

New funcons are likely to be introduced in the beta-release period, and further
examples of language definitions will be provided. Compared to the funcons in
[Funcons-beta] and the languages specified in [Languages-beta], the new
specifications may be less well tested, and relatively unstable, so they are
listed separately:

- [Unstable-Funcons-beta] specifies new funcons
- [Unstable-Languages-beta] specifies languages that use the new funcons

Currently, [Unstable-Funcons-beta] provides funcons for *threads*, and
[Unstable-Languages-beta] specifies simple multi-threaded extensions of a couple
of the languages specified in [Languages-beta].

Demonstration of scaling-up to major languages (e.g., C#) is a longer-term goal.
Moreover, the current funcon definitions cover only their dynamic semantics,
but are to be extended to static semantics.

All additions and changes are listed in the [beta-release change log],
as well as in the version history of this project site.

Tool support
------------

Tool support for using CBS will be released as soon as it is sufficiently robust
and well-documented. The CBS editor has been implemented as a [Spoofax] language
project in Eclipse; generation of interpreters from funcon definitions has been
implemented as a Haskell package [Funcon.Tools]. The CBS beta-release review
period will remain open until the full toolchain has been released.

PLanCompS: Programming Language Components and Specifications
----------

CBS has been developed by the [PLanCompS] project. From 2011 to 2016, the
research was funded by EPSRC in the UK. The PLanCompS project is now continuing
as an open international collaboration, and welcomes new [contributors].

If you would like to contribute to PLanCompS (e.g., by using CBS to define a new
or existing language, or by suggesting new or improved funcons) please email
plancomps@gmail.com.

[Fundamental programming constructs]: /CBS-beta/docs/Funcons-beta

[Funcons-beta]: /CBS-beta/docs/Funcons-beta

[Languages-beta]: /CBS-beta/docs/Languages-beta

[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta

[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta

[Beta-release change log]: /CBS-beta/docs/Changes

[Spoofax]: http://www.metaborg.org

[Funcon.Tools]: https://hackage.haskell.org/package/funcons-tools/docs/Funcons-Tools.html

[PLanCompS]: http://plancomps.org

[Contributors]: /CBS-beta/docs/Contributors
