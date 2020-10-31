---
layout: default
title: "Patterns"
parent: Abstraction
ancestor: Funcons-beta

---

[Funcons-beta] : [Patterns.cbs]
-----------------------------

### Patterns

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_patterns">patterns</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern">pattern</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern-any">pattern-any</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern-bind">pattern-bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern-type">pattern-type</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern-else">pattern-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_pattern-unite">pattern-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_match">match</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_case-match">case-match</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_case-match-loosely">case-match-loosely</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_case-variant-value">case-variant-value</a></span>
]</code></pre></div>



  General patterns are simple patterns or structured patterns.
  Matching a pattern to a value either computes an environment or fails.

  Simple patterns are constructed from abstractions whose bodies depend on 
  a given value, and whose executions either compute environments or fail.

  Structured patterns are composite values whose components may include
  simple patterns as well as other values.

  Matching a structured value to a structured pattern is similar to assigning 
  a structured value to a structured variable, with simple pattern components 
  matching component values analogously to simple variable components assigned
  component values.
  
  Note that patterns match only values, not (empty or proper) sequences.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



#### Simple patterns

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_patterns">patterns</span></span> ::= <span id="Name_pattern">pattern</span>(_:<span class="name"><a href="../Generic/index.html#Name_abstractions">abstractions</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>=><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>))</code></pre></div>

  
  <code><span class="name"><a href="#Name_patterns">patterns</a></span></code> is the type of simple patterns that can match values of a
  particular type.
   
  <code><span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<i class="var">X</i>))</code> constructs a pattern with dynamic bindings, and
  <code><span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_closure">closure</a></span>(<i class="var">X</i>))</code> computes a pattern with static bindings. However,
  there is no difference between dynamic and static bindings when the pattern
  is matched in the same scope where it is constructed.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_pattern-any">pattern-any</span></span> : =><span class="name"><a href="#Name_patterns">patterns</a></span>
    ~> <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>( )))</code></pre></div>


  <code><span class="name"><a href="#Name_pattern-any">pattern-any</a></span></code> matches any value, computing the empty environment.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_pattern-bind">pattern-bind</span></span>(<span id="Variable245_I"><i class="var">I</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="#Name_patterns">patterns</a></span>
    ~> <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_bind-value">bind-value</a></span>(<a href="#Variable245_I"><i class="var">I</i></a>, <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_pattern-bind">pattern-bind</a></span>(<i class="var">I</i>)</code> matches any value, computing the environment binding <code><i class="var">I</i></code>
  to that value.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_pattern-type">pattern-type</span></span>(<span id="Variable335_T"><i class="var">T</i></span>) : =><span class="name"><a href="#Name_patterns">patterns</a></span>
    ~> <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable335_T"><i class="var">T</i></a>), <span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>( ), <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_pattern-type">pattern-type</a></span>(<i class="var">T</i>)</code> matches any value of type <code><i class="var">T</i></code>, computing the empty
  environment.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_pattern-else">pattern-else</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="#Name_patterns">patterns</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_pattern-else">pattern-else</a></span>(<span id="Variable469_P1"><i class="var">P<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable478_P2"><i class="var">P<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable469_P1"><i class="var">P<sub class="sub">1</sub></i></a>), <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable478_P2"><i class="var">P<sub class="sub">2</sub></i></a>))))</code></pre></div>


  <code><span class="name"><a href="#Name_pattern-else">pattern-else</a></span>(<i class="var">P<sub class="sub">1</sub></i>, <i class="var">P<sub class="sub">2</sub></i>)</code> matches all values matched by <code><i class="var">P<sub class="sub">1</sub></i></code> or by <code><i class="var">P<sub class="sub">2</sub></i></code>.
  If a value matches <code><i class="var">P<sub class="sub">1</sub></i></code>, that match gives the computed environment;
  if a value does not match <code><i class="var">P<sub class="sub">1</sub></i></code> but matches <code><i class="var">P<sub class="sub">2</sub></i></code>, that match gives 
  the computed environment; otherwise the match fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_pattern-unite">pattern-unite</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="#Name_patterns">patterns</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_pattern-unite">pattern-unite</a></span>(<span id="Variable685_P1"><i class="var">P<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable694_P2"><i class="var">P<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable685_P1"><i class="var">P<sub class="sub">1</sub></i></a>), <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable694_P2"><i class="var">P<sub class="sub">2</sub></i></a>))))</code></pre></div>


  <code><span class="name"><a href="#Name_pattern-unite">pattern-unite</a></span>(<i class="var">P<sub class="sub">1</sub></i>, <i class="var">P<sub class="sub">2</sub></i>)</code> matches all values matched by both <code><i class="var">P<sub class="sub">1</sub></i></code> and <code><i class="var">P<sub class="sub">2</sub></i></code>,
  then uniting the computed environments, which fails if the domains of the
  environments overlap.



