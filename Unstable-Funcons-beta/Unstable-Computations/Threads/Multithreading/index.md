---
layout: default
title: "Multithreading"
parent: Unstable-Computations
grand_parent: Unstable-Funcons-beta
nav_order: "Multithreading"
---

[Unstable-Funcons-beta] : [Multithreading.cbs]
-----------------------------

### Multithreading
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_thread-ids">thread-ids</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_threads">threads</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-joinable">thread-joinable</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-detached">thread-detached</a></span>
]</code></pre></div>


#### Initialisation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-multithreading">initialise-multithreading</a></span>
]</code></pre></div>


#### Activation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_multithread">multithread</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-activate">thread-activate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-detach">thread-detach</a></span>
]</code></pre></div>


#### Execution
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_current-thread">current-thread</a></span> 
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-yield">thread-yield</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-spin">thread-spin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-suspend">thread-suspend</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-resume">thread-resume</a></span>
]</code></pre></div>


#### Termination
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-terminate">thread-terminate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-thread-terminated">is-thread-terminated</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-value">thread-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-join">thread-join</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-exterminate">thread-exterminate</a></span>
]</code></pre></div>


#### Scheduling
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_update-thread-schedule">update-thread-schedule</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_current-thread-schedule">current-thread-schedule</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-thread-preemptible">is-thread-preemptible</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-preemptible">thread-preemptible</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thread-cooperative">thread-cooperative</a></span>
]</code></pre></div>


A thread consists of code that can be executed concurrently with code
of other threads. The progress of the execution of the threads may be
determined cooperatively by threads themselves, or by a preemptive
scheduler (or by both).

Threads can be activated by the initial program or by other threads, 
and share access to the same entities (in contrast to processes). 
Synchronisation between threads can avoid interference (e.g., data
races) arising from concurrent shared access. Synchronisation can also
ensure *sequential consistency* of threads, where any concurrent
execution corresponds to some (possibly unfair) interleaving of their
separate execution steps. Synchronisation can be achieved by various
kinds of locks and notifications.

A thread is a value containing a thunk. When a thread has been activated,
execution of the body of the thunk can be interleaved with that of other
activated threads, possibly subject to scheduling and synchronisation.

Activation of a thread generates a fresh thread-id for referring to it:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Datatype</i>
  <span class="name"><span id="Name_thread-ids">thread-ids</span></span> ::= <span id="Name_thread-id">thread-id</span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>)</code></pre></div>


A thread is called joinable when other threads can wait for its
termination. A joinable thread contains a list of the threads that
are currently waiting to join it. A non-joinable thread is called
detached:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Datatype</i>
  <span class="name"><span id="Name_threads">threads</span></span> ::= <span id="Name_thread">thread</span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), _:(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span> <span class="name"><a href="#Name_thread-ids">thread-ids</a></span>)<sup class="sup">?</sup>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-joinable">thread-joinable</span></span>(<span id="Variable276_TH"><i class="var">TH</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) : => <span class="name"><a href="#Name_threads">threads</a></span>
   ~> <span class="name"><a href="#Name_thread">thread</a></span>(<a href="#Variable276_TH"><i class="var">TH</i></a>, [ ])</code></pre></div>

 <div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-detached">thread-detached</span></span>(<span id="Variable322_TH"><i class="var">TH</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) : => <span class="name"><a href="#Name_threads">threads</a></span>
   ~> <span class="name"><a href="#Name_thread">thread</a></span>(<a href="#Variable322_TH"><i class="var">TH</i></a>)</code></pre></div>


In names of funcons and entities, and in informal explanations,
a reference to a 'thread' generally concerns a thread-id, rather
than a value of type <code><span class="name"><a href="#Name_threads">threads</a></span></code>. The only funcons that compute 
<code><span class="name"><a href="#Name_threads">threads</a></span></code> are <code><span class="name"><a href="#Name_thread-joinable">thread-joinable</a></span>(<i class="var">TH</i>)</code> and <code><span class="name"><a href="#Name_thread-detached">thread-detached</a></span>(<i class="var">TH</i>)</code>;
<code><span class="name"><a href="#Name_thread-activate">thread-activate</a></span>(<i class="var">THR</i>)</code> is the only funcon that takes an argument
of type <code><span class="name"><a href="#Name_threads">threads</a></span></code>.

The thunk contained in a thread can be formed directly from a
computation <code><i class="var">X</i></code> by <code><span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <i class="var">X</i></code>. Alternatively, <code><span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_supply">supply</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code>
forms a thunk by supplying an argument value <code><i class="var">V</i></code> to a function <code><i class="var">F</i></code>
without executing <code><i class="var">F</i></code> (in contrast to <code><span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code>, which forces
the evaluation of the body of <code><i class="var">F</i></code>).

The current state of a thread is either active, suspended, terminated,
or deleted.

- Activation makes a thread active.
- An active thread can be suspended, and subsequently resumed.
- An active or suspended thread can be terminated.
- A thread can be deleted.

The following mutable entities represent the states of all activated
threads.


#### Entities

The <code><span class="name"><a href="#Name_thread-map">thread-map</a></span></code> contains all active and suspended threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_thread-map">thread-map</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>, <span class="name"><a href="#Name_threads">threads</a></span>)) > --->
  < _ , <span class="ent-name">thread-map</span>(_:<span class="name">maps</span>(<span class="name">thread-ids</span>, <span class="name">threads</span>)) ></code></pre></div>


