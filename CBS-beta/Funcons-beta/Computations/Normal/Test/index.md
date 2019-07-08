---
layout: default
title: Test
parent: Computations
grand_parent: Funcons-beta
nav_exclude: true

---

[Funcons-beta] : [Test.cbs]
-----------------------------

### Test

#### Test Output

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name">test-standard-out</span>
  <i class="keyword">Funcon</i> <span class="name">test-print</span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name">test-standard-out</span>!(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -> _</code></pre></div>


  This entity represents the sequence of values output by a particular
  transition, where the empty sequence <code>( )</code> represents the lack of output.
  Composition of transitions concatenates their output sequences.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name">test-print</span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name">null-type</span></code></pre></div>

  <code><span class="name">test-print</span>(<i class="var">X<sup class="sup">*</sup></i>)</code> evaluates the arguments <code><i class="var">X<sup class="sup">*</sup></i></code> and emits the resulting sequence of
  values on the standard-out channel. <code><span class="name">test-print</span>( )</code> has no effect.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name">test-print</span>(<i class="var">V<sup class="sup">*</sup></i>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -- <span class="ent-name">test-standard-out</span>!(<i class="var">V<sup class="sup">*</sup></i>) -> <span class="name">null-value</span></code></pre></div>



#### Test Input

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name">test-standard-in</span>
  <i class="keyword">Funcon</i> <span class="name">test-read</span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name">test-standard-in</span>?(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -> _</code></pre></div>


  This entity represents the sequence of values input by a particular
  transition, where the empty sequence <code>( )</code> represents that no values are
  input. The value <code><span class="name">null-value</span></code> represents the end of the input.

  Composition of transitions concatenates their input sequences, except that
  when the first sequence ends with <code><span class="name">null-value</span></code>, the second seqeunce has to be
  just <code><span class="name">null-value</span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name">test-read</span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name">test-read</span></code> inputs a single value from the standard-in channel, and returns it.
  If the end of the input has been reached, <code><span class="name">test-read</span></code> fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name">test-read</span> -- <span class="ent-name">test-standard-in</span>?(<span id="Variable309_V"><i class="var">V</i></span>:~<span class="name">null-type</span>) -> <a href="#Variable309_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name">test-read</span> -- <span class="ent-name">test-standard-in</span>?(<span class="name">null-value</span>) -> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Funcons-beta]: ../../../Funcons-Index "FUNCONS-BETA INDEX"
[Test.cbs]: Test.cbs "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/Funcons-beta "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/Unstable-Funcons-beta "FUNCONS-BETA"
[Languages-beta]: /CBS-beta/Languages-beta "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/Unstable-Languages-beta "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: http://plancomps.org "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Test/Test.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
