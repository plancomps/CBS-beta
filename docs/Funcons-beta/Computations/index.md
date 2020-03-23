---
layout: default
title: Computations
parent: Funcons-beta
has_children: true
permalink: /docs/Funcons-beta/Computations
nav_order: "1"
---

Computations
============

The CBS library provides funcons for expressing and composing various kinds of
computations. The following classification of funcons reflects whether they
are concerned with normal or abnormal flow of control, and the kinds of
entities generally required by their computations.

Normal computation
------------------

Funcons compute (sequences) of values on normal termination.

- [Flowing]\: pure flow of control
- [Giving]\: computing values, and referencing the latest computed value
- [Binding]\: binding identifiers to values, and referencing them
- [Generating]\: computing fresh values
- [Storing]\: allocating variables, assigning values to them,
    and inspecting current values
- [Linking]\: creating potentially cyclic bindings
- [Interacting]\: interactive input and output.

[Unstable-Funcons-beta] specifies tentative funcons for threads.
Funcons for distributed processes, and low level memory have not yet
been developed.

Abnormal computation
--------------------

When a funcon terminates abruptly, it generally signals the reason for it.

- [Abrupting]\: terminating computations abruptly, and handling abrupt termination
- [Failing]\: abrupt termination for an unspecified reason
- [Throwing]\: abrupt termination for a specified reason
- [Returning]\: abrupt termination giving a computed value
- [Breaking]\: abrupt termination in connection with flow of control
- [Continuing]\: abrupt termination in connection with flow of control
- [Controlling]\: creating and using delimited continuations

Sequences of computations
-------------------------

Funcons can take sequences of values and computations as arguments,
whereas results can only be (sequences of) values.


[flowing]:     /Funcons-beta/Computations/Normal/Flowing/
[giving]:      /Funcons-beta/Computations/Normal/Giving/
[binding]:     /Funcons-beta/Computations/Normal/Binding/
[generating]:  /Funcons-beta/Computations/Normal/Generating/
[storing]:     /Funcons-beta/Computations/Normal/Storing/
[linking]:     /Funcons-beta/Computations/Normal/Linking/
[interacting]: /Funcons-beta/Computations/Normal/Interacting/

[abrupting]:   /Funcons-beta/Computations/Abnormal/Abrupting/
[failing]:     /Funcons-beta/Computations/Abnormal/Failing/
[throwing]:    /Funcons-beta/Computations/Abnormal/Throwing/
[returning]:   /Funcons-beta/Computations/Abnormal/Returning/
[breaking]:    /Funcons-beta/Computations/Abnormal/Breaking/
[continuing]:  /Funcons-beta/Computations/Abnormal/Continuing/
[controlling]: /Funcons-beta/Computations/Abnormal/Controlling/

[Unstable-Funcons-beta]: /docs/Unstable-Funcons-beta