The <code><span class="name"><a href="#Name_active-thread-set">active-thread-set</a></span></code> distinguishes between active and suspended
threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_active-thread-set">active-thread-set</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>)) > --->
  < _ , <span class="ent-name">active-thread-set</span>(_:<span class="name">sets</span>(<span class="name">thread-ids</span>)) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-some-thread-active">is-some-thread-active</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_is-some-thread-active">is-some-thread-active</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable723_ATS"><i class="var">ATS</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable723_ATS"><i class="var">ATS</i></a>, {})</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-some-thread-suspended">is-some-thread-suspended</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_is-some-thread-suspended">is-some-thread-suspended</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable775_ATS"><i class="var">ATS</i></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable787_TM"><i class="var">TM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable775_ATS"><i class="var">ATS</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span> <a href="#Variable787_TM"><i class="var">TM</i></a>)</code></pre></div>


The <code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> entity identifies the thread whose step is
currently being executed. When defined, it identifies an active thread:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_thread-stepping">thread-stepping</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">?</sup>) > --->
  < _ , <span class="ent-name">thread-stepping</span>(_:<span class="name">thread-ids</span><sup class="sup">?</sup>) ></code></pre></div>


The <code><span class="name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span></code> contains the values computed by terminated
joinable threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_terminated-thread-map">terminated-thread-map</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>, <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) > --->
  < _ , <span class="ent-name">terminated-thread-map</span>(_:<span class="name">maps</span>(<span class="name">thread-ids</span>, <span class="name">values</span>)) ></code></pre></div>


Deleted threads are not contained in any of the above entities.
Terminated detached threads are always deleted.

Scheduling information for each thread may affect the interleaving
of thread steps:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i> // thread-scheduling
  < _ , <span class="ent-name"><span id="Name_thread-schedule">thread-schedule</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)) > --->
  < _ , <span class="ent-name">thread-schedule</span>(_:<span class="name">sets</span>(<span class="name">ground-values</span>)) ></code></pre></div>


Scheduling can change dynamically between preemptive and cooperative. 


#### Initialisation

The entities used to model multithreading need initialising:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-multithreading">initialise-multithreading</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span> ~>
  <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
    <span class="name"><a href="#Name_initialise-thread-map">initialise-thread-map</a></span>,
    <span class="name"><a href="#Name_initialise-active-thread-set">initialise-active-thread-set</a></span>,
    <span class="name"><a href="#Name_initialise-thread-stepping">initialise-thread-stepping</a></span>,
    <span class="name"><a href="#Name_initialise-terminated-thread-map">initialise-terminated-thread-map</a></span>,
    <span class="name"><a href="#Name_initialise-thread-schedule">initialise-thread-schedule</a></span>)</code></pre></div>


The initial values are generally quite obvious:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-thread-map">initialise-thread-map</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_initialise-thread-map">initialise-thread-map</a></span>
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>()) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-active-thread-set">initialise-active-thread-set</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_initialise-active-thread-set">initialise-active-thread-set</a></span>
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>{ } ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-thread-stepping">initialise-thread-stepping</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_initialise-thread-stepping">initialise-thread-stepping</a></span>
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-terminated-thread-map">initialise-terminated-thread-map</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_initialise-terminated-thread-map">initialise-terminated-thread-map</a></span>
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>()) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-thread-schedule">initialise-thread-schedule</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_initialise-thread-schedule">initialise-thread-schedule</a></span>
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-schedule">thread-schedule</a></span>{ } ></code></pre></div>


#### Activation

Multithreading can start by activating a single thread, which can then
activate further threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_multithread">multithread</span></span>(_:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

<code><span class="name"><a href="#Name_multithread">multithread</a></span> <i class="var">X</i></code> forms a joinable thread from <code><span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <i class="var">X</i></code> and
activates it. On normal termination of all threads, it gives the value
computed by <code><i class="var">X</i></code>. On abrupt termination (caused by a thread step, or by
the failure of the check that all threads have terminated) the reason
for it:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_multithread">multithread</a></span> <span id="Variable1300_X"><i class="var">X</i></span> ~>
    <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
      <span class="name"><a href="#Name_initialise-multithreading">initialise-multithreading</a></span>,
      <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
        <span class="name"><a href="#Name_thread-activate">thread-activate</a></span> <span class="name"><a href="#Name_thread-joinable">thread-joinable</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <a href="#Variable1300_X"><i class="var">X</i></a>, // gives TI
        <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_handle-abrupt">handle-abrupt</a></span>(
          <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>(<span class="name"><a href="#Name_is-some-thread-active">is-some-thread-active</a></span>,
              <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>, <span class="name"><a href="#Name_thread-step">thread-step</a></span>)),
            <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check">check</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="#Name_is-some-thread-suspended">is-some-thread-suspended</a></span>, // deadlock
            <span class="name"><a href="#Name_thread-value">thread-value</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), // given is TI
          <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>) // given is the reason for abruption
      ))</code></pre></div>


The <code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code> funcon determines the thread-id for the next step,
which may depend on whether the previous step has yielded, on its
preemptibility, and on the current scheduling.

