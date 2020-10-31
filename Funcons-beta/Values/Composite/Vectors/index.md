---
layout: default
title: "Vectors"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Vectors.cbs]
-----------------------------

### Vectors

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_vectors">vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_vector">vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_vector-elements">vector-elements</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_vectors">vectors</span></span>(<span id="Variable40_T"><i class="var">T</i></span>) ::= <span id="Name_vector">vector</span>(_:(<span id="Variable56_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_vector-elements">vector-elements</span></span>(_:<span class="name"><a href="#Name_vectors">vectors</a></span>(<span id="Variable88_T"><i class="var">T</i></span>)) : =>(<span id="Variable108_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_vector">vector</a></span>(<span id="Variable126_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)) ~> <a href="#Variable126_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Vectors.cbs]: Vectors.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Vectors/Vectors.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
