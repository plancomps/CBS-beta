---
layout: default
title: Test
parent: Computations
grand_parent: Funcons-beta
nav_exclude: false

---

[Funcons-beta] : [Test.cbs]
-----------------------------

### Test

#### Test Output

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_test-standard-out">test-standard-out</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_test-print">test-print</a></span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name"><span id="Name_test-standard-out">test-standard-out</span></span>!(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>*) -> _</code></pre></div>


  This entity represents the sequence of values output by a particular
  transition, where the empty sequence <code>( )</code> represents the lack of output.
  Composition of transitions concatenates their output sequences.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_test-print">test-print</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>*) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_test-print">test-print</a></span>(<i class="var">X*</i>)</code> evaluates the arguments <code><i class="var">X*</i></code> and emits the resulting sequence of
  values on the standard-out channel. <code><span class="name"><a href="#Name_test-print">test-print</a></span>( )</code> has no effect.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_test-print">test-print</a></span>(<span id="Variable137_V*"><i class="var">V*</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>*) -- <span class="ent-name"><a href="#Name_test-standard-out">test-standard-out</a></span>!(<a href="#Variable137_V*"><i class="var">V*</i></a>) -> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>



#### Test Input

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_test-standard-in">test-standard-in</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_test-read">test-read</a></span>
]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name"><span id="Name_test-standard-in">test-standard-in</span></span>?(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>*) -> _</code></pre></div>


  This entity represents the sequence of values input by a particular
  transition, where the empty sequence <code>( )</code> represents that no values are
  input. The value <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code> represents the end of the input.

  Composition of transitions concatenates their input sequences, except that
  when the first sequence ends with <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>, the second seqeunce has to be
  just <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_test-read">test-read</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_test-read">test-read</a></span></code> inputs a single value from the standard-in channel, and returns it.
  If the end of the input has been reached, <code><span class="name"><a href="#Name_test-read">test-read</a></span></code> fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_test-read">test-read</a></span> -- <span class="ent-name"><a href="#Name_test-standard-in">test-standard-in</a></span>?(<span id="Variable309_V"><i class="var">V</i></span>:~<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) -> <a href="#Variable309_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_test-read">test-read</a></span> -- <span class="ent-name"><a href="#Name_test-standard-in">test-standard-in</a></span>?(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) -> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Funcons-beta]: ../../../Funcons-Index "FUNCONS-BETA INDEX"
[Test.cbs]: Test.cbs "CBS SOURCE FILE"
[PLanCompS Project]: http://plancomps.org "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Test/Test.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