A thread can activate the execution of thread-activates:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-activate">thread-activate</span></span>(_:<span class="name"><a href="#Name_threads">threads</a></span>) : =><span class="name"><a href="#Name_thread-ids">thread-ids</a></span></code></pre></div>

When a thread is activated, a fresh thread-id is generated, and the
thread is included in the thread-map and the active-thread-set:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_thread-id">thread-id</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>) ---> <span id="Variable1446_TI"><i class="var">TI</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>({<a href="#Variable1446_TI"><i class="var">TI</i></a> |-> <a href="#Variable1526_THR"><i class="var">THR</i></a>}, <a href="#Variable1541_TM"><i class="var">TM</i></a>) ~> <span id="Variable1482_TM'"><i class="var">TM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>({<a href="#Variable1446_TI"><i class="var">TI</i></a>}, <a href="#Variable1553_ATS"><i class="var">ATS</i></a>) ~> <span id="Variable1512_ATS'"><i class="var">ATS&prime;</i></span>
  ------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-activate">thread-activate</a></span>(<span id="Variable1526_THR"><i class="var">THR</i></span>:<span class="name"><a href="#Name_threads">threads</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable1541_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable1553_ATS"><i class="var">ATS</i></span>) >
    ---> < <a href="#Variable1446_TI"><i class="var">TI</i></a>, <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable1482_TM'"><i class="var">TM&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable1512_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


A joinable thread can be detached after its activation, discarding its
list of joining threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-detach">thread-detach</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

When the thread has not yet terminated, it remains in the thread-map:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable1742_TM"><i class="var">TM</i></a>, <a href="#Variable1727_TI"><i class="var">TI</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span id="Variable1661_TH"><i class="var">TH</i></span>, _)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable1727_TI"><i class="var">TI</i></a> |-> <span class="name"><a href="#Name_thread">thread</a></span>(<a href="#Variable1661_TH"><i class="var">TH</i></a>)}, <a href="#Variable1742_TM"><i class="var">TM</i></a>) ~> <span id="Variable1714_TM'"><i class="var">TM&prime;</i></span>
  ------------------------------------------------
  < <span class="name"><a href="#Name_thread-detach">thread-detach</a></span>(<span id="Variable1727_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable1742_TM"><i class="var">TM</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable1714_TM'"><i class="var">TM&prime;</i></a>) ></code></pre></div>


When the thread has already terminated, detaching it deletes it from
the terminated-thread-map:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1852_TI"><i class="var">TI</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span> <a href="#Variable1867_TMV"><i class="var">TMV</i></a>) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable1867_TMV"><i class="var">TMV</i></a>, {<a href="#Variable1852_TI"><i class="var">TI</i></a>}) ~> <span id="Variable1839_TMV'"><i class="var">TMV&prime;</i></span>
  ------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-detach">thread-detach</a></span>(<span id="Variable1852_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable1867_TMV"><i class="var">TMV</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<a href="#Variable1839_TMV'"><i class="var">TMV&prime;</i></a>) ></code></pre></div>


(A funcon for making a detached thread joinable could be defined
similarly.)


#### Execution

The thread-stepping is undefined only before multithreading starts,
and when all non-terminated threads are suspended.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_current-thread">current-thread</span></span> : =><span class="name"><a href="#Name_thread-ids">thread-ids</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_current-thread">current-thread</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable1953_TI"><i class="var">TI</i></span>) > ---> <a href="#Variable1953_TI"><i class="var">TI</i></a></code></pre></div>


<code><span class="name"><a href="#Name_current-thread">current-thread</a></span></code> is only intended for use in threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_current-thread">current-thread</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ) > ---> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>


##### Stepping

The funcon <code><span class="name"><a href="#Name_thread-step">thread-step</a></span></code> executes a single step of the thread identified 
by <code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-step">thread-step</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

Whenever <code><i class="var">THR</i></code> executes a step and <code><i class="var">THR&prime;</i></code> represents the remaining
steps, the thread-map is updated to map <code><i class="var">TI</i></code> to <code><i class="var">THR&prime;</i></code>.  

If the body of the thread can make a step, so can <code><span class="name"><a href="#Name_thread-step">thread-step</a></span></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable2371_TM"><i class="var">TM</i></a>, <a href="#Variable2359_TI"><i class="var">TI</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable2152_X"><i class="var">X</i></span>), <span id="Variable2165_L?"><i class="var">L<sup class="sup">?</sup></i></span>)
  < <a href="#Variable2152_X"><i class="var">X</i></a>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable2359_TI"><i class="var">TI</i></a>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable2371_TM"><i class="var">TM</i></a>) > 
    ---> < <span id="Variable2216_X'"><i class="var">X&prime;</i></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable2223_TI?"><i class="var">TI<sup class="sup">?</sup></i></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable2236_TM'"><i class="var">TM&prime;</i></span>) >
  <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
    <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2359_TI"><i class="var">TI</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span> <a href="#Variable2236_TM'"><i class="var">TM&prime;</i></a>),
    <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable2359_TI"><i class="var">TI</i></a> |-> <span class="name"><a href="#Name_thread">thread</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<a href="#Variable2216_X'"><i class="var">X&prime;</i></a>), <a href="#Variable2165_L?"><i class="var">L<sup class="sup">?</sup></i></a>)}, <a href="#Variable2236_TM'"><i class="var">TM&prime;</i></a>), 
    <a href="#Variable2236_TM'"><i class="var">TM&prime;</i></a>)
    ~> <span id="Variable2343_TM''"><i class="var">TM&prime;&prime;</i></span>
  ----------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-step">thread-step</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable2359_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable2371_TM"><i class="var">TM</i></span>) > 
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable2223_TI?"><i class="var">TI<sup class="sup">?</sup></i></a>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable2343_TM''"><i class="var">TM&prime;&prime;</i></a>) ></code></pre></div>


