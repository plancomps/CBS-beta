---
layout: default
title: Unstable-Threads
parent: Unstable-Computations
permalink: /docs/Unstable-Funcons-beta/Unstable-Computations/Threads
nav_order: "3"
---

Threads
=======

Multithreading funcons have effects on mutable entities that represent the
collection of threads, the set of active threads, the thread being executed,
the values computed by terminated threads, and scheduling information.

- [Multithreading]\: thread spawning, execution, yielding and preemption,
  suspension and resumption, termination, joining, scheduling

[Synchronising]
---------------

Synchronising funcons allow threads to be blocked and resumed.

  - [Locks]\: spin locks, exclusive locks, reentrant locks, semaphores,
      shared-exclusive locks
  - [Notifications]\: barriers, conditions, rendezvous

[Multithreading]: /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/
[Synchronising]:  /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/
[Locks]:          /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/
[Notifications]:  /CBS-beta/Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Notifications/

[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
