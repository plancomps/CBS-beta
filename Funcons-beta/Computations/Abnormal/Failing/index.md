---
layout: default
title: "Failing"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Failing.cbs]
-----------------------------

### Failing

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_failing">failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_failed">failed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_finalise-failing">finalise-failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_else">else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_else-choice">else-choice</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_checked">checked</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_check-true">check-true</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_failing">failing</span></span> ::= <span id="Name_failed">failed</span></code></pre></div>

  <code><span class="name"><a href="#Name_failed">failed</a></span></code> is a reason for abrupt termination.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finalise-failing">finalise-failing</span></span>(<span id="Variable88_X"><i class="var">X</i></span>:=><span id="Variable93_T"><i class="var">T</i></span>) : =><span id="Variable108_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable88_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-failing">finalise-failing</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to executing <code><span class="name"><a href="#Name_fail">fail</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fail">fail</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_failed">failed</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_fail">fail</a></span></code> abruptly terminates all enclosing computations until it is handled.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_else">else</span></span>(_:=><span id="Variable220_T"><i class="var">T</i></span>, _:(=><span id="Variable233_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable256_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X<sub class="sub">1</sub></i>, <i class="var">X<sub class="sub">2</sub></i>, ...)</code> executes the arguments in turn until either some
  <code><i class="var">Xi</i></code> does *not* fail, or all arguments <code><i class="var">Xi</i></code> have been executed.
  The last argument executed determines the result.
  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with unit <code><span class="name"><a href="#Name_fail">fail</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
           <a href="#Variable409_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable396_X'"><i class="var">X&prime;</i></span>
  --------------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable409_X"><i class="var">X</i></span>, <span id="Variable414_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable396_X'"><i class="var">X&prime;</i></a>, <a href="#Variable414_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
           <a href="#Variable496_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_failed">failed</a></span>)-> _
  ---------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable496_X"><i class="var">X</i></span>, <span id="Variable501_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <a href="#Variable501_Y"><i class="var">Y</i></a>
<i class="keyword">Rule</i>
           <a href="#Variable578_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable544_V"><i class="var">V</i></span>:~<span class="name"><a href="#Name_failing">failing</a></span>)-> <span id="Variable565_X'"><i class="var">X&prime;</i></span>
  --------------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable578_X"><i class="var">X</i></span>, <span id="Variable583_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable544_V"><i class="var">V</i></a>)-> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable565_X'"><i class="var">X&prime;</i></a>, <a href="#Variable583_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable638_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable649_Y"><i class="var">Y</i></span>) ~> <a href="#Variable638_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable670_X"><i class="var">X</i></span>, <span id="Variable675_Y"><i class="var">Y</i></span>, <span id="Variable681_Z+"><i class="var">Z<sup class="sup">+</sup></i></span>) ~> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable670_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable675_Y"><i class="var">Y</i></a>, <a href="#Variable681_Z+"><i class="var">Z<sup class="sup">+</sup></i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_else-choice">else-choice</span></span>(_:(=><span id="Variable734_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable756_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_else-choice">else-choice</a></span>(<i class="var">X</i>,...)</code> executes the arguments in any order until either some
  <code><i class="var">Xi</i></code> does *not* fail, or all arguments <code><i class="var">Xi</i></code> have been executed.
  The last argument executed determines the result.
  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative and commutative, with unit <code><span class="name"><a href="#Name_fail">fail</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<span id="Variable870_W*"><i class="var">W<sup class="sup">*</sup></i></span>, <span id="Variable875_X"><i class="var">X</i></span>, <span id="Variable880_Y"><i class="var">Y</i></span>, <span id="Variable886_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>)
   ~> <span class="name"><a href="../../Normal/Flowing/index.html#Name_choice">choice</a></span>(<span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable875_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<a href="#Variable870_W*"><i class="var">W<sup class="sup">*</sup></i></a>, <a href="#Variable880_Y"><i class="var">Y</i></a>, <a href="#Variable886_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>), 
             <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable880_Y"><i class="var">Y</i></a>, <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<a href="#Variable870_W*"><i class="var">W<sup class="sup">*</sup></i></a>, <a href="#Variable875_X"><i class="var">X</i></a>, <a href="#Variable886_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>))))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<span id="Variable990_X"><i class="var">X</i></span>) ~> <a href="#Variable990_X"><i class="var">X</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_check-true">check-true</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_check">check</span></span> = <span class="name"><a href="#Name_check-true">check-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_check-true">check-true</a></span>(<i class="var">X</i>)</code> terminates normally if the value computed by <code><i class="var">X</i></code> is <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span></code>,
  and fails if it is <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>)  ~> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>) ~> <span class="name"><a href="#Name_fail">fail</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_checked">checked</span></span>(_:(<span id="Variable1123_T"><i class="var">T</i></span>)<sup class="sup">?</sup>) : =><span id="Variable1144_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_checked">checked</a></span>(<i class="var">X</i>)</code> fails when <code><i class="var">X</i></code> gives the empty sequence of values <code>( )</code>,
  representing that an optional value has not been computed. It otherwise
  computes the same as <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_checked">checked</a></span>(<span id="Variable1217_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable1217_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_checked">checked</a></span>( ) ~> <span class="name"><a href="#Name_fail">fail</a></span></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Failing.cbs]: Failing.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Failing/Failing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
