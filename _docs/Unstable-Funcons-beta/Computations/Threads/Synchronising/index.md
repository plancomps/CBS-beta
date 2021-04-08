---
title: "Synchronising"
parent: Threads
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Synchronising.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Thread synchronisation
<div class="highlighter-rouge"><pre class="highlight"><code>[
#### Syncs
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_syncs">syncs</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-create">sync-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-feature">sync-feature</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-sync-feature">is-sync-feature</a></span>
#### Sync features
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_sync-features">sync-features</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-held">sync-held</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-holder">sync-holder</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-count">sync-count</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sync-feature-create">sync-feature-create</a></span>
]</code></pre></div>



Thread synchronisation can be supported in many different ways: semaphores,
exclusive and shared locks, conditions, barriers, rendezvous, spin-locks, etc.
They generally involve the execution of one or more threads being blocked
while they wait for some synchronisation request to be granted by a synchroniser
due to a step by some unblocked thread. Blocking may involve thread suspension
or repeated requests.

In general, the effect of granting a sync needs to be atomic, to
preclude preemption. However, the execution of the thread that caused the
request to be granted might continue without yielding, thereby delaying the
resumed execution of the requesting thread. Synchronisation ensures that the
executions of two or more threads are at particular points at the same time,
but it does *not* require their next steps to be simultaneous.

Syncs are mutable structures that map sync features to variables (some fields
may be constant values). Inspecting and updating sync features should be atomic,
in case threads are preemptible.


#### Syncs

A sync is formed from its features:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_syncs">syncs</span></span> ::= <span id="Name_sync">sync</span>(_:<span class="name"><a href="#Name_sync-feature-maps">sync-feature-maps</a></span>)</code></pre></div>


<code><span class="name"><a href="#Name_sync-create">sync-create</a></span>(<i class="var">M<sup class="sup">+</sup></i>)</code> checks that the specified features are distinct. (It could
also check required feature constraints.)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sync-create">sync-create</span></span>(<span id="Variable148_M+"><i class="var">M<sup class="sup">+</sup></i></span>:<span class="name"><a href="#Name_sync-feature-maps">sync-feature-maps</a></span><sup class="sup">+</sup>) : =><span class="name"><a href="#Name_syncs">syncs</a></span>
   ~> <span class="name"><a href="#Name_sync">sync</a></span> <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span> <a href="#Variable148_M+"><i class="var">M<sup class="sup">+</sup></i></a></code></pre></div>


<code><span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<i class="var">SY</i>, <i class="var">SF</i>)</code> selects the feature <code><i class="var">SF</i></code> from <code><i class="var">SY</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sync-feature">sync-feature</span></span>(_:<span class="name"><a href="#Name_syncs">syncs</a></span>, _:<span class="name"><a href="#Name_sync-features">sync-features</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<span class="name"><a href="#Name_sync">sync</a></span>(<span id="Variable272_SFM"><i class="var">SFM</i></span>:<span class="name"><a href="#Name_sync-feature-maps">sync-feature-maps</a></span>), <span id="Variable286_SF"><i class="var">SF</i></span>:<span class="name"><a href="#Name_sync-features">sync-features</a></span>)
   ~> <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable272_SFM"><i class="var">SFM</i></a>, <a href="#Variable286_SF"><i class="var">SF</i></a>)</code></pre></div>


<code><span class="name"><a href="#Name_is-sync-feature">is-sync-feature</a></span>(<i class="var">SY</i>, <i class="var">SF</i>)</code> tests whether <code><i class="var">SY</i></code> has the feature <code><i class="var">SF</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-sync-feature">is-sync-feature</span></span>(_:<span class="name"><a href="#Name_syncs">syncs</a></span>, _:<span class="name"><a href="#Name_sync-features">sync-features</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-sync-feature">is-sync-feature</a></span>(<span class="name"><a href="#Name_sync">sync</a></span>(<span id="Variable413_SFM"><i class="var">SFM</i></span>:<span class="name"><a href="#Name_sync-feature-maps">sync-feature-maps</a></span>), <span id="Variable427_SF"><i class="var">SF</i></span>:<span class="name"><a href="#Name_sync-features">sync-features</a></span>)
   ~> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable427_SF"><i class="var">SF</i></a>, <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span> <a href="#Variable413_SFM"><i class="var">SFM</i></a>)</code></pre></div>


