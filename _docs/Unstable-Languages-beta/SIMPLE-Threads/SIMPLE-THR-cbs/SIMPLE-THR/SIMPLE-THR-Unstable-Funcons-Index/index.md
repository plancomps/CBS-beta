---
title: "SIMPLE-THR-Unstable-Funcons-Index"
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-Unstable-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

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
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>
]</code></pre></div>


### Memos
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_initialise-memos">initialise-memos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span>
]</code></pre></div>



## Abnormal computation

### Postponing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>
]</code></pre></div>


## Threads

### Multithreading
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span>
]</code></pre></div>


#### Activation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_multithread">multithread</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span>
]</code></pre></div>


#### Termination
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span>
]</code></pre></div>


### Thread synchronisation

#### Locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>  <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span>
]</code></pre></div>


##### Reentrant locks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-create">reentrant-lock-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-release">reentrant-lock-release</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-exit">reentrant-lock-exit</a></span>
]</code></pre></div>


#### Notifications

##### Rendezvous
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-create">rendezvous-create</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</a></span>
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
[SIMPLE-THR-Unstable-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
