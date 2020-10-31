---
layout: default
title: "Variants"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Variants.cbs]
-----------------------------

### Variants

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_variants">variants</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_variant">variant</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_variant-id">variant-id</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_variant-value">variant-value</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_variants">variants</span></span>(<span id="Variable44_T"><i class="var">T</i></span>) ::= <span id="Name_variant">variant</span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span id="Variable68_T"><i class="var">T</i></span>)</code></pre></div>


  A value of type <code><span class="name"><a href="#Name_variants">variants</a></span>(<i class="var">T</i>)</code> is a pair formed from an identifier and 
  a value of type <code><i class="var">T</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_variant-id">variant-id</span></span>(_:<span class="name"><a href="#Name_variants">variants</a></span>(<span id="Variable133_T"><i class="var">T</i></span>)) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_variant-id">variant-id</a></span>(<span class="name"><a href="#Name_variant">variant</a></span>(<span id="Variable160_I"><i class="var">I</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<i class="var">T</i>)) ~> <a href="#Variable160_I"><i class="var">I</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_variant-value">variant-value</span></span>(_:<span class="name"><a href="#Name_variants">variants</a></span>(<span id="Variable204_T"><i class="var">T</i></span>)) : =><span id="Variable224_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_variant-value">variant-value</a></span>(<span class="name"><a href="#Name_variant">variant</a></span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable241_V"><i class="var">V</i></span>:<i class="var">T</i>)) ~> <a href="#Variable241_V"><i class="var">V</i></a></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Variants.cbs]: Variants.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Variants/Variants.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
