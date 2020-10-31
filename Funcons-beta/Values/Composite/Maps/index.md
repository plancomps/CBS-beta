---
layout: default
title: "Maps"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Maps.cbs]
-----------------------------

### Maps

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_maps">maps</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map">map</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-elements">map-elements</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-lookup">map-lookup</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="#Name_lookup">lookup</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-domain">map-domain</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="#Name_dom">dom</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-override">map-override</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-unite">map-unite</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_map-delete">map-delete</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_GT"><i class="var">GT</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span>
  <span id="PartVariable_T?"><i class="var">T<sup class="sup">?</sup></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_maps">maps</span></span>(<span id="Variable82_GT"><i class="var">GT</i></span>, <span id="Variable89_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>)</code> is the type of possibly-empty finite maps from values of 
  type <code><i class="var">GT</i></code> to optional values of type <code><i class="var">T<sup class="sup">?</sup></i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map">map</span></span>(_:(<span class="name"><a href="../Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable171_GT"><i class="var">GT</i></span>, <span id="Variable177_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =>(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable206_GT"><i class="var">GT</i></span>, <span id="Variable212_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">?</sup></code></pre></div>
 
  <code><span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">K<sub class="sub">1</sub></i>, <i class="var">V<sub class="sub">1</sub><sup class="sup">?</sup></i>), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">Kn</i>, <i class="var">Vn<sup class="sup">?</sup></i>))</code> constructs a map from 
  <code><i class="var">K<sub class="sub">1</sub></i></code> to <code><i class="var">V<sub class="sub">1</sub><sup class="sup">?</sup></i></code>, ..., <code><i class="var">Kn</i></code> to <code><i class="var">Vn<sup class="sup">?</sup></i></code>, provided that <code><i class="var">K<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Kn</i></code>
  are distinct, otherwise the result is <code>( )</code>.
  
  Note that <code><span class="name"><a href="#Name_map">map</a></span>(...)</code> is not a constructor operation.
  
  The built-in notation <code>{<i class="var">K<sub class="sub">1</sub></i>|-><i class="var">V<sub class="sub">1</sub><sup class="sup">?</sup></i>, ..., <i class="var">Kn</i>|-><i class="var">Vn<sup class="sup">?</sup></i>}</code> is equivalent to 
  <code><span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">K<sub class="sub">1</sub></i>, <i class="var">V<sub class="sub">1</sub><sup class="sup">?</sup></i>), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">Kn</i>, <i class="var">Vn<sup class="sup">?</sup></i>))</code>. Note however that in general, 
  maps cannot be identified with sets of tuples, since the values <code><i class="var">Vi<sup class="sup">?</sup></i></code> are 
  not restricted to <code><span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span></code>.
  
  When <code><i class="var">T<sup class="sup">?</sup></i> <: <span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>, <code><span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>) <: <span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>. The type <code><i class="var">MT</i>:<span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>)</code>
  represents the set of value-maps <code><i class="var">MV</i>:<span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)</code> such that 
  <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MV</i>)</code> is a subset of <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MT</i>)</code> and for all <code><i class="var">K</i></code> in <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MV</i>)</code>, 
  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">MV</i>, <i class="var">K</i>) : <span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">MT</i>, <i class="var">K</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-elements">map-elements</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable766_GT"><i class="var">GT</i></span>, <span id="Variable772_T?"><i class="var">T<sup class="sup">?</sup></i></span>)) : =>(<span class="name"><a href="../Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable794_GT"><i class="var">GT</i></span>, <span id="Variable800_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup></code></pre></div>

  The sequence of tuples <code>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">K<sub class="sub">1</sub></i>, <i class="var">V<sub class="sub">1</sub><sup class="sup">?</sup></i>), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(<i class="var">Kn</i>, <i class="var">Vn<sup class="sup">?</sup></i>))</code> given by
  <code><span class="name"><a href="#Name_map-elements">map-elements</a></span>(<i class="var">M</i>)</code> contains each mapped value <code><i class="var">Ki</i></code> just once. The order of
  the elements is unspecified, and may vary between maps.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="#Name_map-elements">map-elements</a></span>(<i class="var">M</i>)) == <i class="var">M</i></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-lookup">map-lookup</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable951_GT"><i class="var">GT</i></span>, <span id="Variable957_T?"><i class="var">T<sup class="sup">?</sup></i></span>), <span id="Variable972_K"><i class="var">K</i></span>:<span id="Variable976_GT"><i class="var">GT</i></span>) : =>(<span id="Variable992_T?"><i class="var">T<sup class="sup">?</sup></i></span>)<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_lookup">lookup</span></span> = <span class="name"><a href="#Name_map-lookup">map-lookup</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">M</i>,<i class="var">K</i>)</code> gives the optional value to which <code><i class="var">K</i></code> is mapped by <code><i class="var">M</i></code>,
  if any, and otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-domain">map-domain</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1086_GT"><i class="var">GT</i></span>, <span id="Variable1092_T?"><i class="var">T<sup class="sup">?</sup></i></span>)) : =><span class="name"><a href="../Sets/index.html#Name_sets">sets</a></span>(<span id="Variable1114_GT"><i class="var">GT</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_dom">dom</span></span> = <span class="name"><a href="#Name_map-domain">map-domain</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>)</code> gives the set of values mapped by <code><i class="var">M</i></code>.
  
  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">M</i>, <i class="var">K</i>)</code> is always <code>( )</code> when <code><i class="var">K</i></code> is not in <code><span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-override">map-override</span></span>(_:(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1247_GT"><i class="var">GT</i></span>, <span id="Variable1253_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1282_GT"><i class="var">GT</i></span>,<span id="Variable1288_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_map-override">map-override</a></span>(...)</code> takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the first map in the sequence in whose domain 
  it occurs
  . 
  When the domains of the <code><i class="var">M<sup class="sup">*</sup></i></code> are disjoint, <code><span class="name"><a href="#Name_map-override">map-override</a></span>(<i class="var">M<sup class="sup">*</sup></i>)</code> is equivalent
  to <code><span class="name"><a href="#Name_map-unite">map-unite</a></span>(<i class="var">M<sup class="sup">*</sup></i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-unite">map-unite</span></span>(_:(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1389_GT"><i class="var">GT</i></span>, <span id="Variable1395_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =>(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1424_GT"><i class="var">GT</i></span>, <span id="Variable1430_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">?</sup></code></pre></div>

  <code><span class="name"><a href="#Name_map-unite">map-unite</a></span>(...)</code> takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the map in the sequence in whose domain it occurs,
  provided that those domains are disjoint - otherwise the result is <code>( )</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-delete">map-delete</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1494_GT"><i class="var">GT</i></span>, <span id="Variable1500_T?"><i class="var">T<sup class="sup">?</sup></i></span>), _:<span class="name"><a href="../Sets/index.html#Name_sets">sets</a></span>(<span id="Variable1519_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1541_GT"><i class="var">GT</i></span>, <span id="Variable1547_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_map-delete">map-delete</a></span>(<i class="var">M</i>, <i class="var">S</i>)</code> takes a map <code><i class="var">M</i></code> and a set of values <code><i class="var">S</i></code>, and returns the
  map obtained from <code><i class="var">M</i></code> by removing <code><i class="var">S</i></code> from its domain. 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_map-domain">map-domain</a></span>(<span class="name"><a href="#Name_map-delete">map-delete</a></span>(<i class="var">M</i>, <i class="var">S</i>)) == <span class="name"><a href="../Sets/index.html#Name_set-difference">set-difference</a></span>(<span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>), <i class="var">S</i>)</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Maps.cbs]: Maps.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Maps/Maps.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
