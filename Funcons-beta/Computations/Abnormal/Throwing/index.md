---
layout: default
title: "Throwing"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Throwing.cbs]
-----------------------------

### Throwing

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_throwing">throwing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thrown">thrown</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_finalise-throwing">finalise-throwing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_throw">throw</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_handle-recursively">handle-recursively</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_catch-else-throw">catch-else-throw</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_R"><i class="var">R</i></span>, <span id="PartVariable_S"><i class="var">S</i></span>, <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span>, <span id="PartVariable_T''"><i class="var">T&prime;&prime;</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_throwing">throwing</span></span> ::= <span id="Name_thrown">thrown</span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_thrown">thrown</a></span>(<i class="var">V</i>)</code> is a reason for abrupt termination.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finalise-throwing">finalise-throwing</span></span>(<span id="Variable128_X"><i class="var">X</i></span>:=><span id="Variable133_T"><i class="var">T</i></span>) : =><span id="Variable148_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable128_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-throwing">finalise-throwing</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to
  executing <code><span class="name"><a href="#Name_throw">throw</a></span>(<i class="var">V</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_throw">throw</span></span>(<span id="Variable232_V"><i class="var">V</i></span>:<span id="Variable236_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_thrown">thrown</a></span>(<a href="#Variable232_V"><i class="var">V</i></a>))</code></pre></div>


  <code><span class="name"><a href="#Name_throw">throw</a></span>(<i class="var">V</i>)</code> abruptly terminates all enclosing computations uTil it is handled.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-thrown">handle-thrown</span></span>(_:<span id="Variable306_T'"><i class="var">T&prime;</i></span>=><span id="Variable312_T"><i class="var">T</i></span>, _:<span id="Variable325_T''"><i class="var">T&prime;&prime;</i></span>=><span id="Variable331_T"><i class="var">T</i></span>) : <span id="Variable347_T'"><i class="var">T&prime;</i></span>=><span id="Variable353_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first evaluates <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with
  value <code><i class="var">V</i></code>, then <code><i class="var">V</i></code> is returned and <code><i class="var">Y</i></code> is ignored. If <code><i class="var">X</i></code> terminates abruptly
  with a thrown eTity having value <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed with <code><i class="var">V</i></code> as
  <code><span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span></code> value.
  
  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with <code><span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)</code> as unit.
  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<i class="var">Y</i>, <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code> ensures that if <code><i class="var">Y</i></code> fails, the
  thrown value is re-thrown.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                    <a href="#Variable652_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable639_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable652_X"><i class="var">X</i></span>, <span id="Variable657_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable639_X'"><i class="var">X&prime;</i></a>, <a href="#Variable657_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
    <a href="#Variable755_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_thrown">thrown</a></span>(<span id="Variable716_V''"><i class="var">V&prime;&prime;</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>))-> <span id="Variable742_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable755_X"><i class="var">X</i></span>, <span id="Variable760_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="../../Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable716_V''"><i class="var">V&prime;&prime;</i></a>, <a href="#Variable760_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
                    <a href="#Variable852_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable818_V'"><i class="var">V&prime;</i></span>:~<span class="name"><a href="#Name_throwing">throwing</a></span>)-> <span id="Variable839_X'"><i class="var">X&prime;</i></span>
  ---------------------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable852_X"><i class="var">X</i></span>, <span id="Variable857_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable818_V'"><i class="var">V&prime;</i></a>)-> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable839_X'"><i class="var">X&prime;</i></a>, <a href="#Variable857_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable913_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable924_Y"><i class="var">Y</i></span>) ~> <a href="#Variable913_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-recursively">handle-recursively</span></span>(<span id="Variable945_X"><i class="var">X</i></span>:<span id="Variable949_S"><i class="var">S</i></span>=><span id="Variable955_T"><i class="var">T</i></span>, <span id="Variable964_Y"><i class="var">Y</i></span>:<span id="Variable968_R"><i class="var">R</i></span>=><span id="Variable974_T"><i class="var">T</i></span>) : <span id="Variable989_S"><i class="var">S</i></span>=><span id="Variable995_T"><i class="var">T</i></span>
    ~> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable945_X"><i class="var">X</i></a>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_handle-recursively">handle-recursively</a></span>(<a href="#Variable964_Y"><i class="var">Y</i></a>, <a href="#Variable964_Y"><i class="var">Y</i></a>), <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_handle-recursively">handle-recursively</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> behaves similarly to <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code>, except
  that another copy of the handler attempts to handle any values thrown by <code><i class="var">Y</i></code>.
  Thus, many thrown values may get handled by the same handler. 



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_catch-else-throw">catch-else-throw</span></span>(<span id="Variable1124_P"><i class="var">P</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1133_Y"><i class="var">Y</i></span>:=><span id="Variable1138_T"><i class="var">T</i></span>) : =><span id="Variable1154_T"><i class="var">T</i></span>
    ~> <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../Values/Abstraction/Patterns/index.html#Name_case-match">case-match</a></span>(<a href="#Variable1124_P"><i class="var">P</i></a>, <a href="#Variable1133_Y"><i class="var">Y</i></a>), <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>

 
   <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <span class="name"><a href="#Name_catch-else-throw">catch-else-throw</a></span>(<i class="var">P</i>, <i class="var">Y</i>))</code> handles those values thrown by <code><i class="var">X</i></code>
   that match pattern <code><i class="var">P</i></code>.  Other thrown values are re-thrown.  
 


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Throwing.cbs]: Throwing.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Throwing/Throwing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
