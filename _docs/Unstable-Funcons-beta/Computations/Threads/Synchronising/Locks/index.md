---
title: "Locks"
parent: Synchronising
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Locks.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
#### Locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>
##### Spin locks
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_spin-lock-create">spin-lock-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_spin-lock-sync">spin-lock-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_spin-lock-release">spin-lock-release</a></span>
##### Exclusive locks
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_exclusive-lock-create">exclusive-lock-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_exclusive-lock-sync">exclusive-lock-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_exclusive-lock-sync-else-wait">exclusive-lock-sync-else-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_exclusive-lock-release">exclusive-lock-release</a></span>
##### Reentrant locks
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_reentrant-lock-create">reentrant-lock-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_reentrant-lock-sync">reentrant-lock-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_reentrant-lock-release">reentrant-lock-release</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_reentrant-lock-exit">reentrant-lock-exit</a></span>
##### Semaphores
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_semaphore-create">semaphore-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_semaphore-sync">semaphore-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_semaphore-sync-else-wait">semaphore-sync-else-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_semaphore-release">semaphore-release</a></span>
##### Shared-exclusive locks
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-create">rw-lock-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-sync-exclusive">rw-lock-sync-exclusive</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-sync-shared">rw-lock-sync-shared</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-sync-exclusive-else-wait">rw-lock-sync-exclusive-else-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-sync-shared-else-wait">rw-lock-sync-shared-else-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-release-exclusive">rw-lock-release-exclusive</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rw-lock-release-shared">rw-lock-release-shared</a></span>
]</code></pre></div>


A thread may request locks, and release locks (held by itself or by another
thread). A reentrant lock may be held more than once by the same thread.
A shared lock may be held by multiple threads at the same time, whereas an
exclusive lock can be held by only one thread at the same time. A request for
a spinlock that is held by another thread involves busy waiting instead of
suspension, and assumes interleaving of the execution of a waiting thread and
the holding thread.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-exclusive-lock-holder">is-exclusive-lock-holder</span></span>(<span id="Variable141_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable141_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>))</code></pre></div>


##### Spin locks

Spin locks support mutual exclusion, but not suspension of blocked requests.
<code><span class="name"><a href="../../Multithreading/index.html#Name_thread-spin">thread-spin</a></span> <span class="name"><a href="#Name_spin-lock-sync">spin-lock-sync</a></span> <i class="var">SY</i></code> repeatedly executes the request
for the lock until the request is granted, which is called busy waiting. 
Interleaving of different threads waiting for the same spin lock may result in
granting requests out of order.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_spin-lock-create">spin-lock-create</span></span> : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>)</code></pre></div>


When the lock is not currently held, granting a request for it sets the holder
to the current thread; otherwise the request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_spin-lock-sync">spin-lock-sync</span></span>(<span id="Variable252_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable252_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>)),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable252_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable252_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>), <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


Releasing the lock leaves the lock free. Only the thread that holds the lock can
release it. Releasing cannot be blocked by other threads, so it is not a request.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_spin-lock-release">spin-lock-release</span></span>(<span id="Variable367_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>(<a href="#Variable367_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable367_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_un-assign">un-assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable367_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>)))</code></pre></div>


##### Exclusive locks

Exclusive locks support mutual exclusion and suspension of blocked requests.
An exclusive lock – also called a mutex – can be held by only one thread at
the same time. It can be used to ensure mutual exclusion of so-called critical
regions of thread bodies, and to avoid potential interference due to thread
interleaving.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_exclusive-lock-create">exclusive-lock-create</span></span> : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>)</code></pre></div>


When the lock is not currently held, granting a request for it sets the holder
to the current thread; otherwise the request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_exclusive-lock-sync">exclusive-lock-sync</span></span>(<span id="Variable518_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable518_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>)),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable518_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable518_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>), <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_exclusive-lock-sync-else-wait">exclusive-lock-sync-else-wait</span></span>(<span id="Variable633_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_exclusive-lock-sync">exclusive-lock-sync</a></span>(<a href="#Variable633_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable633_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


When the waiting list is non-empty, releasing the lock grants it to the thread
that made the first request in the list, and resumes that thread; otherwise it
leaves the lock free. Only the thread that holds the lock can release it.
Releasing a lock cannot be blocked by other threads, so it is not a request.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_exclusive-lock-release">exclusive-lock-release</span></span>(<span id="Variable710_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), [ ]),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_un-assign">un-assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>))),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable710_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
              <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))))</code></pre></div>


##### Rentrant locks

Reentrant exclusive locks support mutual exclusion, suspension of blocked requests,
and reentry. A reentrant exclusive lock can be held (and subsequently released)
multiple times by the same thread. 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reentrant-lock-create">reentrant-lock-create</span></span> : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>,
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)</code></pre></div>


When the lock is not currently held, granting a request for it sets the holder
to the current thread; if it is already held by the current thread, it merely
increments the counter; otherwise the request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reentrant-lock-sync">reentrant-lock-sync</span></span>(<span id="Variable970_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>)),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>), <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0)),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 
            <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable970_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>))))</code></pre></div>


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</span></span>(<span id="Variable1203_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_reentrant-lock-sync">reentrant-lock-sync</a></span>(<a href="#Variable1203_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable1203_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


When the waiting list is non-empty, releasing the lock grants it to the thread
that made the first request in the list, and resumes that thread; otherwise it
leaves the lock free. Only the thread that holds the lock can release it.
Releasing a lock cannot be blocked by other threads, so it is not a request.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reentrant-lock-release">reentrant-lock-release</span></span>(<span id="Variable1280_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), [ ]),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_un-assign">un-assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>)),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0)),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-holder">sync-holder</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1280_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0),
              <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))))</code></pre></div>


