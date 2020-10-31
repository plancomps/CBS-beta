---
layout: default
title: "References"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [References.cbs]
-----------------------------

### References and pointers

<div class="highlighter-rouge"><pre class="highlight"><code>[
 <i class="keyword">Datatype</i> <span class="name"><a href="#Name_references">references</a></span>
 <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_reference">reference</a></span>
 <i class="keyword">Type</i>     <span class="name"><a href="#Name_pointers">pointers</a></span>
 <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pointer-null">pointer-null</a></span>
 <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_dereference">dereference</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
 <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
 <span class="name"><span id="Name_references">references</span></span>(<span id="Variable48_T"><i class="var">T</i></span>) ::= <span id="Name_reference">reference</span>(_:<span id="Variable64_T"><i class="var">T</i></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
 <span class="name"><span id="Name_pointers">pointers</span></span>(<span id="Variable86_T"><i class="var">T</i></span>) ::= <span id="Name_pointer-null">pointer-null</span> | { _:<span class="name"><a href="#Name_references">references</a></span>(<a href="#Variable86_T"><i class="var">T</i></a>) }</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_dereference">dereference</span></span>(_:<span class="name"><a href="#Name_pointers">pointers</a></span>(<span id="Variable129_T"><i class="var">T</i></span>)) : =>(<span id="Variable149_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Rule</i>
 <span class="name"><a href="#Name_dereference">dereference</a></span>(<span class="name"><a href="#Name_reference">reference</a></span>(<span id="Variable166_V"><i class="var">V</i></span>:<i class="var">T</i>)) ~> <a href="#Variable166_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_dereference">dereference</a></span>(<span class="name"><a href="#Name_pointer-null">pointer-null</a></span>) ~> ( )</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[References.cbs]: References.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/References/References.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