The only other case for a next step is when a thread has terminated
normally, and is to be removed from the executing thread map.

If it is detached, its computed value is discarded:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable2585_TM"><i class="var">TM</i></a>, <a href="#Variable2573_TI"><i class="var">TI</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable2452_X"><i class="var">X</i></span>))
 <a href="#Variable2452_X"><i class="var">X</i></a> ~> (<span id="Variable2476_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable2585_TM"><i class="var">TM</i></a>, {<a href="#Variable2573_TI"><i class="var">TI</i></a>}) ~> <span id="Variable2514_TM'"><i class="var">TM&prime;</i></span>
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable2561_ATS"><i class="var">ATS</i></a>, {<a href="#Variable2573_TI"><i class="var">TI</i></a>}) ~> <span id="Variable2544_ATS'"><i class="var">ATS&prime;</i></span>
 ----------------------------------------------------------------------------
 < <span class="name"><a href="#Name_thread-step">thread-step</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable2561_ATS"><i class="var">ATS</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable2573_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable2585_TM"><i class="var">TM</i></span>) >
 --->
 < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable2544_ATS'"><i class="var">ATS&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable2514_TM'"><i class="var">TM&prime;</i></a>) ></code></pre></div>


If the thread is joinable, all its joining threads are resumed, and its
computed value is made available in the terminated-thread-map:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable2874_TM"><i class="var">TM</i></a>, <a href="#Variable2862_TI"><i class="var">TI</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable2674_X"><i class="var">X</i></span>), [<span id="Variable2687_TI*"><i class="var">TI<sup class="sup">*</sup></i></span>])
 <a href="#Variable2674_X"><i class="var">X</i></a> ~> (<span id="Variable2710_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable2874_TM"><i class="var">TM</i></a>, {<a href="#Variable2862_TI"><i class="var">TI</i></a>}) ~> <span id="Variable2748_TM'"><i class="var">TM&prime;</i></span>
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable2850_ATS"><i class="var">ATS</i></a>, {<a href="#Variable2862_TI"><i class="var">TI</i></a>}), {<a href="#Variable2687_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>}) ~> <span id="Variable2797_ATS'"><i class="var">ATS&prime;</i></span>
 <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable2886_TVM"><i class="var">TVM</i></a>, {<a href="#Variable2862_TI"><i class="var">TI</i></a> |-> <a href="#Variable2710_V"><i class="var">V</i></a>}) ~> <span id="Variable2832_TVM'"><i class="var">TVM&prime;</i></span>
 -----------------------------------------------------------
 < <span class="name"><a href="#Name_thread-step">thread-step</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable2850_ATS"><i class="var">ATS</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable2862_TI"><i class="var">TI</i></span>), 
   <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable2874_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable2886_TVM"><i class="var">TVM</i></span>) >
 --->
 < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable2797_ATS'"><i class="var">ATS&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ), 
   <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable2748_TM'"><i class="var">TM&prime;</i></a>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<a href="#Variable2832_TVM'"><i class="var">TVM&prime;</i></a>) ></code></pre></div>


##### Sync atomicity

<code><span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<i class="var">X</i>)</code> computes <code><i class="var">X</i></code> in a single transition. Assuming that the
potentially interfering effects of <code><i class="var">X</i></code> may only be updates on the store,
thread suspension and/or resumption, and abrupt termination, and that <code><i class="var">X</i></code>
always terminates, the outcome of <code><span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<i class="var">X</i>)</code> is the same as that of
computing <code><i class="var">X</i></code> without preemption.

(The funcon <code><span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code> generalises <code><span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<i class="var">X</i>)</code> to allow <code><i class="var">X</i></code> with
arbitrary effects. When the CBS notation "--->1 ; --->2" for composing
transitions has been implemented by the interpreter generation tools,
uses of <code><span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<i class="var">X</i>)</code> are to be replaced by <code><span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code>.)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-atomic">thread-atomic</span></span>(_:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  < <a href="#Variable3435_X"><i class="var">X</i></a>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3447_Sigma"><i class="var">Sigma</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3459_ATS"><i class="var">ATS</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3471_TI"><i class="var">TI</i></a>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> 
    < <span id="Variable3254_X'"><i class="var">X&prime;</i></span>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3261_Sigma'"><i class="var">Sigma&prime;</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3274_ATS'"><i class="var">ATS&prime;</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3287_TI'"><i class="var">TI&prime;</i></span>) >
  < <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<a href="#Variable3254_X'"><i class="var">X&prime;</i></a>), <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3261_Sigma'"><i class="var">Sigma&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3274_ATS'"><i class="var">ATS&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3287_TI'"><i class="var">TI&prime;</i></a>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )->
    < <span id="Variable3376_V"><i class="var">V</i></span>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3383_Sigma''"><i class="var">Sigma&prime;&prime;</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3396_ATS''"><i class="var">ATS&prime;&prime;</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3410_TI''?"><i class="var">TI&prime;&prime;<sup class="sup">?</sup></i></span>) >
  ---------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable3435_X"><i class="var">X</i></span>), <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3447_Sigma"><i class="var">Sigma</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3459_ATS"><i class="var">ATS</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3471_TI"><i class="var">TI</i></span>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )->
    < <a href="#Variable3376_V"><i class="var">V</i></a>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3383_Sigma''"><i class="var">Sigma&prime;&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3396_ATS''"><i class="var">ATS&prime;&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3410_TI''?"><i class="var">TI&prime;&prime;<sup class="sup">?</sup></i></a>) >
