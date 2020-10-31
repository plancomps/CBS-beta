---
layout: default
title: "Abrupting"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Abrupting.cbs]
-----------------------------

### Abruptly terminating

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_stuck">stuck</a></span>
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_abrupted">abrupted</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_finalise-abrupting">finalise-abrupting</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_abrupt">abrupt</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_finally">finally</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span>, <span id="PartVariable_T''"><i class="var">T&prime;&prime;</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_stuck">stuck</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_stuck">stuck</a></span></code> does not have any computation. It is used to represent the result of
  a transition that causes the computation to terminate abruptly.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ --<span class="ent-name"><span id="Name_abrupted">abrupted</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)-> _</code></pre></div>


  <code><span class="name"><a href="#Name_abrupted">abrupted</a></span>(<i class="var">V</i>)</code> in a label on a tranistion indicates abrupt termination for
  reason <code><i class="var">V</i></code>. <code><span class="name"><a href="#Name_abrupted">abrupted</a></span>( )</code> indicates the absence of abrupt termination.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finalise-abrupting">finalise-abrupting</span></span>(<span id="Variable153_X"><i class="var">X</i></span>:=><span id="Variable158_T"><i class="var">T</i></span>) : =><span id="Variable173_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<a href="#Variable153_X"><i class="var">X</i></a>, <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-abrupting">finalise-abrupting</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> for any reason.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_abrupt">abrupt</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) :=><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_abrupt">abrupt</a></span>(<i class="var">V</i>)</code> terminates abruptly for reason <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span id="Variable300_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<a href="#Variable300_V"><i class="var">V</i></a>)-> <span class="name"><a href="#Name_stuck">stuck</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-abrupt">handle-abrupt</span></span>(_:<span id="Variable344_T'"><i class="var">T&prime;</i></span>=><span id="Variable350_T"><i class="var">T</i></span>, _:<span id="Variable363_T''"><i class="var">T&prime;&prime;</i></span>=><span id="Variable369_T"><i class="var">T</i></span>) : <span id="Variable385_T'"><i class="var">T&prime;</i></span>=><span id="Variable391_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first evaluates <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with
  value <code><i class="var">V</i></code>, then <code><i class="var">V</i></code> is returned and <code><i class="var">Y</i></code> is ignored. If <code><i class="var">X</i></code> terminates abruptly
  for reason <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed with <code><i class="var">V</i></code> as <code><span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span></code> value.

  <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with <code><span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)</code> as left and right
  unit. <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<i class="var">Y</i>, <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code> ensures propagation of 
  abrupt termination for the given reason if <code><i class="var">Y</i></code> fails

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                    <a href="#Variable690_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span id="Variable677_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable690_X"><i class="var">X</i></span>, <span id="Variable695_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<a href="#Variable677_X'"><i class="var">X&prime;</i></a>, <a href="#Variable695_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
                    <a href="#Variable789_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<span id="Variable752_V"><i class="var">V</i></span>:<i class="var">T&prime;&prime;</i>)-> <span id="Variable776_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable789_X"><i class="var">X</i></span>, <span id="Variable794_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="../../Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable752_V"><i class="var">V</i></a>, <a href="#Variable794_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable842_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable853_Y"><i class="var">Y</i></span>) ~> <a href="#Variable842_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finally">finally</span></span>(_:=><span id="Variable878_T"><i class="var">T</i></span>, _:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span id="Variable904_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_finally">finally</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first executes <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with 
  value <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed before terminating normally with value <code><i class="var">V</i></code>.
  If <code><i class="var">X</i></code> terminates abruptly for reason <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed before
  terminating abruptly with the same reason <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
              <a href="#Variable1094_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span id="Variable1081_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1094_X"><i class="var">X</i></span>, <span id="Variable1099_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_finally">finally</a></span>(<a href="#Variable1081_X'"><i class="var">X&prime;</i></a>, <a href="#Variable1099_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
              <a href="#Variable1189_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<span id="Variable1156_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)-> <span id="Variable1176_X'"><i class="var">X&prime;</i></span>
  -----------------------------------------------------
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1189_X"><i class="var">X</i></span>, <span id="Variable1194_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>()-> <span class="name"><a href="../../Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<a href="#Variable1194_Y"><i class="var">Y</i></a>, <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<a href="#Variable1156_V"><i class="var">V</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1249_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1260_Y"><i class="var">Y</i></span>) ~> <span class="name"><a href="../../Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<a href="#Variable1260_Y"><i class="var">Y</i></a>,<a href="#Variable1249_V"><i class="var">V</i></a>)</code></pre></div>

  

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Abrupting.cbs]: Abrupting.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Abrupting/Abrupting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
