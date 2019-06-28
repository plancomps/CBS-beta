---
layout: default
title: Computations
parent: Funcons-beta
has_children: true
permalink: /CBS-beta/Funcons-beta/Computations
nav_order: 1
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

- [Flowing]
- [Giving]
- [Binding]
- [Generating]
- [Storing]
- [Linking]
- [Interacting]

(Funcons for threads, distributed processes, and low level memory have not yet
been defined.)

Abnormal computation
--------------------

- [Abrupting]
- [Failing]
- [Throwing]
- [Returning]
- [Breaking]
- [Continuing]
- [Controlling]

Sequences of computations
-------------------------

Funcons can take sequences of values and computations as arguments,
whereas results can only be (sequences of) values.


[flowing]: Normal/Flowing/index.html
[giving]: Normal/Giving/index.html
[binding]: Normal/Binding/index.html
[generating]: Normal/Generating/index.html
[storing]: Normal/Storing/index.html
[linking]: Normal/Linking/index.html
[interacting]: Normal/Interacting/index.html

[abrupting]: Abnormal/Abrupting/index.html
[failing]: Abnormal/Failing/index.html
[throwing]: Abnormal/Throwing/index.html
[returning]: Abnormal/Returning/index.html
[breaking]: Abnormal/Breaking/index.html
[continuing]: Abnormal/Continuing/index.html
[controlling]: Abnormal/Controlling/index.html