#### Sync features

Combinations of the following features support various kinds of locks and
notifications.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_sync-features">sync-features</span></span> ::=
    <span id="Name_sync-waiting-list">sync-waiting-list</span> |  // allows suspending requests
    <span id="Name_sync-held">sync-held</span> |          // allows exclusive locks
    <span id="Name_sync-holder">sync-holder</span> |        // allows mutex ownership
    <span id="Name_sync-count">sync-count</span>           // allows reentrance, sharing, etc.</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_sync-feature-maps">sync-feature-maps</span></span> ~> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_sync-features">sync-features</a></span>, <span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>


A field for each feature is created independently:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sync-feature-create">sync-feature-create</span></span>(_:<span class="name"><a href="#Name_sync-features">sync-features</a></span>) : =><span class="name"><a href="#Name_sync-feature-maps">sync-feature-maps</a></span></code></pre></div>

<code><span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span></code> stores pending requests in the order of receipt, together
with the requesting thread-ids:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span> ~>
    { <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span> |-> 
       <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), [ ]) }</code></pre></div>


<code><span class="name"><a href="#Name_sync-held">sync-held</a></span></code> stores whether a lock is currently held:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="#Name_sync-held">sync-held</a></span> ~>
    { <span class="name"><a href="#Name_sync-held">sync-held</a></span> |-> 
       <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, <span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>) }</code></pre></div>


<code><span class="name"><a href="#Name_sync-holder">sync-holder</a></span></code> stores the current holder of a lock, if any:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="#Name_sync-holder">sync-holder</a></span> ~>
    { <span class="name"><a href="#Name_sync-holder">sync-holder</a></span> |->
       <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../Multithreading/index.html#Name_thread-ids">thread-ids</a></span>) }</code></pre></div>


<code><span class="name"><a href="#Name_sync-count">sync-count</a></span></code> stores a counter. Different kinds of locks and notifications use
the counter in different ways, e.g., shared locks use it for the number of
threads currently holding the lock:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sync-feature-create">sync-feature-create</a></span> <span class="name"><a href="#Name_sync-count">sync-count</a></span> ~>
    { <span class="name"><a href="#Name_sync-count">sync-count</a></span> |->
       <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>, 0) }</code></pre></div>



<code><span class="name"><a href="#Name_sync-waiting-list-add">sync-waiting-list-add</a></span>(<i class="var">SY</i>, <i class="var">V</i>)</code> adds <code><i class="var">V</i></code> to the waiting-list of <code><i class="var">SY</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sync-waiting-list-add">sync-waiting-list-add</span></span>(<span id="Variable795_SY"><i class="var">SY</i></span>:<span class="name"><a href="#Name_syncs">syncs</a></span>, <span id="Variable804_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<a href="#Variable795_SY"><i class="var">SY</i></a>, <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>), 
        <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-append">list-append</a></span>(<span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<a href="#Variable795_SY"><i class="var">SY</i></a>, <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>), [<a href="#Variable804_V"><i class="var">V</i></a>]))</code></pre></div>


<code><span class="name"><a href="#Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</a></span>(<i class="var">SY</i>)</code> removes the first value from the 
waiting-list of <code><i class="var">SY</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sync-waiting-list-head-remove">sync-waiting-list-head-remove</span></span>(<span id="Variable925_SY"><i class="var">SY</i></span>:<span class="name"><a href="#Name_syncs">syncs</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
   ~> <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
        <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-head">list-head</a></span> <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<a href="#Variable925_SY"><i class="var">SY</i></a>, <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>),
        <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<a href="#Variable925_SY"><i class="var">SY</i></a>, <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>),
            <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-tail">list-tail</a></span> <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="#Name_sync-feature">sync-feature</a></span>(<a href="#Variable925_SY"><i class="var">SY</i></a>, <span class="name"><a href="#Name_sync-waiting-list">sync-waiting-list</a></span>)),
          <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


Various kinds of locks and notifications are represented by sync feature maps,
together with funcons that (atomically) inspect and update them accordngly.



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
[Synchronising.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Synchronising.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads/Synchronising
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads/Synchronising
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Synchronising.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Synchronising/Synchronising.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
