---
layout: default
title: "Lists"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Lists.cbs]
-----------------------------

### Lists

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_lists">lists</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list">list</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-elements">list-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-nil">list-nil</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="#Name_nil">nil</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-cons">list-cons</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_cons">cons</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-head">list-head</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_head">head</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-tail">list-tail</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_tail">tail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-length">list-length</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_list-append">list-append</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_lists">lists</span></span>(<span id="Variable80_T"><i class="var">T</i></span>) ::= <span id="Name_list">list</span>(_:(<span id="Variable96_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)</code></pre></div>


  <code><span class="name"><a href="#Name_lists">lists</a></span>(<i class="var">T</i>)</code> is the type of possibly-empty finite lists <code>[<i class="var">V<sub class="sub">1</sub></i>,...,<i class="var">Vn</i>]</code> 
  where <code><i class="var">V<sub class="sub">1</sub></i>:<i class="var">T</i></code>, ..., <code><i class="var">Vn</i>:<i class="var">T</i></code>.
  
  N.B. <code>[<i class="var">T</i>]</code> is always a single list value, and *not* interpreted as the
  type <code><span class="name"><a href="#Name_lists">lists</a></span>(<i class="var">T</i>)</code>.
  
  The notation <code>[<i class="var">V<sub class="sub">1</sub></i>, ..., <i class="var">Vn</i>]</code> for <code><span class="name"><a href="#Name_list">list</a></span>(<i class="var">V<sub class="sub">1</sub></i>, ..., <i class="var">Vn</i>)</code> is built-in.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  [<i class="var">V<sup class="sup">*</sup></i>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>] == <span class="name"><a href="#Name_list">list</a></span>(<i class="var">V<sup class="sup">*</sup></i>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-elements">list-elements</span></span>(_:<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable363_T"><i class="var">T</i></span>)) : =>(<span id="Variable383_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-elements">list-elements</a></span>(<span class="name"><a href="#Name_list">list</a></span>(<span id="Variable401_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)) ~> <a href="#Variable401_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-nil">list-nil</span></span> : =><span class="name"><a href="#Name_lists">lists</a></span>(_)
    ~> [ ]
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_nil">nil</span></span> = <span class="name"><a href="#Name_list-nil">list-nil</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_list-cons">list-cons</span></span>(_:<span id="Variable461_T"><i class="var">T</i></span>, _:<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable473_T"><i class="var">T</i></span>)) : =><span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable495_T"><i class="var">T</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_cons">cons</span></span> = <span class="name"><a href="#Name_list-cons">list-cons</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-cons">list-cons</a></span>(<span id="Variable513_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, [<span id="Variable522_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>]) ~> [<a href="#Variable513_V"><i class="var">V</i></a>, <a href="#Variable522_V*"><i class="var">V<sup class="sup">*</sup></i></a>]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-head">list-head</span></span>(_:<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable569_T"><i class="var">T</i></span>)) : =>(<span id="Variable589_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_head">head</span></span> = <span class="name"><a href="#Name_list-head">list-head</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-head">list-head</a></span>[<span id="Variable608_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _*:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>] ~> <a href="#Variable608_V"><i class="var">V</i></a> 
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-head">list-head</a></span>[ ] ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-tail">list-tail</span></span>(_:<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable659_T"><i class="var">T</i></span>)) : =>(<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable680_T"><i class="var">T</i></span>))<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_tail">tail</span></span> = <span class="name"><a href="#Name_list-tail">list-tail</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-tail">list-tail</a></span>[_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable713_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>] ~> [<a href="#Variable713_V*"><i class="var">V<sup class="sup">*</sup></i></a>] 
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-tail">list-tail</a></span>[ ] ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-length">list-length</span></span>(_:<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable762_T"><i class="var">T</i></span>)) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-length">list-length</a></span>[<span id="Variable789_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>] ~> <span class="name"><a href="../Sequences/index.html#Name_length">length</a></span>(<a href="#Variable789_V*"><i class="var">V<sup class="sup">*</sup></i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_list-append">list-append</span></span>(_:(<span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable826_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_lists">lists</a></span>(<span id="Variable854_T"><i class="var">T</i></span>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-append">list-append</a></span>([<span id="Variable871_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>], [<span id="Variable888_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>]) ~> [<a href="#Variable871_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>, <a href="#Variable888_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>]
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-append">list-append</a></span>(<span id="Variable935_L1"><i class="var">L<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_lists">lists</a></span>(_), <span id="Variable953_L2"><i class="var">L<sub class="sub">2</sub></i></span>:<span class="name"><a href="#Name_lists">lists</a></span>(_), <span id="Variable971_L3"><i class="var">L<sub class="sub">3</sub></i></span>:<span class="name"><a href="#Name_lists">lists</a></span>(_), <span id="Variable989_L*"><i class="var">L<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_lists">lists</a></span>(_))<sup class="sup">*</sup>)
   ~> <span class="name"><a href="#Name_list-append">list-append</a></span>(<a href="#Variable935_L1"><i class="var">L<sub class="sub">1</sub></i></a>, <span class="name"><a href="#Name_list-append">list-append</a></span>(<a href="#Variable953_L2"><i class="var">L<sub class="sub">2</sub></i></a>, <a href="#Variable971_L3"><i class="var">L<sub class="sub">3</sub></i></a>, <a href="#Variable989_L*"><i class="var">L<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-append">list-append</a></span>( ) ~> [ ]
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_list-append">list-append</a></span>(<span id="Variable1080_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_lists">lists</a></span>(_)) ~> <a href="#Variable1080_L"><i class="var">L</i></a></code></pre></div>




  Datatypes of infinite and possibly-infinite lists can be specified as
  algebraic datatypes using abstractions.



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Lists.cbs]: Lists.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Lists/Lists.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
