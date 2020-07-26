---
layout: default
title: "Threads"
parent: Unstable-Threads
# grand_parent: Unstable-Funcons-beta
nav_order: "Threads"
---

[Unstable-Funcons-beta] : [Threads.cbs]
-----------------------------

## Threads
<div class="highlighter-rouge"><pre class="highlight"><code>[
### Multithreading
### Synchronising
#### Locks
#### Notifications
]</code></pre></div>


The funcons for threads are tentative. They have not yet been rigorously
unit-tested, nor used significantly in language definitions.

The [multithreading] funcons involve multiple mutable entities, and are
generally specified by inference rules with premises involving the values of
those entities before and after a transition.

The [synchronising] funcons only involve the <code><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span></code> entity, and wrap
compound funcon terms in <code><span class="name"><a href="Multithreading/index.html#Name_thread-atomic">thread-atomic</a></span>(_)</code> to inhibit preemption.

Some of the unit tests are based on examples in an [IBM threads] guide.

[Multithreading]: Multithreading
  "Multithreading funcons"

[Synchronising]: Synchronising
  "Synchronising funcons"

[IBM threads]: https://www.ibm.com/support/knowledgecenter/ssw_aix_72/com.ibm.aix.genprogc/chapter12.htm
  "IBM Knowledge Centre"



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Threads.cbs]: Threads.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Computations/Threads/Threads.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
