---
layout: default
title: "Records"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Records.cbs]
-----------------------------

### Records

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_records">records</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_record">record</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_record-map">record-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_record-select">record-select</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_records">records</span></span>(<span id="Variable44_T"><i class="var">T</i></span>) ::= <span id="Name_record">record</span>(_:<span class="name"><a href="../Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>,<span id="Variable63_T"><i class="var">T</i></span>))</code></pre></div>


  A value of type <code><span class="name"><a href="#Name_records">records</a></span>(<i class="var">T</i>)</code> contains a map from identifiers to values of
  type <code><i class="var">T</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_record-map">record-map</span></span>(_:<span class="name"><a href="#Name_records">records</a></span>(<span id="Variable134_T"><i class="var">T</i></span>)) : =><span class="name"><a href="../Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>,<span id="Variable157_T"><i class="var">T</i></span>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_record-map">record-map</a></span>(<span class="name"><a href="#Name_record">record</a></span>(<span id="Variable174_M"><i class="var">M</i></span>:<span class="name"><a href="../Maps/index.html#Name_maps">maps</a></span>(_,_))) ~> <a href="#Variable174_M"><i class="var">M</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_record-select">record-select</span></span>(<span id="Variable217_R"><i class="var">R</i></span>:<span class="name"><a href="#Name_records">records</a></span>(<span id="Variable222_T"><i class="var">T</i></span>), <span id="Variable236_I"><i class="var">I</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span id="Variable253_T?"><i class="var">T<sup class="sup">?</sup></i></span>
   ~> <span class="name"><a href="../Maps/index.html#Name_map-lookup">map-lookup</a></span>(<span class="name"><a href="#Name_record-map">record-map</a></span>(<a href="#Variable217_R"><i class="var">R</i></a>), <a href="#Variable236_I"><i class="var">I</i></a>)</code></pre></div>

  

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Records.cbs]: Records.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Records/Records.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
