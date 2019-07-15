---
layout: default
title: Unstable-Computations
parent: Unstable-Funcons-beta
has_children: true
permalink: /CBS-beta/Unstable-Funcons-beta/Unstable-Computations
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

[Multithreading]: /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/
[Synchronising]:  /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/
[Locks]:          /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/
[Notifications]:  /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Notifications/

[Indexing]:       /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/
[Memos]:          /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/

[Postponing]:     /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/

[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