#### Pattern matching

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_match">match</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_match">match</a></span>(<i class="var">V</i>, <i class="var">P</i>)</code> takes a (potentially structured) value <code><i class="var">V</i></code> and a
  (potentially structured) pattern <code><i class="var">P</i></code>. Provided that the structure and all
  components of <code><i class="var">P</i></code> exactly match the structure and corresponding components
  of <code><i class="var">V</i></code>, the environments computed by the simple pattern matches are united.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_match">match</a></span>(<span id="Variable964_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable974_X"><i class="var">X</i></span>))) ~> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable964_V"><i class="var">V</i></a>, <a href="#Variable974_X"><i class="var">X</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable1064_I2"><i class="var">I<sub class="sub">2</sub></i></a> =/= "pattern"
  --------------------------------------------
  <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable1035_I1"><i class="var">I<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable1045_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>),
        <span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable1064_I2"><i class="var">I<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable1074_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>))
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1035_I1"><i class="var">I<sub class="sub">1</sub></i></a>, <a href="#Variable1064_I2"><i class="var">I<sub class="sub">2</sub></i></a>)),
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../Composite/Sequences/index.html#Name_length">length</a></span> <a href="#Variable1045_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>, <span class="name"><a href="../../Composite/Sequences/index.html#Name_length">length</a></span> <a href="#Variable1074_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)),
         <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
           <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
           <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1045_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>), <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1074_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)))))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1284_M2"><i class="var">M<sub class="sub">2</sub></i></a>) == {}
  ------------------------------------------------------
  <span class="name"><a href="#Name_match">match</a></span>(<span id="Variable1261_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_), <span id="Variable1284_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1261_M1"><i class="var">M<sub class="sub">1</sub></i></a>), {}), <span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>( ), <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1432_M2"><i class="var">M<sub class="sub">2</sub></i></a>) =/= {}
  <span class="name"><a href="../../Composite/Sets/index.html#Name_some-element">some-element</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1432_M2"><i class="var">M<sub class="sub">2</sub></i></a>)) ~> <span id="Variable1396_K"><i class="var">K</i></span>
  -------------------------------------------------------
  <span class="name"><a href="#Name_match">match</a></span>(<span id="Variable1409_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_), <span id="Variable1432_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
         <span class="name"><a href="../../Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1396_K"><i class="var">K</i></a>, <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1409_M1"><i class="var">M<sub class="sub">1</sub></i></a>)),
         <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(
           <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable1409_M1"><i class="var">M<sub class="sub">1</sub></i></a>, <a href="#Variable1396_K"><i class="var">K</i></a>), <span class="name"><a href="../../Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable1432_M2"><i class="var">M<sub class="sub">2</sub></i></a>, <a href="#Variable1396_K"><i class="var">K</i></a>)),
           <span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable1409_M1"><i class="var">M<sub class="sub">1</sub></i></a>, {<a href="#Variable1396_K"><i class="var">K</i></a>}), <span class="name"><a href="../../Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable1432_M2"><i class="var">M<sub class="sub">2</sub></i></a>, {<a href="#Variable1396_K"><i class="var">K</i></a>}))),
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)
<i class="keyword">Rule</i>
  <a href="#Variable1657_P"><i class="var">P</i></a> : ~(<span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>|<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
  -----------------------------------------------
  <span class="name"><a href="#Name_match">match</a></span>(<span id="Variable1649_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1657_P"><i class="var">P</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1649_V"><i class="var">V</i></a>, <a href="#Variable1657_P"><i class="var">P</i></a>), <span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>( ), <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_match-loosely">match-loosely</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<i class="var">V</i>, <i class="var">P</i>)</code> takes a (potentially structured) value <code><i class="var">V</i></code> and a
  (potentially structured) pattern <code><i class="var">P</i></code>. Provided that the structure and all
  components of <code><i class="var">P</i></code> loosely match the structure and corresponding components
  of <code><i class="var">V</i></code>, the environments computed by the simple pattern matches are united.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span id="Variable1824_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="#Name_pattern">pattern</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable1834_X"><i class="var">X</i></span>))) ~> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable1824_V"><i class="var">V</i></a>, <a href="#Variable1834_X"><i class="var">X</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable1924_I2"><i class="var">I<sub class="sub">2</sub></i></a> =/= "pattern"
  ---------------------------------------------------
  <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable1895_I1"><i class="var">I<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable1905_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>),
        <span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable1924_I2"><i class="var">I<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable1934_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>))
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable1895_I1"><i class="var">I<sub class="sub">1</sub></i></a>, <a href="#Variable1924_I2"><i class="var">I<sub class="sub">2</sub></i></a>)),
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../Composite/Sequences/index.html#Name_length">length</a></span> <a href="#Variable1905_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>, <span class="name"><a href="../../Composite/Sequences/index.html#Name_length">length</a></span> <a href="#Variable1934_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)),
         <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
           <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
           <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1905_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>), <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1934_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)))))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2144_M2"><i class="var">M<sub class="sub">2</sub></i></a>) == {}
  -------------------------------------------------
  <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span id="Variable2121_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_), <span id="Variable2144_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_)) ~> <span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>()
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2256_M2"><i class="var">M<sub class="sub">2</sub></i></a>) =/= {}
  <span class="name"><a href="../../Composite/Sets/index.html#Name_some-element">some-element</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2256_M2"><i class="var">M<sub class="sub">2</sub></i></a>)) ~> <span id="Variable2220_K"><i class="var">K</i></span>
  --------------------------------------------------------------
  <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span id="Variable2233_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_), <span id="Variable2256_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
         <span class="name"><a href="../../Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2220_K"><i class="var">K</i></a>, <span class="name"><a href="../../Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2233_M1"><i class="var">M<sub class="sub">1</sub></i></a>)),
         <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(
           <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable2233_M1"><i class="var">M<sub class="sub">1</sub></i></a>, <a href="#Variable2220_K"><i class="var">K</i></a>), <span class="name"><a href="../../Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable2256_M2"><i class="var">M<sub class="sub">2</sub></i></a>, <a href="#Variable2220_K"><i class="var">K</i></a>)),
           <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span class="name"><a href="../../Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable2233_M1"><i class="var">M<sub class="sub">1</sub></i></a>, {<a href="#Variable2220_K"><i class="var">K</i></a>}), <span class="name"><a href="../../Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable2256_M2"><i class="var">M<sub class="sub">2</sub></i></a>, {<a href="#Variable2220_K"><i class="var">K</i></a>}))),
         <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)
