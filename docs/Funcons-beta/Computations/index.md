---
layout: default
title: Computations
parent: Funcons-beta
permalink: /docs/Funcons-beta/Computations
nav_order: "1"
---

Computations
============

The CBS library provides funcons for expressing and composing various kinds of
computations. The following classification of funcons reflects whether they
are concerned with normal or abnormal flow of control, and the kinds of
entities generally required by their computations.

[Normal computation]
--------------------

Funcons compute (sequences) of values on normal termination.

[Unstable-Funcons-beta] specifies tentative funcons for threads.
Funcons for distributed processes, and low level memory have not yet
been developed.

[Abnormal computation]
----------------------

When a funcon terminates abruptly, it generally signals the reason for it.

Sequences of computations
-------------------------

Funcons can take sequences of values and computations as arguments,
whereas results can only be (sequences of) values.


[Normal computation]:     /CBS-beta/docs/Funcons-beta/Computations/Normal

[Abnormal computation]:     /CBS-beta/docs/Funcons-beta/Computations/Abnormal

[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
