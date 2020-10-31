---
layout: default
title: "Indexing"
parent: Normal
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Indexing.cbs]
-----------------------------

### Value indexing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_value-index">value-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-index">initialise-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_allocate-index">allocate-index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_lookup-index">lookup-index</a></span>
]</code></pre></div>


The following funcons support indexing of values by natural numbers.
They could be enhanced to ensure that each value has at most one index,
and to allow finding the index of a value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_value-index">value-index</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span><sup class="sup">*</sup>) > --->
  < _ , <span class="ent-name">value-index</span>(_:<span class="name">ground-values</span><sup class="sup">*</sup>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-index">initialise-index</span></span> : =><span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_initialise-index">initialise-index</a></span>, <span class="ent-name"><a href="#Name_value-index">value-index</a></span>(_) > ---> < <span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="ent-name"><a href="#Name_value-index">value-index</a></span>( ) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_allocate-index">allocate-index</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_allocate-index">allocate-index</a></span>(<span id="Variable122_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="ent-name"><a href="#Name_value-index">value-index</a></span>(<span id="Variable138_V*"><i class="var">V<sup class="sup">*</sup></i></span>) > --->
  < <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<a href="#Variable138_V*"><i class="var">V<sup class="sup">*</sup></i></a>, <a href="#Variable122_V"><i class="var">V</i></a>), <span class="ent-name"><a href="#Name_value-index">value-index</a></span>(<a href="#Variable138_V*"><i class="var">V<sup class="sup">*</sup></i></a>, <a href="#Variable122_V"><i class="var">V</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_lookup-index">lookup-index</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_lookup-index">lookup-index</a></span>(<span id="Variable222_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>), <span class="ent-name"><a href="#Name_value-index">value-index</a></span>(<span id="Variable238_V*"><i class="var">V<sup class="sup">*</sup></i></span>) > --->
  < <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<a href="#Variable222_N"><i class="var">N</i></a>, <a href="#Variable238_V*"><i class="var">V<sup class="sup">*</sup></i></a>), <span class="ent-name"><a href="#Name_value-index">value-index</a></span>(<a href="#Variable238_V*"><i class="var">V<sup class="sup">*</sup></i></a>) >
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_lookup-index">lookup-index</a></span>(<span class="name"><a href="#Name_allocate-index">allocate-index</a></span>(<a href="#Variable320_V"><i class="var">V</i></a>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)) ---> <span id="Variable320_V"><i class="var">V</i></span></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Indexing.cbs]: Indexing.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Indexing/Indexing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