<i class="keyword">Rule</i>
  <a href="#Variable2481_P"><i class="var">P</i></a> : ~(<span class="name"><a href="../../Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>|<span class="name"><a href="../../Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
  -------------------------------------------
  <span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span id="Variable2473_DV"><i class="var">DV</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable2481_P"><i class="var">P</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable2473_DV"><i class="var">DV</i></a>, <a href="#Variable2481_P"><i class="var">P</i></a>), <span class="name"><a href="../../Composite/Maps/index.html#Name_map">map</a></span>( ), <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_case-match">case-match</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:=><span id="Variable2548_T'"><i class="var">T&prime;</i></span>) : =><span id="Variable2565_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_case-match">case-match</a></span>(<i class="var">P</i>, <i class="var">X</i>)</code> matches <code><i class="var">P</i></code> exactly to the given value.
  If the match succeeds, the computed bindings have scope <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_case-match">case-match</a></span>(<span id="Variable2632_P"><i class="var">P</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable2640_X"><i class="var">X</i></span>) ~> <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<span class="name"><a href="#Name_match">match</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable2632_P"><i class="var">P</i></a>), <a href="#Variable2640_X"><i class="var">X</i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_case-match-loosely">case-match-loosely</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:=><span id="Variable2697_T'"><i class="var">T&prime;</i></span>) : =><span id="Variable2714_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_case-match">case-match</a></span>(<i class="var">P</i>, <i class="var">X</i>)</code> matches <code><i class="var">P</i></code> loosely to the given value. 
  If the match succeeds, the computed bindings have scope <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_case-match-loosely">case-match-loosely</a></span>(<span id="Variable2781_P"><i class="var">P</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable2789_X"><i class="var">X</i></span>) ~> <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<span class="name"><a href="#Name_match-loosely">match-loosely</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>, <a href="#Variable2781_P"><i class="var">P</i></a>), <a href="#Variable2789_X"><i class="var">X</i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_case-variant-value">case-variant-value</span></span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_case-variant-value">case-variant-value</a></span>(<i class="var">I</i>)</code> matches values of variant <code><i class="var">I</i></code>, then
  giving the value contained in the variant.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_case-variant-value">case-variant-value</a></span>(<span id="Variable2892_I"><i class="var">I</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) ~>
    <span class="name"><a href="#Name_case-match">case-match</a></span>(<span class="name"><a href="../../Composite/Variants/index.html#Name_variant">variant</a></span>(<a href="#Variable2892_I"><i class="var">I</i></a>, <span class="name"><a href="#Name_pattern-any">pattern-any</a></span>), <span class="name"><a href="../../Composite/Variants/index.html#Name_variant-value">variant-value</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Patterns.cbs]: Patterns.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Patterns/Patterns.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
