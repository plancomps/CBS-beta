---
title: "Maps"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Maps.cbs] \| [PRETTY] \| [PDF]


----
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
  <span class="name"><span id="Name_maps">maps</span></span>(<span id="Variable83_GT"><i class="var">GT</i></span>, <span id="Variable90_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>)</code> is the type of possibly-empty finite maps from values of 
  type <code><i class="var">GT</i></code> to optional values of type <code><i class="var">T<sup class="sup">?</sup></i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map">map</span></span>(_:(<span class="name"><a href="../Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable172_GT"><i class="var">GT</i></span>, <span id="Variable178_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =>(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable207_GT"><i class="var">GT</i></span>, <span id="Variable213_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">?</sup></code></pre></div>
 
  <code><span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_1, V_1?), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_n, V_n?))</code> constructs a map from 
  <code>K_1</code> to <code>V_1?</code>, ..., <code>K_n</code> to <code>V_n?</code>, provided that <code>K_1</code>, ..., <code>K_n</code>
  are distinct, otherwise the result is <code>( )</code>.
  
  Note that <code><span class="name"><a href="#Name_map">map</a></span>(...)</code> is not a constructor operation.
  
  The built-in notation <code>{K_1|->V_1?, ..., K_n|->V_n?}</code> is equivalent to 
  <code><span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_1, V_1?), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_n, V_n?))</code>. Note however that in general, 
  maps cannot be identified with sets of tuples, since the values <code>V_i?</code> are 
  not restricted to <code><span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span></code>.
  
  When <code><i class="var">T<sup class="sup">?</sup></i> <: <span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>, <code><span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>) <: <span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>. The type <code><i class="var">MT</i>:<span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <i class="var">T<sup class="sup">?</sup></i>)</code>
  represents the set of value-maps <code><i class="var">MV</i>:<span class="name"><a href="#Name_maps">maps</a></span>(<i class="var">GT</i>, <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)</code> such that 
  <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MV</i>)</code> is a subset of <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MT</i>)</code> and for all <code><i class="var">K</i></code> in <code><span class="name"><a href="#Name_dom">dom</a></span>(<i class="var">MV</i>)</code>, 
  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">MV</i>, <i class="var">K</i>) : <span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">MT</i>, <i class="var">K</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-elements">map-elements</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable777_GT"><i class="var">GT</i></span>, <span id="Variable783_T?"><i class="var">T<sup class="sup">?</sup></i></span>)) : =>(<span class="name"><a href="../Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable805_GT"><i class="var">GT</i></span>, <span id="Variable811_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup></code></pre></div>

  The sequence of tuples <code>(<span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_1, V_1?), ..., <span class="name"><a href="../Tuples/index.html#Name_tuple">tuple</a></span>(K_n, V_n?))</code> given by
  <code><span class="name"><a href="#Name_map-elements">map-elements</a></span>(<i class="var">M</i>)</code> contains each mapped value <code>K_i</code> just once. The order of
  the elements is unspecified, and may vary between maps.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_map">map</a></span>(<span class="name"><a href="#Name_map-elements">map-elements</a></span>(<i class="var">M</i>)) == <i class="var">M</i></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-lookup">map-lookup</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable965_GT"><i class="var">GT</i></span>, <span id="Variable971_T?"><i class="var">T<sup class="sup">?</sup></i></span>), <span id="Variable986_K"><i class="var">K</i></span>:<span id="Variable990_GT"><i class="var">GT</i></span>) : =>(<span id="Variable1006_T?"><i class="var">T<sup class="sup">?</sup></i></span>)<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_lookup">lookup</span></span> = <span class="name"><a href="#Name_map-lookup">map-lookup</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">M</i>,<i class="var">K</i>)</code> gives the optional value to which <code><i class="var">K</i></code> is mapped by <code><i class="var">M</i></code>,
  if any, and otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-domain">map-domain</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1100_GT"><i class="var">GT</i></span>, <span id="Variable1106_T?"><i class="var">T<sup class="sup">?</sup></i></span>)) : =><span class="name"><a href="../Sets/index.html#Name_sets">sets</a></span>(<span id="Variable1128_GT"><i class="var">GT</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_dom">dom</span></span> = <span class="name"><a href="#Name_map-domain">map-domain</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>)</code> gives the set of values mapped by <code><i class="var">M</i></code>.
  
  <code><span class="name"><a href="#Name_map-lookup">map-lookup</a></span>(<i class="var">M</i>, <i class="var">K</i>)</code> is always <code>( )</code> when <code><i class="var">K</i></code> is not in <code><span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-override">map-override</span></span>(_:(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1261_GT"><i class="var">GT</i></span>, <span id="Variable1267_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1296_GT"><i class="var">GT</i></span>,<span id="Variable1302_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_map-override">map-override</a></span>(...)</code> takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the first map in the sequence in whose domain 
  it occurs
  . 
  When the domains of the <code><i class="var">M<sup class="sup">*</sup></i></code> are disjoint, <code><span class="name"><a href="#Name_map-override">map-override</a></span>(<i class="var">M<sup class="sup">*</sup></i>)</code> is equivalent
  to <code><span class="name"><a href="#Name_map-unite">map-unite</a></span>(<i class="var">M<sup class="sup">*</sup></i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-unite">map-unite</span></span>(_:(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1403_GT"><i class="var">GT</i></span>, <span id="Variable1409_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">*</sup>) : =>(<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1438_GT"><i class="var">GT</i></span>, <span id="Variable1444_T?"><i class="var">T<sup class="sup">?</sup></i></span>))<sup class="sup">?</sup></code></pre></div>

  <code><span class="name"><a href="#Name_map-unite">map-unite</a></span>(...)</code> takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the map in the sequence in whose domain it occurs,
  provided that those domains are disjoint - otherwise the result is <code>( )</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_map-delete">map-delete</span></span>(_:<span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1508_GT"><i class="var">GT</i></span>, <span id="Variable1514_T?"><i class="var">T<sup class="sup">?</sup></i></span>), _:<span class="name"><a href="../Sets/index.html#Name_sets">sets</a></span>(<span id="Variable1533_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="#Name_maps">maps</a></span>(<span id="Variable1555_GT"><i class="var">GT</i></span>, <span id="Variable1561_T?"><i class="var">T<sup class="sup">?</sup></i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_map-delete">map-delete</a></span>(<i class="var">M</i>, <i class="var">S</i>)</code> takes a map <code><i class="var">M</i></code> and a set of values <code><i class="var">S</i></code>, and returns the
  map obtained from <code><i class="var">M</i></code> by removing <code><i class="var">S</i></code> from its domain. 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_map-domain">map-domain</a></span>(<span class="name"><a href="#Name_map-delete">map-delete</a></span>(<i class="var">M</i>, <i class="var">S</i>)) == <span class="name"><a href="../Sets/index.html#Name_set-difference">set-difference</a></span>(<span class="name"><a href="#Name_map-domain">map-domain</a></span>(<i class="var">M</i>), <i class="var">S</i>)</code></pre></div>



[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta
  "CBS-BETA"
[Maps.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Maps/Maps.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Maps
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Maps
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Maps/Maps.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Maps/Maps.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
