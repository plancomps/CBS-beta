---
title: "Memos"
parent: Normal
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Memos.cbs] \| [PRETTY] \| [PDF]


----
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
  < _ , <span class="ent-name"><span id="Name_memo-map">memo-map</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) > --->
  < _ , <span class="ent-name">memo-map</span>(_:<span class="name">maps</span>(<span class="name">ground-values</span>, <span class="name">values</span>)) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-memos">initialise-memos</span></span>(_:=><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_initialise-memos">initialise-memos</a></span>(<span id="Variable102_X"><i class="var">X</i></span>) , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(_) > ---> < <a href="#Variable102_X"><i class="var">X</i></a> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )) ></code></pre></div>


When key <code><i class="var">K</i></code> is associated with value <code><i class="var">V</i></code>, the funcon <code><span class="name"><a href="#Name_memo-value">memo-value</a></span>(<i class="var">K</i>, <i class="var">X</i>)</code>
simply gives <code><i class="var">V</i></code>, without evaluating <code><i class="var">X</i></code>. When <code><i class="var">K</i></code> is not currently
associated with any value, it associates <code><i class="var">K</i></code> with the value computed
by <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_memo-value">memo-value</span></span>(<span id="Variable279_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable288_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
   ~> <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<a href="#Variable279_K"><i class="var">K</i></a>),
        <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable288_X"><i class="var">X</i></a>,
          <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<a href="#Variable279_K"><i class="var">K</i></a>, <span class="name"><a href="../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>),
            <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<a href="#Variable279_K"><i class="var">K</i></a>))))</code></pre></div>


The initialisation could fail due to memoisation of a (potentially
different) value for <code><i class="var">K</i></code> during the computation <code><i class="var">X</i></code>. In that case,
the value computed by <code><i class="var">X</i></code> is simply discarded; a resource-safe
funcon would take an extra argument to roll back the effects of <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-memo-value">initialise-memo-value</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, _:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable542_M"><i class="var">M</i></a>, {<a href="#Variable518_K"><i class="var">K</i></a> |-> <a href="#Variable526_V"><i class="var">V</i></a>}) ~> <span id="Variable506_M'"><i class="var">M&prime;</i></span>
  -----------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<span id="Variable518_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable526_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable542_M"><i class="var">M</i></span>) >
    ---> < <span class="name"><a href="../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable506_M'"><i class="var">M&prime;</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable644_M"><i class="var">M</i></a>, {<a href="#Variable620_K"><i class="var">K</i></a> |-> <a href="#Variable628_V"><i class="var">V</i></a>}) ~> ( )
  -----------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-memo-value">initialise-memo-value</a></span>(<span id="Variable620_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>, <span id="Variable628_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable644_M"><i class="var">M</i></span>) >
    ---> < <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable644_M"><i class="var">M</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_memo-value-recall">memo-value-recall</span></span>(_:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable747_M"><i class="var">M</i></a>, <a href="#Variable732_K"><i class="var">K</i></a>) ~> <span id="Variable720_V"><i class="var">V</i></span>
  ----------------------------------------------------------------------------
  < <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<span id="Variable732_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable747_M"><i class="var">M</i></span>) > ---> < <a href="#Variable720_V"><i class="var">V</i></a> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable747_M"><i class="var">M</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable832_M"><i class="var">M</i></a>, <a href="#Variable817_K"><i class="var">K</i></a>) ~> ( )
  -------------------------------------------------------------------------------
  < <span class="name"><a href="#Name_memo-value-recall">memo-value-recall</a></span>(<span id="Variable817_K"><i class="var">K</i></span>:<span class="name"><a href="../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<span id="Variable832_M"><i class="var">M</i></span>) > ---> < <span class="name"><a href="../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_memo-map">memo-map</a></span>(<a href="#Variable832_M"><i class="var">M</i></a>) ></code></pre></div>



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
[Memos.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Memos/Memos.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Normal/Memos
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Normal/Memos
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Memos/Memos.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Memos/Memos.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
