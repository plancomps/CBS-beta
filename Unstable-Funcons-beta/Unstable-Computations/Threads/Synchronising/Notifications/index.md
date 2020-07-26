---
layout: default
title: "Notifications"
parent: Unstable-Threads
# grand_parent: Unstable-Funcons-beta
nav_order: "Notifications"
---

[Unstable-Funcons-beta] : [Notifications.cbs]
-----------------------------

#### Notifications
<div class="highlighter-rouge"><pre class="highlight"><code>[
##### Barriers
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_barrier-create">barrier-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_barrier-sync">barrier-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_barrier-sync-else-wait">barrier-sync-else-wait</a></span>
##### Conditions
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_condition-create">condition-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_condition-wait">condition-wait</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_condition-wait-with-lock">condition-wait-with-lock</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_condition-notify-all">condition-notify-all</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_condition-notify-first">condition-notify-first</a></span>
##### Rendezvous
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rendezvous-create">rendezvous-create</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rendezvous-sync">rendezvous-sync</a></span>
<i class="keyword">Funcon</i>  <span class="name"><a href="#Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</a></span>
]</code></pre></div>


Threads may synchronise by waiting for notifications. In contrast to locks,
notifications are ephemeral, and do not get held and released.


##### Barriers

A [barrier[] notifies all requesting threads when a specified number of requests
for it have been made. Subsequent requests give immediate notification.

[Barrier]: https://en.wikipedia.org/wiki/Barrier_(computer_science)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_barrier-create">barrier-create</span></span>(<span id="Variable87_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_pos-ints">pos-ints</a></span>) : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
        <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
          <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), <a href="#Variable87_N"><i class="var">N</i></a>),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


When the barrier is already open, requests to pass it are granted immediately.
When the barrier is closed, and only one more thread needs to arrive, granting
a request for it opens the barrier and resumes all the threads wiating for it;
otherwise the request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_barrier-sync">barrier-sync</span></span>(<span id="Variable174_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable174_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, 0),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, 1),
            <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, 0),
            <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span> 
              <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable174_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>),
            <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable174_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), []))))</code></pre></div>


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_barrier-sync-else-wait">barrier-sync-else-wait</span></span>(<span id="Variable337_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_barrier-sync">barrier-sync</a></span>(<a href="#Variable337_SY"><i class="var">SY</i></a>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable337_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable337_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), 
            <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable337_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>)),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


##### Conditions

A [condition][] is used to represent whether some property holds or not.
Threads may request to be notified when another thread makes the property hold.

A condition may notify either one or all of its requesting threads. When it has
to notify one thread but more than one request for notification has been made,
the choice of thread may be determined by the scheduler. When it has to notify
more than one thread, the property associated with the condition may have been
invalidated by the time the executions of some of them are resumed, and threads
may need to iterate requests for notifications.

In practice, a condition is generally associated with an exclusive lock. When
a thread awaiting the condition is notified, it requests the exclusive lock and
tests whether the required property holds; if it does not, the thread releases
the exclusive lock, and atomically reverts to requesting the notification.

[Condition]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-cv.pdf

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_condition-create">condition-create</span></span> : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
        <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>)</code></pre></div>


A condition request always adds the current thread to the waiting list, and
suspends it until the request can be granted. (In practice, it takes also an
associated exclusive lock as a further argument, assumed to be held by the
current thread, and releases it at the same time as suspending the thread.)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_condition-wait">condition-wait</span></span>(<span id="Variable499_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable499_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
        <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>)</code></pre></div>


In practice, a condition request usually takes also an associated exclusive lock
as a further argument, assumed to be held by the current thread, releases it
together with suspending the thread, and waits for the lock when resumed:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_condition-wait-with-lock">condition-wait-with-lock</span></span>(<span id="Variable556_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>, <span id="Variable565_L"><i class="var">L</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../Locks/index.html#Name_exclusive-lock-release">exclusive-lock-release</a></span>(<a href="#Variable565_L"><i class="var">L</i></a>),
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable556_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>),
        <span class="name"><a href="../Locks/index.html#Name_exclusive-lock-sync-else-wait">exclusive-lock-sync-else-wait</a></span>(<a href="#Variable565_L"><i class="var">L</i></a>))</code></pre></div>


Threads that are waiting for the condition are notified simply by resuming them.
To notify them all:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_condition-notify-all">condition-notify-all</span></span>(<span id="Variable656_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span>
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>
            <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable656_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable656_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>), []))</code></pre></div>


