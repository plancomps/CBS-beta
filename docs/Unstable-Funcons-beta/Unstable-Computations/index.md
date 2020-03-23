---
layout: default
title: Unstable-Computations
parent: Unstable-Funcons-beta
has_children: true
permalink: /docs/Unstable-Funcons-beta/Unstable-Computations
nav_order: "1"
---

Unstable-Computations
=====================

New funcons are introduced here. Compared to the funcons in [Funcons-beta],
the new specifications may be less well tested, and relatively unstable, so
they are listed separately.

See [Unstable-Languages-beta] for illustrative examples of language
specifications using the unstable funcons.

Threads
-------

Multithreading funcons have effects on mutable entities that represent the
collection of threads, the set of active threads, the thread being executed,
the values computed by terminated threads, and scheduling information.

- [Multithreading]\: thread spawning, execution, yielding and preemption,
  suspension and resumption, termination, joining, scheduling

Synchronising funcons allow threads to be blocked and resumed.

- [Synchronising]\: sync structures and features
  - [Locks]\: spin locks, exclusive locks, reentrant locks, semaphores,
      shared-exclusive locks
  - [Notifications]\: barriers, conditions, rendezvous

Normal computation
------------------

These funcons are potentially of general use, but first defined for use in
connection with languages that include threads.

- [Indexing]\: allocating indexes for values
- [Memos]\: associating keys with fixed values

Abnormal computation
--------------------

These funcons are potentially of general use, but first defined for use in
connection with languages that include threads.

- [Postponing]\: adding after-effects to an enclosing term

[Multithreading]: /Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/
[Synchronising]:  /Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/
[Locks]:          /Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/
[Notifications]:  /Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Notifications/

[Indexing]:       /Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/
[Memos]:          /Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/

[Postponing]:     /Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/

[Unstable-Languages-beta]: /docs/Unstable-Languages-beta
