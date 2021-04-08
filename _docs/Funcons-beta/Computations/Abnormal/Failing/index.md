---
title: "Failing"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Failing.cbs] \| [PRETTY] \| [PDF]


----
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
  <span class="name"><span id="Name_finalise-failing">finalise-failing</span></span>(<span id="Variable89_X"><i class="var">X</i></span>:=><span id="Variable94_T"><i class="var">T</i></span>) : =><span id="Variable109_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable89_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-failing">finalise-failing</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to executing <code><span class="name"><a href="#Name_fail">fail</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fail">fail</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_failed">failed</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_fail">fail</a></span></code> abruptly terminates all enclosing computations until it is handled.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_else">else</span></span>(_:=><span id="Variable221_T"><i class="var">T</i></span>, _:(=><span id="Variable234_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable257_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X<sub class="sub">1</sub></i>, <i class="var">X<sub class="sub">2</sub></i>, ...)</code> executes the arguments in turn until either some
  <code><i class="var">Xi</i></code> does *not* fail, or all arguments <code><i class="var">Xi</i></code> have been executed.
  The last argument executed determines the result.
  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with unit <code><span class="name"><a href="#Name_fail">fail</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
           <a href="#Variable410_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable397_X'"><i class="var">X&prime;</i></span>
  --------------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable410_X"><i class="var">X</i></span>, <span id="Variable415_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable397_X'"><i class="var">X&prime;</i></a>, <a href="#Variable415_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
           <a href="#Variable497_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_failed">failed</a></span>)-> _
  ---------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable497_X"><i class="var">X</i></span>, <span id="Variable502_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <a href="#Variable502_Y"><i class="var">Y</i></a>
<i class="keyword">Rule</i>
           <a href="#Variable579_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable545_V"><i class="var">V</i></span>:~<span class="name"><a href="#Name_failing">failing</a></span>)-> <span id="Variable566_X'"><i class="var">X&prime;</i></span>
  --------------------------------------
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable579_X"><i class="var">X</i></span>, <span id="Variable584_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable545_V"><i class="var">V</i></a>)-> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable566_X'"><i class="var">X&prime;</i></a>, <a href="#Variable584_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable639_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable650_Y"><i class="var">Y</i></span>) ~> <a href="#Variable639_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else">else</a></span>(<span id="Variable671_X"><i class="var">X</i></span>, <span id="Variable676_Y"><i class="var">Y</i></span>, <span id="Variable682_Z+"><i class="var">Z<sup class="sup">+</sup></i></span>) ~> <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable671_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable676_Y"><i class="var">Y</i></a>, <a href="#Variable682_Z+"><i class="var">Z<sup class="sup">+</sup></i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_else-choice">else-choice</span></span>(_:(=><span id="Variable735_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable757_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_else-choice">else-choice</a></span>(<i class="var">X</i>,...)</code> executes the arguments in any order until either some
  <code><i class="var">Xi</i></code> does *not* fail, or all arguments <code><i class="var">Xi</i></code> have been executed.
  The last argument executed determines the result.
  <code><span class="name"><a href="#Name_else">else</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative and commutative, with unit <code><span class="name"><a href="#Name_fail">fail</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<span id="Variable871_W*"><i class="var">W<sup class="sup">*</sup></i></span>, <span id="Variable876_X"><i class="var">X</i></span>, <span id="Variable881_Y"><i class="var">Y</i></span>, <span id="Variable887_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>)
   ~> <span class="name"><a href="../../Normal/Flowing/index.html#Name_choice">choice</a></span>(<span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable876_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<a href="#Variable871_W*"><i class="var">W<sup class="sup">*</sup></i></a>, <a href="#Variable881_Y"><i class="var">Y</i></a>, <a href="#Variable887_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>), 
             <span class="name"><a href="#Name_else">else</a></span>(<a href="#Variable881_Y"><i class="var">Y</i></a>, <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<a href="#Variable871_W*"><i class="var">W<sup class="sup">*</sup></i></a>, <a href="#Variable876_X"><i class="var">X</i></a>, <a href="#Variable887_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>))))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_else-choice">else-choice</a></span>(<span id="Variable991_X"><i class="var">X</i></span>) ~> <a href="#Variable991_X"><i class="var">X</i></a></code></pre></div>

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
  <span class="name"><span id="Name_checked">checked</span></span>(_:(<span id="Variable1124_T"><i class="var">T</i></span>)<sup class="sup">?</sup>) : =><span id="Variable1145_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_checked">checked</a></span>(<i class="var">X</i>)</code> fails when <code><i class="var">X</i></code> gives the empty sequence of values <code>( )</code>,
  representing that an optional value has not been computed. It otherwise
  computes the same as <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_checked">checked</a></span>(<span id="Variable1218_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable1218_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_checked">checked</a></span>( ) ~> <span class="name"><a href="#Name_fail">fail</a></span></code></pre></div>



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
[Failing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Failing/Failing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Failing
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Failing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Failing/Failing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Failing/Failing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