To notify just one of the waiting threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_condition-notify-first">condition-notify-first</span></span>(<span id="Variable742_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span>
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<a href="#Variable742_SY"><i class="var">SY</i></a>),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)</code></pre></div>


##### Rendezvous

A rendezvous notifies all requesting threads as soon as a specified number <code><i class="var">N</i></code>
of them have made *matching* requests for it. The rendezvous can store any number
of non-matching requests. If a request that completes a rendezvous matches
different sets of <code><i class="var">N-1</i></code> pending requests, the 'lexicographically' earliest set
of requests is selected; for a binary rendezvous, this is the first matching
request in the stored list.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rendezvous-create">rendezvous-create</span></span>(<span id="Variable852_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_pos-ints">pos-ints</a></span>) : =><span class="name"><a href="../index.html#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../index.html#Name_sync-create">sync-create</a></span>(
             <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>,
             <span class="name"><a href="../index.html#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../index.html#Name_sync-count">sync-count</a></span>), <a href="#Variable852_N"><i class="var">N</i></a>),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


Each rendezvous request includes a pattern, and the corresponding notifications
give environments obtained by matching the patterns against the same unified
value. When the pattern in each request is simply a value, a rendezvous notifies
all the requesting threads as soon as the specified number of requests with the
same value have been made. When the pattern in one request is a value, a pattern
in another request may bind an identifier to that value, giving one-way data flow.

A rendezvous request may also include a set of additional threads which are all
required to participate in the rendezvous. When a pair of matching binary
rendezvous requests each specify the other thread as the only required
participant, the rendezvous is restricted to that pair of threads. When one of
the sets is empty, the rendezvous may involve any other thread.

> In this simplified version, rendezvous are always binary, patterns in
> requests are ground values, and sets of required threads are omitted.



When a rendezvous is available, granting a request for it removes the first
matching element from the waiting list, and resumes its thread; otherwise the
request fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rendezvous-sync">rendezvous-sync</span></span>(<span id="Variable945_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>, <span id="Variable954_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable945_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span> <span class="name"><a href="#Name_is-rendezvous-match">is-rendezvous-match</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable954_V"><i class="var">V</i></a>),
          <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../index.html#Name_sync-feature">sync-feature</a></span>(<a href="#Variable945_SY"><i class="var">SY</i></a>, <span class="name"><a href="../index.html#Name_sync-waiting-list">sync-waiting-list</a></span>),
            <span class="name"><a href="#Name_rendezvous-first-match-drop">rendezvous-first-match-drop</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable954_V"><i class="var">V</i></a>)),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-resume">thread-resume</a></span>
            <span class="name"><a href="#Name_rendezvous-first-match-thread">rendezvous-first-match-thread</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable954_V"><i class="var">V</i></a>)))</code></pre></div>


