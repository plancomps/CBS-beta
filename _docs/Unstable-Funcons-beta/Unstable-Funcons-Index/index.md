---
title: "Unstable-Funcons-Index"
parent: Unstable-Funcons-beta


---

[Unstable-Funcons-beta] : [Unstable-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----

Unstable Funcons, for use only in Unstable Languages


# Computations

## Normal computation

### Value indexing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Indexing/index.html#Name_value-index">value-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Indexing/index.html#Name_initialise-index">initialise-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>
]</code></pre></div>


### Memos
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Memos/index.html#Name_memo-map">memo-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Memos/index.html#Name_initialise-memos">initialise-memos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Memos/index.html#Name_initialise-memo-value">initialise-memo-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span>
]</code></pre></div>



## Abnormal computation

### Postponing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Abnormal/Postponing/index.html#Name_postponing">postponing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Postponing/index.html#Name_after-effect">after-effect</a></span>
]</code></pre></div>


## Threads

### Multithreading
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-ids">thread-ids</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_threads">threads</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-detached">thread-detached</a></span>
]</code></pre></div>


#### Initialisation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_initialise-multithreading">initialise-multithreading</a></span>
]</code></pre></div>


#### Activation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_multithread">multithread</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-detach">thread-detach</a></span>
]</code></pre></div>


#### Execution
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_current-thread">current-thread</a></span> 
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-yield">thread-yield</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-spin">thread-spin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-suspend">thread-suspend</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-resume">thread-resume</a></span>
]</code></pre></div>


#### Termination
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-terminate">thread-terminate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_is-thread-terminated">is-thread-terminated</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-value">thread-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-exterminate">thread-exterminate</a></span>
]</code></pre></div>


#### Scheduling
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_update-thread-stepping">update-thread-stepping</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_update-thread-schedule">update-thread-schedule</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_current-thread-schedule">current-thread-schedule</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_is-thread-preemptible">is-thread-preemptible</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-preemptible">thread-preemptible</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Multithreading/index.html#Name_thread-cooperative">thread-cooperative</a></span>
]</code></pre></div>


### Thread synchronisation

#### Syncs
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_syncs">syncs</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-create">sync-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-feature">sync-feature</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_is-sync-feature">is-sync-feature</a></span>
]</code></pre></div>


#### Sync features
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-features">sync-features</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-waiting-list">sync-waiting-list</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-held">sync-held</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-holder">sync-holder</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-count">sync-count</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/index.html#Name_sync-feature-create">sync-feature-create</a></span>
]</code></pre></div>

  
#### Locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
<i class="keyword">Funcon</i>  <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>
]</code></pre></div>


##### Spin locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_spin-lock-create">spin-lock-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_spin-lock-sync">spin-lock-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_spin-lock-release">spin-lock-release</a></span>
]</code></pre></div>


##### Exclusive locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_exclusive-lock-create">exclusive-lock-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_exclusive-lock-sync">exclusive-lock-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_exclusive-lock-sync-else-wait">exclusive-lock-sync-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_exclusive-lock-release">exclusive-lock-release</a></span>
]</code></pre></div>


##### Reentrant locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-create">reentrant-lock-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-sync">reentrant-lock-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-release">reentrant-lock-release</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-exit">reentrant-lock-exit</a></span>
]</code></pre></div>


##### Semaphores
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_semaphore-create">semaphore-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_semaphore-sync">semaphore-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_semaphore-sync-else-wait">semaphore-sync-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_semaphore-release">semaphore-release</a></span>
]</code></pre></div>


##### Shared-exclusive locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-create">rw-lock-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-sync-exclusive">rw-lock-sync-exclusive</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-sync-shared">rw-lock-sync-shared</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-sync-exclusive-else-wait">rw-lock-sync-exclusive-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-sync-shared-else-wait">rw-lock-sync-shared-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-release-exclusive">rw-lock-release-exclusive</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Locks/index.html#Name_rw-lock-release-shared">rw-lock-release-shared</a></span>
]</code></pre></div>


#### Notifications

##### Barriers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_barrier-create">barrier-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_barrier-sync">barrier-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_barrier-sync-else-wait">barrier-sync-else-wait</a></span>
]</code></pre></div>


##### Conditions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_condition-create">condition-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_condition-wait">condition-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_condition-wait-with-lock">condition-wait-with-lock</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_condition-notify-all">condition-notify-all</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_condition-notify-first">condition-notify-first</a></span>
]</code></pre></div>


##### Rendezvous
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-create">rendezvous-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-sync">rendezvous-sync</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</a></span>
]</code></pre></div>


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
[Unstable-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Unstable-Funcons-Index/Unstable-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Unstable-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Unstable-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Unstable-Funcons-Index/Unstable-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Funcons-Index/Unstable-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
