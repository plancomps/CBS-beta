---
title: "Throwing"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Throwing.cbs] \| [PRETTY] \| [PDF]


----
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
  <span class="name"><span id="Name_finalise-throwing">finalise-throwing</span></span>(<span id="Variable129_X"><i class="var">X</i></span>:=><span id="Variable134_T"><i class="var">T</i></span>) : =><span id="Variable149_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable129_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-throwing">finalise-throwing</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to
  executing <code><span class="name"><a href="#Name_throw">throw</a></span>(<i class="var">V</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_throw">throw</span></span>(<span id="Variable233_V"><i class="var">V</i></span>:<span id="Variable237_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_thrown">thrown</a></span>(<a href="#Variable233_V"><i class="var">V</i></a>))</code></pre></div>


  <code><span class="name"><a href="#Name_throw">throw</a></span>(<i class="var">V</i>)</code> abruptly terminates all enclosing computations uTil it is handled.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-thrown">handle-thrown</span></span>(_:<span id="Variable307_T'"><i class="var">T&prime;</i></span>=><span id="Variable313_T"><i class="var">T</i></span>, _:<span id="Variable326_T''"><i class="var">T&prime;&prime;</i></span>=><span id="Variable332_T"><i class="var">T</i></span>) : <span id="Variable348_T'"><i class="var">T&prime;</i></span>=><span id="Variable354_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> first evaluates <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> terminates normally with
  value <code><i class="var">V</i></code>, then <code><i class="var">V</i></code> is returned and <code><i class="var">Y</i></code> is ignored. If <code><i class="var">X</i></code> terminates abruptly
  with a thrown eTity having value <code><i class="var">V</i></code>, then <code><i class="var">Y</i></code> is executed with <code><i class="var">V</i></code> as
  <code><span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span></code> value.
  
  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with <code><span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)</code> as unit.
  <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<i class="var">Y</i>, <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code> ensures that if <code><i class="var">Y</i></code> fails, the
  thrown value is re-thrown.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                    <a href="#Variable653_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable640_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable653_X"><i class="var">X</i></span>, <span id="Variable658_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable640_X'"><i class="var">X&prime;</i></a>, <a href="#Variable658_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
    <a href="#Variable756_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_thrown">thrown</a></span>(<span id="Variable717_V''"><i class="var">V&prime;&prime;</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>))-> <span id="Variable743_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable756_X"><i class="var">X</i></span>, <span id="Variable761_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="../../Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable717_V''"><i class="var">V&prime;&prime;</i></a>, <a href="#Variable761_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
                    <a href="#Variable853_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable819_V'"><i class="var">V&prime;</i></span>:~<span class="name"><a href="#Name_throwing">throwing</a></span>)-> <span id="Variable840_X'"><i class="var">X&prime;</i></span>
  ---------------------------------------------------------
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable853_X"><i class="var">X</i></span>, <span id="Variable858_Y"><i class="var">Y</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable819_V'"><i class="var">V&prime;</i></a>)-> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable840_X'"><i class="var">X&prime;</i></a>, <a href="#Variable858_Y"><i class="var">Y</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<span id="Variable914_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable925_Y"><i class="var">Y</i></span>) ~> <a href="#Variable914_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-recursively">handle-recursively</span></span>(<span id="Variable946_X"><i class="var">X</i></span>:<span id="Variable950_S"><i class="var">S</i></span>=><span id="Variable956_T"><i class="var">T</i></span>, <span id="Variable965_Y"><i class="var">Y</i></span>:<span id="Variable969_R"><i class="var">R</i></span>=><span id="Variable975_T"><i class="var">T</i></span>) : <span id="Variable990_S"><i class="var">S</i></span>=><span id="Variable996_T"><i class="var">T</i></span>
    ~> <span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<a href="#Variable946_X"><i class="var">X</i></a>, <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="#Name_handle-recursively">handle-recursively</a></span>(<a href="#Variable965_Y"><i class="var">Y</i></a>, <a href="#Variable965_Y"><i class="var">Y</i></a>), <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_handle-recursively">handle-recursively</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> behaves similarly to <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code>, except
  that another copy of the handler attempts to handle any values thrown by <code><i class="var">Y</i></code>.
  Thus, many thrown values may get handled by the same handler. 



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_catch-else-throw">catch-else-throw</span></span>(<span id="Variable1125_P"><i class="var">P</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1134_Y"><i class="var">Y</i></span>:=><span id="Variable1139_T"><i class="var">T</i></span>) : =><span id="Variable1155_T"><i class="var">T</i></span>
    ~> <span class="name"><a href="../Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../Values/Abstraction/Patterns/index.html#Name_case-match">case-match</a></span>(<a href="#Variable1125_P"><i class="var">P</i></a>, <a href="#Variable1134_Y"><i class="var">Y</i></a>), <span class="name"><a href="#Name_throw">throw</a></span>(<span class="name"><a href="../../Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>

 
   <code><span class="name"><a href="#Name_handle-thrown">handle-thrown</a></span>(<i class="var">X</i>, <span class="name"><a href="#Name_catch-else-throw">catch-else-throw</a></span>(<i class="var">P</i>, <i class="var">Y</i>))</code> handles those values thrown by <code><i class="var">X</i></code>
   that match pattern <code><i class="var">P</i></code>.  Other thrown values are re-thrown.  
 


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
[Throwing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Throwing/Throwing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Throwing
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Throwing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Throwing/Throwing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Throwing/Throwing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
