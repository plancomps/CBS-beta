---
layout: default
title: "Returning"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Returning.cbs]
-----------------------------

### Returning

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_returning">returning</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_returned">returned</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_finalise-returning">finalise-returning</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_return">return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_handle-return">handle-return</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_returning">returning</span></span> ::= <span id="Name_returned">returned</span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_returned">returned</a></span>(<i class="var">V<sup class="sup">?</sup></i>)</code> is a reason for abrupt termination.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finalise-returning">finalise-returning</span></span>(<span id="Variable99_X"><i class="var">X</i></span>:=><span id="Variable104_T"><i class="var">T</i></span>) : =><span id="Variable119_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable99_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-returning">finalise-returning</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to
  executing <code><span class="name"><a href="#Name_return">return</a></span>(<i class="var">V</i>)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_return">return</span></span>(<span id="Variable203_V"><i class="var">V</i></span>:<span id="Variable207_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_returned">returned</a></span>(<a href="#Variable203_V"><i class="var">V</i></a>))</code></pre></div>


  <code><span class="name"><a href="#Name_return">return</a></span>(<i class="var">V</i>)</code> abruptly terminates all enclosing computations until it is
  handled, then giving <code><i class="var">V</i></code>. Note that <code><i class="var">V</i></code> may be <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-return">handle-return</span></span>(_:=><span id="Variable313_T"><i class="var">T</i></span>) : =><span id="Variable328_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-return">handle-return</a></span>(<i class="var">X</i>)</code> first evaluates <code><i class="var">X</i></code>. If <code><i class="var">X</i></code> either terminates abruptly for 
  reason <code><span class="name"><a href="#Name_returned">returned</a></span>(<i class="var">V</i>)</code>, or terminates normally with value <code><i class="var">V</i></code>, it gives <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                 <a href="#Variable467_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable454_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------
  <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<span id="Variable467_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<a href="#Variable454_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable557_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_returned">returned</a></span>(<span id="Variable518_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>))-> <span id="Variable544_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<span id="Variable557_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <a href="#Variable518_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
                 <a href="#Variable634_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable600_V'"><i class="var">V&prime;</i></span>:~<span class="name"><a href="#Name_returning">returning</a></span>)-> <span id="Variable621_X'"><i class="var">X&prime;</i></span>
  ---------------------------------------------------
  <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<span id="Variable634_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable600_V'"><i class="var">V&prime;</i></a>)-> <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<a href="#Variable621_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-return">handle-return</a></span>(<span id="Variable683_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable683_V"><i class="var">V</i></a></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Returning.cbs]: Returning.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Returning/Returning.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
