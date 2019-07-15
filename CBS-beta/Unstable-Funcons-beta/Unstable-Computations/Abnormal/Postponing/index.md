---
layout: default
title: "Postponing"
parent: Unstable-Computations
grand_parent: Unstable-Funcons-beta
nav_order: "Postponing"
---

[Unstable-Funcons-beta] : [Postponing.cbs]
-----------------------------

### Postponing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_postponing">postponing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_postpone">postpone</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_after-effect">after-effect</a></span>
]</code></pre></div>


A funcon term can extend itself (e.g., with code to release the resources
allocated to it) using general funcons for postponed execution. When a step
from <code><i class="var">X</i></code> to <code><i class="var">X&prime;</i></code> executes <code><span class="name"><a href="#Name_postpone">postpone</a></span>(<i class="var">Y</i>)</code> (which computes <code><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span></code>),
the corresponding step of  <code><span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<i class="var">X</i>)</code> gives
<code><span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<span class="name"><a href="#Name_after-effect">after-effect</a></span>(<i class="var">X&prime;</i>, <i class="var">Y</i>))</code>, so that normal termination
of <code><i class="var">X&prime;</i></code> is followed by the effect of <code><i class="var">Y</i></code>.

The control entity <code><span class="name"><a href="#Name_postponing">postponing</a></span>(<i class="var">A</i>)</code> signals that the execution of the body
of the abstraction <code><i class="var">A</i></code> is postponed:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ --<span class="ent-name"><span id="Name_postponing">postponing</span></span>(_:(<span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstractions">abstractions</a></span>(=><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>))<sup class="sup">?</sup>)-> _</code></pre></div>



The funcon <code><span class="name"><a href="#Name_postpone">postpone</a></span>(<i class="var">X</i>)</code> forms a closure from <code><i class="var">X</i></code> and signals that its
execution is postponed:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_postpone">postpone</span></span>(_:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>(<a href="#Variable355_V"><i class="var">V</i></a>) |- <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable355_V"><i class="var">V</i></a>, <a href="#Variable372_X"><i class="var">X</i></a>) --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>( )-> <span id="Variable343_A"><i class="var">A</i></span>
  ----------------------------------------------------------
  <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>(<span id="Variable355_V"><i class="var">V</i></span>) |- <span class="name"><a href="#Name_postpone">postpone</a></span>(<span id="Variable372_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>(<a href="#Variable343_A"><i class="var">A</i></a>)-> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i>
  <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>( ) |- <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_no-given">no-given</a></span> <a href="#Variable464_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>( )-> <span id="Variable441_A"><i class="var">A</i></span>
  ----------------------------------------------------------
  <span class="ent-name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>( ) |- <span class="name"><a href="#Name_postpone">postpone</a></span>(<span id="Variable464_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>(<a href="#Variable441_A"><i class="var">A</i></a>)-> <span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>



The funcon <code><span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<i class="var">X</i>)</code> handles each signal <code><span class="name"><a href="#Name_postponing">postponing</a></span>(<i class="var">A</i>)</code>
by adding it as an after-effect of <code><i class="var">X</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_postpone-after-effect">postpone-after-effect</span></span>(_:=><span id="Variable564_T"><i class="var">T</i></span>) : =><span id="Variable579_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <a href="#Variable620_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>( )-> <span id="Variable607_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------
  <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<span id="Variable620_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>( )->
    <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<a href="#Variable607_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable714_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>(<span id="Variable670_A"><i class="var">A</i></span>)-> <span id="Variable687_X'"><i class="var">X&prime;</i></span>
  <a href="#Variable670_A"><i class="var">A</i></a> ~> <span class="name"><a href="../../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <span id="Variable700_Y"><i class="var">Y</i></span>
  --------------------------------------------
  <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<span id="Variable714_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_postponing">postponing</a></span>( )->
    <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<span class="name"><a href="#Name_after-effect">after-effect</a></span>(<a href="#Variable687_X'"><i class="var">X&prime;</i></a>, <a href="#Variable700_Y"><i class="var">Y</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_postpone-after-effect">postpone-after-effect</a></span>(<span id="Variable769_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) ~> <a href="#Variable769_V"><i class="var">V</i></a></code></pre></div>



The funcon <code><span class="name"><a href="#Name_after-effect">after-effect</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first executes <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> computes a value <code><i class="var">V</i></code>,
it then executes <code><i class="var">Y</i></code>, and computes <code><i class="var">V</i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_after-effect">after-effect</span></span>(<span id="Variable889_X"><i class="var">X</i></span>:=><span id="Variable894_T"><i class="var">T</i></span>, <span id="Variable903_Y"><i class="var">Y</i></span>:=><span class="name"><a href="../../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span id="Variable921_T"><i class="var">T</i></span>
   ~> <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable889_X"><i class="var">X</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<a href="#Variable903_Y"><i class="var">Y</i></a>, <span class="name"><a href="../../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[Postponing.cbs]: Postponing.cbs 
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
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Computations/Abnormal/Postponing/Postponing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
