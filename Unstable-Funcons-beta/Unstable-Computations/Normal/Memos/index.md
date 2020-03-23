---
layout: default
title: "Memos"
parent: Unstable-Computations
grand_parent: Unstable-Funcons-beta
nav_order: "Memos"
---

[Unstable-Funcons-beta] : [Memos.cbs]
-----------------------------

### Memos
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_memo-map">memo-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-memos">initialise-memos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_memo-value">memo-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>
]</code></pre></div>


A memo is like a mutable variable, except that the memo is updated and
accessed by a specified key, rather than by an allocated location. The
collection of memos is represented by a mutable entity that maps keys
to values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i> 
  < _ , <span class="ent-name"><span id="Name_memo-map">memo-map</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) > --->
  < _ , <span class="ent-name">memo-map</span>(_:<span class="name">maps</span>(<span class="name">ground-values</span>, <span class="name">values</span>)) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-memos">initialise-memos</span></span>(_:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_initialise-memos">initialise-memos</a></span>(<span id="Variable101_X"><i class="var">X</i></span>) , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(_) > ---> < <a href="#Variable101_X"><i class="var">X</i></a> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )) ></code></pre></div>


When key <code><i class="var">K</i></code> is associated with value <code><i class="var">V</i></code>, the funcon <code><span class="name"><a href="#Name_memo-value">memo-value</a></span>(<i class="var">K</i>, <i class="var">X</i>)</code>
simply gives <code><i class="var">V</i></code>, without evaluating <code><i class="var">X</i></code>. When <code><i class="var">K</i></code> is not currently
associated with any value, it associates <code><i class="var">K</i></code> with the value computed
by <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_memo-value">memo-value</span></span>(<span id="Variable278_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable287_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
   ~> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<a href="#Variable278_K"><i class="var">K</i></a>),
        <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable287_X"><i class="var">X</i></a>,
          <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<a href="#Variable278_K"><i class="var">K</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>),
            <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<a href="#Variable278_K"><i class="var">K</i></a>))))</code></pre></div>


The initialisation could fail due to memoisation of a (potentially
different) value for <code><i class="var">K</i></code> during the computation <code><i class="var">X</i></code>. In that case,
the value computed by <code><i class="var">X</i></code> is simply discarded; a resource-safe
funcon would take an extra argument to roll back the effects of <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-memo-value">initialise-memo-value</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, _:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable541_M"><i class="var">M</i></a>, {<a href="#Variable517_K"><i class="var">K</i></a> |-> <a href="#Variable525_V"><i class="var">V</i></a>}) ~> <span id="Variable505_M'"><i class="var">M&prime;</i></span>
  -----------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<span id="Variable517_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable525_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable541_M"><i class="var">M</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable505_M'"><i class="var">M&prime;</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable643_M"><i class="var">M</i></a>, {<a href="#Variable619_K"><i class="var">K</i></a> |-> <a href="#Variable627_V"><i class="var">V</i></a>}) ~> ( )
  -----------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<span id="Variable619_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable627_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable643_M"><i class="var">M</i></span>) >
    ---> < <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable643_M"><i class="var">M</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_memo-value-recall">memo-value-recall</span></span>(_:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable746_M"><i class="var">M</i></a>, <a href="#Variable731_K"><i class="var">K</i></a>) ~> <span id="Variable719_V"><i class="var">V</i></span>
  ----------------------------------------------------------------------------
  < <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<span id="Variable731_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable746_M"><i class="var">M</i></span>) > ---> < <a href="#Variable719_V"><i class="var">V</i></a> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable746_M"><i class="var">M</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable831_M"><i class="var">M</i></a>, <a href="#Variable816_K"><i class="var">K</i></a>) ~> ( )
  -------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<span id="Variable816_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable831_M"><i class="var">M</i></span>) > ---> < <span class="name"><a href="../../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable831_M"><i class="var">M</i></a>) ></code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Memos.cbs]: Memos.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]:  "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Computations/Normal/Memos/Memos.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