When the request fails, a tuple of the value and the current thread is added
to the waiting list, and the thread suspended until the request can be granted:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</span></span>(<span id="Variable1089_SY"><i class="var">SY</i></span>:<span class="name"><a href="../index.html#Name_syncs">syncs</a></span>, <span id="Variable1098_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="#Name_rendezvous-sync">rendezvous-sync</a></span>(<a href="#Variable1089_SY"><i class="var">SY</i></a>, <a href="#Variable1098_V"><i class="var">V</i></a>),
        <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../index.html#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<a href="#Variable1089_SY"><i class="var">SY</i></a>, <span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1098_V"><i class="var">V</i></a>, <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>)),
          <span class="name"><a href="../../Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span> <span class="name"><a href="../../Multithreading/index.html#Name_current-thread">current-thread</a></span>))</code></pre></div>


The remaining rendezvous funcons are all auxiliary:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_rendezvous-waits">rendezvous-waits</span></span> ~> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span class="name"><a href="../../Multithreading/index.html#Name_thread-ids">thread-ids</a></span>)</code></pre></div>


The funcon <code><span class="name"><a href="#Name_is-rendezvous-match">is-rendezvous-match</a></span>(<i class="var">L</i>, <i class="var">V</i>)</code> returns whether the list <code><i class="var">L</i></code> contains
<code><span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">V</i>, <i class="var">TI</i>)</code> for some <code><i class="var">TI</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-rendezvous-match">is-rendezvous-match</span></span>(_:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_rendezvous-waits">rendezvous-waits</a></span>), _:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-rendezvous-match">is-rendezvous-match</a></span>([<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable1339_V'"><i class="var">V&prime;</i></span>, <span id="Variable1344_TI"><i class="var">TI</i></span>), <span id="Variable1357_P*"><i class="var">P<sup class="sup">*</sup></i></span>], <span id="Variable1368_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~>
    <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1339_V'"><i class="var">V&prime;</i></a>, <a href="#Variable1368_V"><i class="var">V</i></a>), <span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>, <span class="name"><a href="#Name_is-rendezvous-match">is-rendezvous-match</a></span>([<a href="#Variable1357_P*"><i class="var">P<sup class="sup">*</sup></i></a>], <a href="#Variable1368_V"><i class="var">V</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-rendezvous-match">is-rendezvous-match</a></span>([], <span id="Variable1445_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~> <span class="name"><a href="../../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>


The funcon <code><span class="name"><a href="#Name_rendezvous-first-match-thread">rendezvous-first-match-thread</a></span>(<i class="var">L</i>, <i class="var">V</i>)</code> returns the thread-id of the
first element of <code><i class="var">L</i></code> with value <code><i class="var">V</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rendezvous-first-match-thread">rendezvous-first-match-thread</span></span>(_:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_rendezvous-waits">rendezvous-waits</a></span>), _:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
    : =><span class="name"><a href="../../Multithreading/index.html#Name_thread-ids">thread-ids</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_rendezvous-first-match-thread">rendezvous-first-match-thread</a></span>([<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable1563_V'"><i class="var">V&prime;</i></span>, <span id="Variable1568_TI"><i class="var">TI</i></span>), <span id="Variable1581_P*"><i class="var">P<sup class="sup">*</sup></i></span>], <span id="Variable1592_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~>
    <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1563_V'"><i class="var">V&prime;</i></a>, <a href="#Variable1592_V"><i class="var">V</i></a>), <a href="#Variable1568_TI"><i class="var">TI</i></a>, <span class="name"><a href="#Name_rendezvous-first-match-thread">rendezvous-first-match-thread</a></span>([<a href="#Variable1581_P*"><i class="var">P<sup class="sup">*</sup></i></a>], <a href="#Variable1592_V"><i class="var">V</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_rendezvous-first-match-thread">rendezvous-first-match-thread</a></span>([], <span id="Variable1672_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>


The funcon <code><span class="name"><a href="#Name_rendezvous-first-match-drop">rendezvous-first-match-drop</a></span>(<i class="var">L</i>, <i class="var">V</i>)</code> returns the list <code><i class="var">L</i></code> omitting the
first element with value <code><i class="var">V</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_rendezvous-first-match-drop">rendezvous-first-match-drop</span></span>(_:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_rendezvous-waits">rendezvous-waits</a></span>), _:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
    : =><span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_rendezvous-waits">rendezvous-waits</a></span>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_rendezvous-first-match-drop">rendezvous-first-match-drop</a></span>([<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable1797_V'"><i class="var">V&prime;</i></span>, <span id="Variable1802_TI"><i class="var">TI</i></span>), <span id="Variable1815_P*"><i class="var">P<sup class="sup">*</sup></i></span>], <span id="Variable1826_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~>
    <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1797_V'"><i class="var">V&prime;</i></a>, <a href="#Variable1826_V"><i class="var">V</i></a>), [<a href="#Variable1815_P*"><i class="var">P<sup class="sup">*</sup></i></a>], 
      <span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<span class="name"><a href="../../../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1797_V'"><i class="var">V&prime;</i></a>, <a href="#Variable1802_TI"><i class="var">TI</i></a>), <span class="name"><a href="#Name_rendezvous-first-match-drop">rendezvous-first-match-drop</a></span>([<a href="#Variable1815_P*"><i class="var">P<sup class="sup">*</sup></i></a>], <a href="#Variable1826_V"><i class="var">V</i></a>)))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_rendezvous-first-match-drop">rendezvous-first-match-drop</a></span>([], <span id="Variable1939_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~> <span class="name"><a href="../../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>


A series of rendezvous between the same two threads is called an extended
rendezvous.  After the completion of each rendezvous in the series, one of the
threads may immediately request the next, allowing the other thread to execute
some code before synchronising. A simple rendezvous is restricted to
synchronisation, and does not involve ordinary computation steps.



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Notifications.cbs]: Notifications.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]:  "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Computations/Threads/Synchronising/Notifications/Notifications.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
