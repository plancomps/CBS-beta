---
layout: default
title: "Datatypes"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Datatypes.cbs]
-----------------------------

### Datatypes

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_datatype-values">datatype-values</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_datatype-value">datatype-value</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_datatype-value-id">datatype-value-id</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_datatype-value-elements">datatype-value-elements</a></span>
]</code></pre></div>



  A datatype value consists of an identifier and a sequence of values.

  'Datatype T ::= ...' declares the type <code><i class="var">T</i></code> to refer to a fresh value
  constructor in <code><span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>, and asserts <code><i class="var">T</i> <: <span class="name"><a href="#Name_datatype-values">datatype-values</a></span></code>. 
  
  Each constructor funcon 'F(_:T1,...,_:Tn)' of the datatype declaration
  generates values in <code><i class="var">T</i></code> of the form <code><span class="name"><a href="#Name_datatype-value">datatype-value</a></span>("F", <i class="var">V<sub class="sub">1</sub></i>, ..., <i class="var">Vn</i>)</code> from
  <code><i class="var">V<sub class="sub">1</sub></i>:<i class="var">T<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Vn</i>:<i class="var">Tn</i></code>.
  
  Note that a computation <code><i class="var">X</i></code> cannot be directly included in datatype values:
  it is necessary to encapsulate it in <code><span class="name"><a href="../../Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<i class="var">X</i>)</code>.
  
  'Datatype T', followed by declarations of constructor funcons for 'T',
  allows specification of GADTs.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_datatype-values">datatype-values</span></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_datatype-value">datatype-value</span></span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : <span class="name"><a href="#Name_datatype-values">datatype-values</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_datatype-value-id">datatype-value-id</span></span>(_:<span class="name"><a href="#Name_datatype-values">datatype-values</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_datatype-value-id">datatype-value-id</a></span>(<span class="name"><a href="#Name_datatype-value">datatype-value</a></span>(<span id="Variable250_I"><i class="var">I</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _*:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)) ~> <a href="#Variable250_I"><i class="var">I</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_datatype-value-elements">datatype-value-elements</span></span>(_:<span class="name"><a href="#Name_datatype-values">datatype-values</a></span>) : =><span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_datatype-value-elements">datatype-value-elements</a></span>(<span class="name"><a href="#Name_datatype-value">datatype-value</a></span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable321_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)) ~> <a href="#Variable321_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Datatypes.cbs]: Datatypes.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Datatypes/Datatypes.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
