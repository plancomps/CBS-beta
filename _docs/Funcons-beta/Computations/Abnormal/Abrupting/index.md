---
title: "Abrupting"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Abrupting.cbs] \| [PRETTY] \| [PDF]


----
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
  <span class="name"><span id="Name_finalise-abrupting">finalise-abrupting</span></span>(<span id="Variable154_X"><i class="var">X</i></span>:=><span id="Variable159_T"><i class="var">T</i></span>) : =><span id="Variable174_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<a href="#Variable154_X"><i class="var">X</i></a>, <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-abrupting">finalise-abrupting</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> for any reason.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_abrupt">abrupt</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) :=><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_abrupt">abrupt</a></span>(<i class="var">V</i>)</code> terminates abruptly for reason <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span id="Variable301_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<a href="#Variable301_V"><i class="var">V</i></a>)-> <span class="name"><a href="#Name_stuck">stuck</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-abrupt">handle-abrupt</span></span>(_:<span id="Variable345_T'"><i class="var">T&prime;</i></span>=><span id="Variable351_T"><i class="var">T</i></span>, _:<span id="Variable364_T''"><i class="var">T&prime;&prime;</i></span>=><span id="Variable370_T"><i class="var">T</i></span>) : <span id="Variable386_T'"><i class="var">T&prime;</i></span>=><span id="Variable392_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first evaluates <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with
  value <code><i class="var">V</i></code>, then <code><i class="var">V</i></code> is returned and <code><i class="var">Y</i></code> is ignored. If <code><i class="var">X</i></code> terminates abruptly
  for reason <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed with <code><i class="var">V</i></code> as <code><span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span></code> value.

  <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with <code><span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)</code> as left and right
  unit. <code><span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<i class="var">X</i>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<i class="var">Y</i>, <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code> ensures propagation of 
  abrupt termination for the given reason if <code><i class="var">Y</i></code> fails

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                    <a href="#Variable691_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span id="Variable678_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable691_X"><i class="var">X</i></span>, <span id="Variable696_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<a href="#Variable678_X'"><i class="var">X&prime;</i></a>, <a href="#Variable696_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
                    <a href="#Variable790_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<span id="Variable753_V"><i class="var">V</i></span>:<i class="var">T&prime;&prime;</i>)-> <span id="Variable777_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable790_X"><i class="var">X</i></span>, <span id="Variable795_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="../../Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable753_V"><i class="var">V</i></a>, <a href="#Variable795_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-abrupt">handle-abrupt</a></span>(<span id="Variable843_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable854_Y"><i class="var">Y</i></span>) ~> <a href="#Variable843_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finally">finally</span></span>(_:=><span id="Variable879_T"><i class="var">T</i></span>, _:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span id="Variable905_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_finally">finally</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first executes <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with 
  value <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed before terminating normally with value <code><i class="var">V</i></code>.
  If <code><i class="var">X</i></code> terminates abruptly for reason <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed before
  terminating abruptly with the same reason <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
              <a href="#Variable1095_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span id="Variable1082_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1095_X"><i class="var">X</i></span>, <span id="Variable1100_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_finally">finally</a></span>(<a href="#Variable1082_X'"><i class="var">X&prime;</i></a>, <a href="#Variable1100_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
              <a href="#Variable1190_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>(<span id="Variable1157_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)-> <span id="Variable1177_X'"><i class="var">X&prime;</i></span>
  -----------------------------------------------------
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1190_X"><i class="var">X</i></span>, <span id="Variable1195_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="#Name_abrupted">abrupted</a></span>()-> <span class="name"><a href="../../Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<a href="#Variable1195_Y"><i class="var">Y</i></a>, <span class="name"><a href="#Name_abrupt">abrupt</a></span>(<a href="#Variable1157_V"><i class="var">V</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_finally">finally</a></span>(<span id="Variable1250_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1261_Y"><i class="var">Y</i></span>) ~> <span class="name"><a href="../../Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<a href="#Variable1261_Y"><i class="var">Y</i></a>,<a href="#Variable1250_V"><i class="var">V</i></a>)</code></pre></div>

  

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
[Abrupting.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Abrupting/Abrupting.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Abrupting
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Abrupting
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Abrupting/Abrupting.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Abrupting/Abrupting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
