---
layout: default
title: Changes
nav_order: "8"
---

Beta-release changes
====================

This page lists significant additions and changes to the funcon definitions and
language specifications included in the CBS beta-release.

2019-08-16: [CBS-beta](/CBS-beta/)
* [Just the Docs](https://pmarsceill.github.io/just-the-docs/) updated to 0.2.6.
* Global search (e.g., for funcon names) now supported.

2019-08-03: [Funcon-Reuse](Languages-beta/Reuse)
* Layout changed, table of contents added.

2019-07-15: [Funcons-beta](Funcons-beta), [Languages-beta](Languages-beta),
[Unstable-Funcons-beta](Unstable-Funcons-beta),
[Unstable-Languages-beta](Unstable-Languages-beta)
* Nested sidebar navigation links and further breadcrumbs added to many pages.

2019-07-10: [Languages-beta](Languages-beta), [Unstable-Languages-beta](Unstable-Languages-beta)
* Missing links to local funcons reuse indexes added in overview pages.

2019-07-08: [Unstable-Funcons-beta](Unstable-Funcons-beta)
* __Tentative funcons for multithreading and synchronisation added.__

2019-07-08: [Unstable-Languages-beta](Unstable-Languages-beta)
* Three small example languages added, illustrating language extension with threads.

2019-07-08: [Funcons-beta](Funcons-beta), [Languages-beta](Languages-beta),
[Browsing guide](Browsing)
* __HTML pages generated from CBS specifications replaced by Markdown pages.__

  The presentation of CBS specifications now shows multi-line comments as
  running text, with CBS notation displayed as code. This change encourages
  a more 'literate' style of specification, to include extensive comments that
  motivate and explain the formal specifications.

  Literate CBS is illustrated in [Unstable-Funcons-beta](Unstable-Funcons-beta).
  Extensive comments have yet to be added to the CBS specifications of funcons
  and languages in the rest of the website.

2019-07-08: [CBS-beta](/CBS-beta/)
* Website structure: documentation moved to a new `docs` folder.

2019-06-30: [Computations](/CBS-beta/Funcons-beta/Computations),
[Values](/CBS-beta/Funcons-beta/Values)
* Overview clarified.

2019-06-11: [Downloads](Downloads)
* Removed the manually-created zip of the site.

2019-06-10: [CBS-beta](/CBS-beta/)
* __The beta-release review period has been further extended.__

  Funcons for threads have now been developed, and are soon to be added.
  However, the tool support for using CBS still needs significant improvements,
  and the current specifications will remain open for revision until the IDE for
  CBS has been released.

2019-06-10: [CBS-beta](/CBS-beta/)
* __The Jekyll theme used on this website has been updated to
  [Just-the-Docs](https://pmarsceill.github.io/just-the-docs/).__

  The navigation in the sidebar is now generated from the Markdown files.
  The content of the web pages has not been changed.

2018-07-14: [Publications](Publications)
* added.

2018-11-01: [CBS-beta](/CBS-beta/)
* The beta-release review period has been extended to ~~(early)~~ 2019.

  This is partly because funcons for threads and processes have not yet been
  added to [Funcons-beta](Funcons-beta), partly because of pending
  improvements to the tool support for use of CBS.

2018-09-14: [`right-to-left`](/CBS-beta/Funcons-beta/Computations/Normal/Flowing/#Name_right-to-left)
* funcon added.

2018-09-07: [Funcons-beta](Funcons-beta), [Languages-beta](Languages-beta)
* CBS web pages regenerated:
  hyperlinks corrected (for variable references in rules), confusing tooltips removed.

2018-09-07: [Characters](/CBS-beta/Funcons-beta/Values/Primitive/Characters/)
* `char` (alias for `unicode-character`) renamed to `unicode-char`.
* `ascii-character` (alias `ascii-char`) added to
  [Funcons-Index](/CBS-beta/Funcons-beta/Funcons-Index/) and
  [funcon reuse overview](Languages-beta/Reuse).

~~2018-08-26: [Browsing](Browsing)~~
* ~~folding now applies to sequences of rules, not individual rules.~~
* ~~blank lines following a rule are now preserved when it is folded.~~

2018-08-22: [`current-value`](/CBS-beta/Funcons-beta/Computations/Normal/Storing/#Name_current-value)
* `current-value` was an alias for
  [`structural-assigned`](/CBS-beta/Funcons-beta/Computations/Normal/Storing/#Name_structural-assigned),
  which returns the value of a simple or structured variable by replacing all
  simple sub-variables in it by their assigned values; `current-value(V)` is
  still equivalent to `structural-assigned(V)` when `V` is itself a _simple_
  variable, but when `V` is a _structured_ variable, it now simply returns `V`.

  The only use of `current-value(V)` in `Languages-beta` was in the definition of
  [`ocaml-light-to-string`](/CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library/#Name_ocaml-light-to-string),
  which has now been changed to use `assigned`.

2018-08-17: [Downloads](Downloads)
* added a page about downloading for offline browsing.

2018-08-14: [`first-n`](/CBS-beta/Funcons-beta/Values/Composite/Sequences/#Name_first-n)
* rule corrected.

2018-07-17: [MiniJava](/CBS-beta/Languages-beta/MiniJava)
* syntax disambiguation completed.
* semantics tested with 65 unit tests.

2018-07-16: [Browsing guide](Browsing)
* restructured.

2018-07-15: [Browsing guide](Browsing)
* further clarifications.

2018-07-14: [Publications](Publications)
* added.

2018-07-14: [Browsing guide](Browsing)
* minor clarifications.

2018-07-12: [Languages-beta](Languages-beta)
* [added an overview of funcon reuse](Languages-beta/Reuse).

2018-07-09: [OCaml Light](/CBS-beta/Languages-beta/OCaml-Light)
* [added `expr ::= 'assert' expr`](/CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions/).
* [added disambiguation rules for `'{' expr 'with' ... '}'`](/CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation/).
* [corrected the rule defining `implemented-vector`](/CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values/).
