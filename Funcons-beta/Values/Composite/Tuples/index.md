---
layout: default
title: "Tuples"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Tuples.cbs]
-----------------------------

### Tuples

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_tuples">tuples</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_tuple-elements">tuple-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="PartVariable_T2"><i class="var">T<sub class="sub">2</sub></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>
  <span id="PartVariable_T1+"><i class="var">T<sub class="sub">1</sub><sup class="sup">+</sup></i></span>, <span id="PartVariable_T2+"><i class="var">T<sub class="sub">2</sub><sup class="sup">+</sup></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">+</sup>
  <span id="PartVariable_T*"><i class="var">T<sup class="sup">*</sup></i></span>, <span id="PartVariable_T1*"><i class="var">T<sub class="sub">1</sub><sup class="sup">*</sup></i></span>, <span id="PartVariable_T2*"><i class="var">T<sub class="sub">2</sub><sup class="sup">*</sup></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i> 
  <span class="name"><span id="Name_tuples">tuples</span></span>(<span id="Variable98_T*"><i class="var">T<sup class="sup">*</sup></i></span>) ::= <span id="Name_tuple">tuple</span>(_:<span id="Variable115_T*"><i class="var">T<sup class="sup">*</sup></i></span>)</code></pre></div>
 

  <code><i class="var">T<sup class="sup">*</sup></i></code> can be any sequence of types, including <code>( )</code> and <code><span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup></code>.
  
  The values of type <code><span class="name"><a href="#Name_tuples">tuples</a></span>(<i class="var">T<sub class="sub">1</sub></i>, ..., <i class="var">Tn</i>)</code> are of the form <code><span class="name"><a href="#Name_tuple">tuple</a></span>(<i class="var">V<sub class="sub">1</sub></i>, ..., <i class="var">Vn</i>)</code>
  with <code><i class="var">V<sub class="sub">1</sub></i>:<i class="var">T<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Vn</i>:<i class="var">Tn</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tuple-elements">tuple-elements</span></span>(_:<span class="name"><a href="#Name_tuples">tuples</a></span>(<span id="Variable287_T*"><i class="var">T<sup class="sup">*</sup></i></span>)) : =>(<span id="Variable308_T*"><i class="var">T<sup class="sup">*</sup></i></span>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tuple-elements">tuple-elements</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>(<span id="Variable324_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<i class="var">T<sup class="sup">*</sup></i>)) ~> <a href="#Variable324_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tuple-zip">tuple-zip</span></span>(_:<span class="name"><a href="#Name_tuples">tuples</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>), _:<span class="name"><a href="#Name_tuples">tuples</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)) : =>(<span class="name"><a href="#Name_tuples">tuples</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>,<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>))<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<i class="var">TV<sub class="sub">1</sub></i>, <i class="var">TV<sub class="sub">2</sub></i>)</code> takes two tuples, and returns the sequence of pairs of
  their elements, provided that they have the same length. If they have
  different lengths, the last elements of the longer sequence are ignored.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>(<span id="Variable458_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<i class="var">T<sub class="sub">1</sub></i>, <span id="Variable472_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:<i class="var">T<sub class="sub">1</sub><sup class="sup">*</sup></i>), <span class="name"><a href="#Name_tuple">tuple</a></span>(<span id="Variable494_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<i class="var">T<sub class="sub">2</sub></i>, <span id="Variable508_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:<i class="var">T<sub class="sub">2</sub><sup class="sup">*</sup></i>))
   ~> (<span class="name"><a href="#Name_tuple">tuple</a></span>(<a href="#Variable458_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable494_V2"><i class="var">V<sub class="sub">2</sub></i></a>), <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>(<a href="#Variable472_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>), <span class="name"><a href="#Name_tuple">tuple</a></span>(<a href="#Variable508_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>( ), <span class="name"><a href="#Name_tuple">tuple</a></span>( )) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>(<span id="Variable631_V1+"><i class="var">V<sub class="sub">1</sub><sup class="sup">+</sup></i></span>:<i class="var">T<sub class="sub">1</sub><sup class="sup">+</sup></i>), <span class="name"><a href="#Name_tuple">tuple</a></span>( )) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="#Name_tuple">tuple</a></span>( ), <span class="name"><a href="#Name_tuple">tuple</a></span>(<span id="Variable680_V2+"><i class="var">V<sub class="sub">2</sub><sup class="sup">+</sup></i></span>:<i class="var">T<sub class="sub">2</sub><sup class="sup">+</sup></i>)) ~> ( )</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Tuples.cbs]: Tuples.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Tuples/Tuples.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
