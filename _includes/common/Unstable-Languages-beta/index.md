Unstable-Languages-beta
=======================

[Languages-beta] provides access to the beta-release of five examples of
language specifications in CBS, based on the initial collection of funcons in
[Funcons-beta]. Two of those languages ([IMP] and [SIMPLE]) have now been
extended with concurrency constructs, using tentative new funcons for threads.
A further language has been specified to demonstrate co-evolution of a language
and its CBS.

The funcons for threads have not yet been fully validated, so they are not
included in [Funcons-beta]. They could be defined locally in a language
specification, but reuse in a different language would then entail copying and
pasting. To allow their direct reuse in multiple language specifications , they
are temporarily provided in a separate library: [Unstable-Funcons-beta].

Language specifications using funcons from [Unstable-Funcons-beta] may need to
be updated if changes are made to [Unstable-Funcons-beta]. No updates to language
specifications are needed when funcon definitions are moved from
[Unstable-Funcons-beta] to [Funcons-beta]. Language specifications can be moved
from [Unstable-Languages-beta] to [Languages-beta] when all the funcons used in
them have been validated and moved to [Funcons-beta].

IMP++
-----

IMP++ extends [IMP] with multithreading and other features. See [IMP++] for
further details.

SIMPLE-Threads
--------------

The original CBS for [SIMPLE] omits concurrency constructs, which are added here.
See [SIMPLE-Threads] for further details.

LangDev-2019
------------

This is a language used for demonstrating extensibility of CBS specifications,
presented at [LangDev Meetup 2019]. See [LangDev-2019] for further details.

[Funcons-beta]:            ../Funcons-beta
[Languages-beta]:          ../Languages-beta
[Unstable-Funcons-beta]:   ../Unstable-Funcons-beta

[IMP]:            ../Languages-beta/IMP
[SIMPLE]:         ../Languages-beta/SIMPLE
[IMP++]:          IMP-Plus-Plus
[SIMPLE-Threads]: SIMPLE-Threads
[LangDev-2019]:   LangDev-2019
[LangDev Meetup 2019]: http://langdevcon.org "HOME PAGE"