When the reentered count is positive, an exit merely decrements it.
Otherwise it is 0, and the exit releases the lock.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reentrant-lock-exit">reentrant-lock-exit</span></span>(<span id="Variable1534_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>(<a href="#Variable1534_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1534_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, 0),
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 
            <span class="name"><a href="#Name_reentrant-lock-release">reentrant-lock-release</a></span>(<a href="#Variable1534_SY"><i class="var">SY</i></a>))))</code></pre></div>


##### Semaphores

A [semaphore][] is a shared lock with a specified limit on the number of threads
that can hold it at the same time. A semaphore can be released by any thread.

[Semaphore]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-sema.pdf

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_semaphore-create">semaphore-create</span></span>(<span id="Variable1681_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_pos-ints">pos-ints</a></span>) : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
        <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), <a href="#Variable1681_N"><i class="var">N</i></a>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


When the semaphore is available, granting a request for it decrements the number
of further threads that can hold it; otherwise the request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_semaphore-sync">semaphore-sync</span></span>(<span id="Variable1768_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1768_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1768_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1768_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)))</code></pre></div>


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_semaphore-sync-else-wait">semaphore-sync-else-wait</span></span>(<span id="Variable1879_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_semaphore-sync">semaphore-sync</a></span>(<a href="#Variable1879_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable1879_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


When the waiting list is empty, releasing the semaphore increments the counter;
otherwise it grants the semaphore to the thread that made the first request in
the list, and resumes that thread. Releasing a semaphore cannot be blocked, so
it is not a request.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_semaphore-release">semaphore-release</span></span>(<span id="Variable1956_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1956_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), [ ]),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1956_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
            <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable1956_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<a href="#Variable1956_SY"><i class="var">SY</i></a>),
            <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


##### Shared-exclusive locks

A [shared-exclusive lock][] – also called a readers-writer (rw) lock – can be 
held exclusively by a single thread, or shared by any number of threads at the
same time. It can be released by any thread.

[Shared-exclusive lock]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-sema.pdf

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-create">rw-lock-create</span></span> : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
        <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>,
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


When the lock is not currently held at all, it can be granted exclusively:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync-exclusive">rw-lock-sync-exclusive</span></span>(<span id="Variable2183_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2183_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>)),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2183_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 0)),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2183_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>))</code></pre></div>


When the lock is not currently held exclusively, a request to share it is always
granted immediately (regardless of any waiting exclusive requests):

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync-shared">rw-lock-sync-shared</span></span>(<span id="Variable2307_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2307_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>)),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2307_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2307_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)))</code></pre></div>


If the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted.

The waiting list of a shared-exclusive lock records not only the thread but also
whether the request is for sharing:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync-exclusive-else-wait">rw-lock-sync-exclusive-else-wait</span></span>(<span id="Variable2413_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_rw-lock-sync-exclusive">rw-lock-sync-exclusive</a></span>(<a href="#Variable2413_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable2413_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync-shared-else-wait">rw-lock-sync-shared-else-wait</span></span>(<span id="Variable2494_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_rw-lock-sync-shared">rw-lock-sync-shared</a></span>(<a href="#Variable2494_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable2494_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


When the waiting list is non-empty, releasing the lock may grant either the
first waiting exclusive request, or all waiting shared requests. A scheduler may
defer granting one kind of request when there are waiting requests of the other
kind, irrespective of the order in which those requests were made. Releasing
a lock cannot be blocked by other threads, so it is not a request.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-release-exclusive">rw-lock-release-exclusive</span></span>(<span id="Variable2581_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2581_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2581_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>), 
        <span class="name"><a href="#Name_rw-lock-sync">rw-lock-sync</a></span>(<a href="#Variable2581_SY"><i class="var">SY</i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-release-shared">rw-lock-release-shared</span></span>(<span id="Variable2670_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2670_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2670_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)), 
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(0, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2670_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)),
          <span class="name"><a href="#Name_rw-lock-sync">rw-lock-sync</a></span>(<a href="#Variable2670_SY"><i class="var">SY</i></a>),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>))</code></pre></div>


<code><span class="name"><a href="#Name_rw-lock-sync">rw-lock-sync</a></span>(<i class="var">SY</i>)</code> assumes that <code><i class="var">SY</i></code> is not held (either exclusively or shared).
If the first waiting request is for sharing, any further sharing requests are
granted, 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync">rw-lock-sync</span></span>(<span id="Variable2835_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), [ ]),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>,
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_first">first</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_second">second</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
                  <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)),
                <span class="name"><a href="#Name_rw-lock-sync-all-shared">rw-lock-sync-all-shared</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>)),
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable2835_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-held">sync-held</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)))))</code></pre></div>


<code><span class="name"><a href="#Name_rw-lock-sync-all-shared">rw-lock-sync-all-shared</a></span>(<i class="var">SY</i>)</code> updates the waiting list by removing and resuming
all its sharing requests:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rw-lock-sync-all-shared">rw-lock-sync-all-shared</span></span>(<span id="Variable3062_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable3062_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>),
        [ <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-filter">left-to-right-filter</a></span>(
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_second">second</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
              <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_first">first</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
                <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable3062_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
                  <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable3062_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)),
                <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>),
              <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>),
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable3062_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>)) ])</code></pre></div>



[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta
  "CBS-BETA"
[Locks.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/Locks.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/Locks.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Synchronising/Locks/Locks.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