<i class="keyword">Rule</i>
  < <a href="#Variable3802_X"><i class="var">X</i></a>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3814_Sigma"><i class="var">Sigma</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3826_ATS"><i class="var">ATS</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3838_TI"><i class="var">TI</i></a>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> 
    < <span id="Variable3615_X'"><i class="var">X&prime;</i></span>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3622_Sigma'"><i class="var">Sigma&prime;</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3635_ATS'"><i class="var">ATS&prime;</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3648_TI'"><i class="var">TI&prime;</i></span>) >
  < <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<a href="#Variable3615_X'"><i class="var">X&prime;</i></a>), <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3622_Sigma'"><i class="var">Sigma&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3635_ATS'"><i class="var">ATS&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3648_TI'"><i class="var">TI&prime;</i></a>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable3727_A"><i class="var">A</i></span>)->
    < <span id="Variable3743_V"><i class="var">V</i></span>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3750_Sigma''"><i class="var">Sigma&prime;&prime;</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3763_ATS''"><i class="var">ATS&prime;&prime;</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3777_TI''?"><i class="var">TI&prime;&prime;<sup class="sup">?</sup></i></span>) >
  ---------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable3802_X"><i class="var">X</i></span>), <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<span id="Variable3814_Sigma"><i class="var">Sigma</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable3826_ATS"><i class="var">ATS</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable3838_TI"><i class="var">TI</i></span>) >
    --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable3727_A"><i class="var">A</i></a>)->
    < <a href="#Variable3743_V"><i class="var">V</i></a>, <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>(<a href="#Variable3750_Sigma''"><i class="var">Sigma&prime;&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable3763_ATS''"><i class="var">ATS&prime;&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable3777_TI''?"><i class="var">TI&prime;&prime;<sup class="sup">?</sup></i></a>) >
<i class="keyword">Rule</i>
  <a href="#Variable3966_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable3936_A"><i class="var">A</i></span>)-> <span id="Variable3953_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable3966_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable3936_A"><i class="var">A</i></a>)-> <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<a href="#Variable3953_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable4053_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> (<span id="Variable4032_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
  --------------------------------
  <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable4053_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <a href="#Variable4032_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <a href="#Variable4132_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable4095_A"><i class="var">A</i></span>)-> (<span id="Variable4111_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
  ---------------------------------------------
  <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable4132_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable4095_A"><i class="var">A</i></a>)-> <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<a href="#Variable4111_V"><i class="var">V</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<span id="Variable4180_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ---> <a href="#Variable4180_V"><i class="var">V</i></a></code></pre></div>


Note that if the execution of <code><span class="name"><a href="#Name_thread-atomic">thread-atomic</a></span>(<i class="var">X</i>)</code> involves <code><span class="name"><a href="#Name_thread-yield">thread-yield</a></span>( )</code> or
<code><span class="name"><a href="#Name_thread-suspend">thread-suspend</a></span>( )</code>, this makes thread-stepping undefined, so it has to be the
final step of <code><i class="var">X</i></code>.


##### Yielding

A thread can yield execution:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-yield">thread-yield</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">?</sup>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

When the argument thread-id is omitted, the next thread to be executed
is left undefined, to be determined by the scheduler:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_thread-yield">thread-yield</a></span>( )
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ) ></code></pre></div>


