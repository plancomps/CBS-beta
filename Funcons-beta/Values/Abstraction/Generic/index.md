---
layout: default
title: "Generic"
parent: Abstraction
ancestor: Funcons-beta

---

[Funcons-beta] : [Generic.cbs]
-----------------------------

### Generic abstractions

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_abstractions">abstractions</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_abstraction">abstraction</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_closure">closure</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_enact">enact</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>
  <span id="PartVariable_T?"><i class="var">T<sup class="sup">?</sup></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_abstractions">abstractions</span></span>(_:<span class="name"><a href="../../../Computations/Computation-Types/index.html#Name_computation-types">computation-types</a></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_abstraction">abstraction</span></span>(_:<span id="Variable80_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable86_T"><i class="var">T</i></span>) : <span class="name"><a href="#Name_abstractions">abstractions</a></span>(<span id="Variable102_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable108_T"><i class="var">T</i></span>)</code></pre></div>

  The funcon <code><span class="name"><a href="#Name_abstraction">abstraction</a></span>(<i class="var">X</i>)</code> forms abstraction values from computations.
  
  References to bindings of identifiers in <code><i class="var">X</i></code> are dynamic.
  The funcon <code><span class="name"><a href="#Name_closure">closure</a></span>(<i class="var">X</i>)</code> forms abstractions with static bindings.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_closure">closure</span></span>(_:<span id="Variable186_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable192_T"><i class="var">T</i></span>) : =><span class="name"><a href="#Name_abstractions">abstractions</a></span>(<span id="Variable209_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable215_T"><i class="var">T</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_closure">closure</a></span>(<i class="var">X</i>)</code> computes a closed abstraction from the computation <code><i class="var">X</i></code>.
  In contrast to <code><span class="name"><a href="#Name_abstraction">abstraction</a></span>(<i class="var">X</i>)</code>, references to bindings of identifiers
  in <code><i class="var">X</i></code> are static. Moreover, <code><span class="name"><a href="#Name_closure">closure</a></span>(<i class="var">X</i>)</code> is not a value constructor,
  so it cannot be used in pattern terms in rules.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="../../../Computations/Normal/Binding/index.html#Name_environment">environment</a></span>(<span id="Variable323_Rho"><i class="var">Rho</i></span>) |- <span class="name"><a href="#Name_closure">closure</a></span>(<span id="Variable340_X"><i class="var">X</i></span>) ---> <span class="name"><a href="#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_closed">closed</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<a href="#Variable323_Rho"><i class="var">Rho</i></a>, <a href="#Variable340_X"><i class="var">X</i></a>)))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_enact">enact</span></span>(_:<span class="name"><a href="#Name_abstractions">abstractions</a></span>(<span id="Variable396_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable402_T"><i class="var">T</i></span>)) : <span id="Variable423_T?"><i class="var">T<sup class="sup">?</sup></i></span>=><span id="Variable429_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_enact">enact</a></span>(<i class="var">A</i>)</code> executes the computation of the abstraction <code><i class="var">A</i></code>,
  with access to all the current entities.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_enact">enact</a></span>(<span class="name"><a href="#Name_abstraction">abstraction</a></span>(<span id="Variable478_X"><i class="var">X</i></span>)) ~> <a href="#Variable478_X"><i class="var">X</i></a></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Generic.cbs]: Generic.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Generic/Generic.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
