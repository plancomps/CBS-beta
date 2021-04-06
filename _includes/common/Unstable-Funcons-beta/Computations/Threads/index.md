Threads
=======

The funcons for threads are tentative. They have not yet been rigorously
unit-tested, nor used significantly in language definitions.

The [multithreading] funcons involve multiple mutable entities, and are
generally specified by inference rules with premises involving the values of
those entities before and after a transition.

The [synchronising] funcons only involve the `store` entity, and wrap
compound funcon terms in `thread-atomic(_)` to inhibit preemption.

Some of the unit tests are based on examples in an [IBM threads] guide.

Multithreading funcons have effects on mutable entities that represent the
collection of threads, the set of active threads, the thread being executed,
the values computed by terminated threads, and scheduling information.

[Multithreading]
----------------

- thread spawning, execution, yielding and preemption,
  suspension and resumption, termination, joining, scheduling

[Synchronising]
---------------

Synchronising funcons allow threads to be blocked and resumed.

  - [Locks]\: spin locks, exclusive locks, reentrant locks, semaphores,
      shared-exclusive locks
  - [Notifications]\: barriers, conditions, rendezvous

  
[IBM threads]: https://www.ibm.com/support/knowledgecenter/ssw_aix_72/com.ibm.aix.genprogc/chapter12.htm
  "IBM Knowledge Centre"

[Multithreading]: Multithreading
[Synchronising]:  Synchronising
[Locks]:          Synchronising/Locks
[Notifications]:  Synchronising/Notifications

[Unstable-Languages-beta]: ../../../Unstable-Languages-beta
