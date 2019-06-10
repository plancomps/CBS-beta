---
layout: default
title: Changes
nav_order: 6
---

Beta-Release Changes
====================

This page lists significant additions and changes to the funcon definitions and
language specifications included in the CBS beta-release.

2019-06-09: [CBS-beta](index.md)
* **The beta-release review period has been further extended.**
  Funcons for threads have now been developed, and are soon to be added.
  However, the tool support for using CBS still needs significant improvements,
  and the current specifications will remain open for revision until the IDE for
  CBS has been released.

2019-06-09: [CBS-beta](index.md)
* The Jekyll theme used on this website has been updated to
  [Just-the-Docs](https://pmarsceill.github.io/just-the-docs/).
  The navigation in the sidebar is now generated from the Markdown files.
  The content of the web pages has not been changed.

2018-11-01: [CBS-beta](index.md)
* **The beta-release review period has been extended to (early) 2019.**
  This is partly because funcons for threads and processes have not yet been
  added to [Funcons-beta](Funcons-beta/index.md), partly because of pending
  improvements to the tool support for use of CBS.

2018-09-14: [`right-to-left`](Funcons-beta/Computations/Normal/Flowing/index.html#Name_right-to-left)
* funcon added

2018-09-07: [Funcons-beta](Funcons-beta/index.md), [Languages-beta](Languages-beta/index.md):
CBS web pages regenerated:
* hyperlinks corrected (for variable references in rules)
* confusing tooltips removed

2018-09-07: [Characters](Funcons-beta/Values/Primitive/Characters/index.html)
* `char` (alias for `unicode-character`) renamed to `unicode-char`.
* `ascii-character` (alias `ascii-char`) added to
  [Funcons-Index](Funcons-beta/Funcons-Index/index.html) and
  [funcon reuse overview](Languages-beta/Reuse.md)

2018-08-26: [Folding](Guide/Browsing.html#folding)
* folding now applies to sequences of rules, not individual rules
* blank lines following a rule are now preserved when it is folded

2018-08-22: [`current-value`](Funcons-beta/Computations/Normal/Storing/index.html#Name_current-value)
* `current-value` was an alias for
  [`structural-assigned`](Funcons-beta/Computations/Normal/Storing/index.html#Name_structural-assigned),
  which returns the value of a simple or structured variable by replacing all
  simple sub-variables in it by their assigned values; `current-value(V)` is
  still equivalent to `structural-assigned(V)` when `V` is itself a _simple_
  variable, but when `V` is a _structured_ variable, it now simply returns `V`.

  The only use of `current-value(V)` in `Languages-beta` was in the definition of
  [`ocaml-light-to-string`](Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library/index.html#Name_ocaml-light-to-string),
  which has now been changed to use `assigned`.

2018-08-17: [Downloads](Downloads.md)
* added a page about downloading for offline browsing

2018-08-14: [`first-n`](Funcons-beta/Values/Composite/Sequences/index.html#Name_first-n)
* rule corrected

2018-07-17: [MiniJava](Languages-beta/MiniJava/index.md)
* syntax disambiguation completed
* semantics tested with 65 unit tests

2018-07-16: [Browsing guide](Guide/Browsing.md)
* restructured

2018-07-15: [Browsing guide](Guide/Browsing.md)
* further clarifications

2018-07-14: [Publications](Publications.md)
* added

2018-07-14: [Browsing guide](Guide/Browsing.md)
* minor clarifications

2018-07-12: [Languages-beta](Languages-beta/index.md)
* [added an overview of funcon reuse](Languages-beta/Reuse.md)

2018-07-09: [OCaml Light](Languages-beta/OCaml-Light/index.md)
* [added `expr ::= 'assert' expr`](Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions/index.html)
* [added disambiguation rules for `'{' expr 'with' ... '}'`](Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation/index.html)
* [corrected the rule defining `implemented-vector`](Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values/index.html)