When the argument thread-id is <code><i class="var">TI</i></code>, it has to be an active thread:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable4400_TI"><i class="var">TI</i></a>, <a href="#Variable4415_ATS"><i class="var">ATS</i></a>) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  -------------------------------------------------------
  < <span class="name"><a href="#Name_thread-yield">thread-yield</a></span>(<span id="Variable4400_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable4415_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable4400_TI"><i class="var">TI</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable4485_TI"><i class="var">TI</i></a>, <a href="#Variable4500_ATS"><i class="var">ATS</i></a>) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
  -------------------------------------------------------
  < <span class="name"><a href="#Name_thread-yield">thread-yield</a></span>(<span id="Variable4485_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable4500_ATS"><i class="var">ATS</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>


<code><span class="name"><a href="#Name_thread-spin">thread-spin</a></span>(<i class="var">X</i>)</code> repeatedly executes <code><i class="var">X</i></code> while it fails, allowing interleaving
with other threads.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-spin">thread-spin</span></span>(<span id="Variable4563_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
   ~> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<a href="#Variable4563_X"><i class="var">X</i></a>, 
        <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_thread-yield">thread-yield</a></span>( ), <span class="name"><a href="#Name_thread-spin">thread-spin</a></span>(<a href="#Variable4563_X"><i class="var">X</i></a>)))</code></pre></div>


##### Suspension and resumption

A thread may suspend one or more threads that are currently being
executed:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-suspend">thread-suspend</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">+</sup>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable4791_TI"><i class="var">TI</i></a>, {<a href="#Variable4774_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-subset">is-subset</a></span>({<a href="#Variable4774_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}, <a href="#Variable4803_ATS"><i class="var">ATS</i></a>) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable4803_ATS"><i class="var">ATS</i></a>, {<a href="#Variable4774_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}) ~> <span id="Variable4759_ATS'"><i class="var">ATS&prime;</i></span>
  --------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-suspend">thread-suspend</a></span>(<span id="Variable4774_TI+"><i class="var">TI<sup class="sup">+</sup></i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">+</sup>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable4791_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable4803_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable4791_TI"><i class="var">TI</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable4759_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


If <code><i class="var">TI<sup class="sup">+</sup></i></code> includes the current thread, suspension is accompanied by
yielding:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable4997_TI"><i class="var">TI</i></a>, {<a href="#Variable4980_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-subset">is-subset</a></span>({<a href="#Variable4980_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}, <a href="#Variable5009_ATS"><i class="var">ATS</i></a>) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable5009_ATS"><i class="var">ATS</i></a>, {<a href="#Variable4980_TI+"><i class="var">TI<sup class="sup">+</sup></i></a>}) ~> <span id="Variable4965_ATS'"><i class="var">ATS&prime;</i></span>
  --------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-suspend">thread-suspend</a></span>(<span id="Variable4980_TI+"><i class="var">TI<sup class="sup">+</sup></i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">+</sup>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable4997_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable5009_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable4965_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


(Deadlock occurs if the last non-suspended thread suspends itself.)

A thread may resume any number of suspended threads:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-resume">thread-resume</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable5202_TI"><i class="var">TI</i></a>, {<a href="#Variable5185_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>}) == (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-intersect">set-intersect</a></span>(<a href="#Variable5214_ATS"><i class="var">ATS</i></a>, {<a href="#Variable5185_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>}) == { }
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>(<a href="#Variable5214_ATS"><i class="var">ATS</i></a>, {<a href="#Variable5185_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>}) ~> <span id="Variable5170_ATS'"><i class="var">ATS&prime;</i></span>
  -------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-resume">thread-resume</a></span>(<span id="Variable5185_TI*"><i class="var">TI<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span><sup class="sup">*</sup>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable5202_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable5214_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable5202_TI"><i class="var">TI</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable5170_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


#### Termination


If the thread-map becomes empty, and there are no suspended threads,
the entire multithread computation terminates normally. If it becomes
empty while suspended threads remain to be executed, this is regarded
as deadlock, and the computation fails.

If the execution of an individual thread terminates normally, the body
of its thunk gives its computed value. The thread is removed from the
thread-map, and the computed value is added to the terminated-thread-map.

Abrupt termination of a thread body causes immediate abrupt termination
of the entire multithread computation. This can be avoided by wrapping
the bodies of all threads in appropriate handlers for abrupt termination.

A thread can terminate itself or another thread, optionally specifying
its computed value:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-terminate">thread-terminate</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>, _:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

When the thread is detached, no value is specified:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable5509_TM"><i class="var">TM</i></a>, <a href="#Variable5482_TI'"><i class="var">TI&prime;</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <span id="Variable5355_X"><i class="var">X</i></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable5509_TM"><i class="var">TM</i></a>, {<a href="#Variable5482_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable5394_TM'"><i class="var">TM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable5521_ATS"><i class="var">ATS</i></a>, {<a href="#Variable5482_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable5425_ATS'"><i class="var">ATS&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable5497_TI"><i class="var">TI</i></a>, <a href="#Variable5482_TI'"><i class="var">TI&prime;</i></a>), <a href="#Variable5497_TI"><i class="var">TI</i></a>) ~> <span id="Variable5466_TI?"><i class="var">TI<sup class="sup">?</sup></i></span>
  --------------------------------------------------------
  < <span class="name"><a href="#Name_thread-terminate">thread-terminate</a></span>(<span id="Variable5482_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable5497_TI"><i class="var">TI</i></span>), 
    <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable5509_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable5521_ATS"><i class="var">ATS</i></span>) >
  ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable5466_TI?"><i class="var">TI<sup class="sup">?</sup></i></a>), 
         <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable5394_TM'"><i class="var">TM&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable5425_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


When the thread is joinable, its value has to be specified:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable5854_TM"><i class="var">TM</i></a>, <a href="#Variable5818_TI'"><i class="var">TI&prime;</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>((<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <span id="Variable5618_X"><i class="var">X</i></span>), [<span id="Variable5631_TI*"><i class="var">TI<sup class="sup">*</sup></i></span>])
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable5854_TM"><i class="var">TM</i></a>, {<a href="#Variable5818_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable5674_TM'"><i class="var">TM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable5878_ATS"><i class="var">ATS</i></a>, {<a href="#Variable5818_TI'"><i class="var">TI&prime;</i></a>}), {<a href="#Variable5631_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>}) ~> <span id="Variable5724_ATS'"><i class="var">ATS&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable5866_TVM"><i class="var">TVM</i></a>, {<a href="#Variable5818_TI'"><i class="var">TI&prime;</i></a> |-> <a href="#Variable5826_V"><i class="var">V</i></a>}) ~> <span id="Variable5760_TVM'"><i class="var">TVM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable5842_TI"><i class="var">TI</i></a>, <a href="#Variable5818_TI'"><i class="var">TI&prime;</i></a>), <a href="#Variable5842_TI"><i class="var">TI</i></a>) ~> <span id="Variable5801_TI?"><i class="var">TI<sup class="sup">?</sup></i></span>
 ----------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-terminate">thread-terminate</a></span>(<span id="Variable5818_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>, <span id="Variable5826_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable5842_TI"><i class="var">TI</i></span>), 
    <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable5854_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable5866_TVM"><i class="var">TVM</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable5878_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable5801_TI?"><i class="var">TI<sup class="sup">?</sup></i></a>), 
           <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable5674_TM'"><i class="var">TM&prime;</i></a>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<a href="#Variable5760_TVM'"><i class="var">TVM&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable5724_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


A thread can test whether a joinable thread has terminated:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-thread-terminated">is-thread-terminated</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_is-thread-terminated">is-thread-terminated</a></span>(<span id="Variable5990_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable6005_TVM"><i class="var">TVM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-value">is-value</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable6005_TVM"><i class="var">TVM</i></a>, <a href="#Variable5990_TI"><i class="var">TI</i></a>))</code></pre></div>


If so, it can get the computed value:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-value">thread-value</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_thread-value">thread-value</a></span>(<span id="Variable6079_TI"><i class="var">TI</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable6094_TVM"><i class="var">TVM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable6094_TVM"><i class="var">TVM</i></a>, <a href="#Variable6079_TI"><i class="var">TI</i></a>)</code></pre></div>


Joining a thread may cause suspension:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-join">thread-join</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable6320_TM"><i class="var">TM</i></a>, <a href="#Variable6305_TI'"><i class="var">TI&prime;</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span id="Variable6181_TH"><i class="var">TH</i></span>, [<span id="Variable6187_TI*"><i class="var">TI<sup class="sup">*</sup></i></span>])
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable6305_TI'"><i class="var">TI&prime;</i></a> |-> <span class="name"><a href="#Name_thread">thread</a></span>(<a href="#Variable6181_TH"><i class="var">TH</i></a>, [<a href="#Variable6187_TI*"><i class="var">TI<sup class="sup">*</sup></i></a>, <a href="#Variable6332_TI"><i class="var">TI</i></a>])}, <a href="#Variable6320_TM"><i class="var">TM</i></a>) ~> <span id="Variable6260_TM'"><i class="var">TM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable6344_ATS"><i class="var">ATS</i></a>, {<a href="#Variable6332_TI"><i class="var">TI</i></a>}) ~> <span id="Variable6290_ATS'"><i class="var">ATS&prime;</i></span>
  -------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-join">thread-join</a></span>(<span id="Variable6305_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable6320_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable6332_TI"><i class="var">TI</i></span>),
    <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable6344_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable6260_TM'"><i class="var">TM&prime;</i></a>), 
           <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable6290_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


If a joinable thread has already terminated, the <code><span class="name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span></code>
holds its value:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-value">is-value</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable6473_TVM"><i class="var">TVM</i></a>, <a href="#Variable6458_TI'"><i class="var">TI&prime;</i></a>)) == <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -----------------------------------------------------------
  < <span class="name"><a href="#Name_thread-join">thread-join</a></span>(<span id="Variable6458_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable6473_TVM"><i class="var">TVM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>


Trying to join a detached thread fails:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable6556_TM"><i class="var">TM</i></a>, <a href="#Variable6541_TI'"><i class="var">TI&prime;</i></a>) ~> <span class="name"><a href="#Name_thread">thread</a></span>(<span id="Variable6522_TH"><i class="var">TH</i></span>)
  -----------------------------------------------
  < <span class="name"><a href="#Name_thread-join">thread-join</a></span>(<span id="Variable6541_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable6556_TM"><i class="var">TM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable6650_TM"><i class="var">TM</i></a>, <a href="#Variable6635_TI'"><i class="var">TI&prime;</i></a>) == ( )
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable6662_TVM"><i class="var">TVM</i></a>, <a href="#Variable6635_TI'"><i class="var">TI&prime;</i></a>) == ( )
  ---------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-join">thread-join</a></span>(<span id="Variable6635_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable6650_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable6662_TVM"><i class="var">TVM</i></span>) >
    ---> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>


Extermination of a thread both terminates it and prevents its subsequent
inspection.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_thread-exterminate">thread-exterminate</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <a href="#Variable6827_TI'"><i class="var">TI&prime;</i></a> =/= <a href="#Variable6854_TI"><i class="var">TI</i></a>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable6842_TM"><i class="var">TM</i></a>, {<a href="#Variable6827_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable6749_TM'"><i class="var">TM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable6866_TVM"><i class="var">TVM</i></a>, {<a href="#Variable6827_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable6780_TVM'"><i class="var">TVM&prime;</i></span>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>(<a href="#Variable6878_ATS"><i class="var">ATS</i></a>, {<a href="#Variable6827_TI'"><i class="var">TI&prime;</i></a>}) ~> <span id="Variable6811_ATS'"><i class="var">ATS&prime;</i></span>
  --------------------------------------------------------------------------
  < <span class="name"><a href="#Name_thread-exterminate">thread-exterminate</a></span>(<span id="Variable6827_TI'"><i class="var">TI&prime;</i></span>:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>), <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<span id="Variable6842_TM"><i class="var">TM</i></span>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable6854_TI"><i class="var">TI</i></span>), 
    <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<span id="Variable6866_TVM"><i class="var">TVM</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable6878_ATS"><i class="var">ATS</i></span>) >
    --->
    < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-map">thread-map</a></span>(<a href="#Variable6749_TM'"><i class="var">TM&prime;</i></a>), <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable6854_TI"><i class="var">TI</i></a>),
      <span class="ent-name"><a href="#Name_terminated-thread-map">terminated-thread-map</a></span>(<a href="#Variable6780_TVM'"><i class="var">TVM&prime;</i></a>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<a href="#Variable6811_ATS'"><i class="var">ATS&prime;</i></a>) ></code></pre></div>


#### Scheduling


A scheduler determines the interleaving of thread execution, based on
mutable information regarding features such as preemptibility, priority,
and time-sharing.

The next thread scheduled for execution is an active thread, or
undefined when there are no active threads. It may be the same thread
that last made a step.

(The following definitions allow <code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code> to update
<code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> to any valid thread. They are to be replaced by
declarations of built-in funcons, allowing exploration of different
interleavings using oracles.)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_update-thread-stepping">update-thread-stepping</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

When <code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> is <code><i class="var">TI</i></code> and that thread is not preemptible,
<code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code> has no effect:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-thread-preemptible">is-thread-preemptible</a></span>(<a href="#Variable7093_TI"><i class="var">TI</i></a>) ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  ---------------------------------------------------------------
  < <span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable7093_TI"><i class="var">TI</i></span>) > ---> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>


When  <code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> is <code><i class="var">TI</i></code> and that thread is preemptible, or when
<code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> is undefined, <code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code> may set it to any
active <code><i class="var">TI&prime;</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-thread-preemptible">is-thread-preemptible</a></span>(<a href="#Variable7232_TI"><i class="var">TI</i></a>) ---> (<span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>)
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_some-element">some-element</a></span>(<a href="#Variable7244_ATS"><i class="var">ATS</i></a>) ~> <span id="Variable7217_TI'"><i class="var">TI&prime;</i></span>
  -----------------------------------------------------------------------
  < <span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable7232_TI"><i class="var">TI</i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable7244_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable7217_TI'"><i class="var">TI&prime;</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_some-element">some-element</a></span>(<a href="#Variable7317_ATS"><i class="var">ATS</i></a>) ~> <span id="Variable7297_TI'"><i class="var">TI&prime;</i></span>
  ----------------------------------------------------------------------
  < <span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>(<span id="Variable7317_ATS"><i class="var">ATS</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<a href="#Variable7297_TI'"><i class="var">TI&prime;</i></a>) ></code></pre></div>


When there are no active threads, <code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code> ensures that
<code><span class="name"><a href="#Name_thread-stepping">thread-stepping</a></span></code> is undefined:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>(<span id="Variable7388_TI?"><i class="var">TI<sup class="sup">?</sup></i></span>), <span class="ent-name"><a href="#Name_active-thread-set">active-thread-set</a></span>{ } >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-stepping">thread-stepping</a></span>( ) ></code></pre></div>


Scheduling information for each thread can be inspected and updated:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_update-thread-schedule">update-thread-schedule</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
   <span class="name"><a href="#Name_update-thread-schedule">update-thread-schedule</a></span>(<span id="Variable7462_VS"><i class="var">VS</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>))
     ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_thread-schedule">thread-schedule</a></span>(<a href="#Variable7462_VS"><i class="var">VS</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_current-thread-schedule">current-thread-schedule</span></span> : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_current-thread-schedule">current-thread-schedule</a></span>, <span class="ent-name"><a href="#Name_thread-schedule">thread-schedule</a></span>(<span id="Variable7526_VS"><i class="var">VS</i></span>) > ---> <a href="#Variable7526_VS"><i class="var">VS</i></a></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_thread-preemtibilities">thread-preemtibilities</span></span> ::= <span id="Name_thread-preemptible">thread-preemptible</span> | <span id="Name_thread-cooperative">thread-cooperative</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-thread-preemptible">is-thread-preemptible</span></span>(_:<span class="name"><a href="#Name_thread-ids">thread-ids</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
    ~> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<span class="name"><a href="#Name_thread-cooperative">thread-cooperative</a></span>, <span class="name"><a href="#Name_current-thread-schedule">current-thread-schedule</a></span>)</code></pre></div>


For now, all threads are preemptible unless the scheduling includes cooperative.

The representation of scheduling information is left open here, together with
the details of how it affects the result of <code><span class="name"><a href="#Name_update-thread-stepping">update-thread-stepping</a></span></code>.



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Multithreading.cbs]: Multithreading.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]:  "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Computations/Threads/Multithreading/Multithreading.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
