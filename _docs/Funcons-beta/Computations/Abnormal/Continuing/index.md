---
title: "Continuing"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Continuing.cbs] \| [PRETTY] \| [PDF]


----
### Continuing

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_continuing">continuing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_continued">continued</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_finalise-continuing">finalise-continuing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_continue">continue</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_continuing">continuing</span></span> ::= <span id="Name_continued">continued</span></code></pre></div>

  <code><span class="name"><a href="#Name_continued">continued</a></span></code> is a reason for abrupt termination.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_finalise-continuing">finalise-continuing</span></span>(<span id="Variable77_X"><i class="var">X</i></span>:=><span id="Variable82_T"><i class="var">T</i></span>) : =><span id="Variable97_T"><i class="var">T</i></span>|<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>(<a href="#Variable77_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_finalise-continuing">finalise-continuing</a></span>(<i class="var">X</i>)</code> handles abrupt termination of <code><i class="var">X</i></code> due to executing
  <code><span class="name"><a href="#Name_continue">continue</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_continue">continue</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
   ~> <span class="name"><a href="../Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span class="name"><a href="#Name_continued">continued</a></span>)</code></pre></div>


  <code><span class="name"><a href="#Name_continue">continue</a></span></code> abruptly terminates all enclosing computations until it is handled.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_handle-continue">handle-continue</span></span>(_:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<i class="var">X</i>)</code> terminates normally when <code><i class="var">X</i></code> terminates abruptly for the
  reason <code><span class="name"><a href="#Name_continued">continued</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                   <a href="#Variable308_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span id="Variable295_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------------------
  <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<span id="Variable308_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<a href="#Variable295_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
                   <a href="#Variable383_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span class="name"><a href="#Name_continued">continued</a></span>)-> _
  --------------------------------------------
  <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<span id="Variable383_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>( )-> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i>
                   <a href="#Variable456_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<span id="Variable422_V"><i class="var">V</i></span>:~<span class="name"><a href="#Name_continuing">continuing</a></span>)-> <span id="Variable443_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------------------
  <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<span id="Variable456_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../Abrupting/index.html#Name_abrupted">abrupted</a></span>(<a href="#Variable422_V"><i class="var">V</i></a>)-> <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<a href="#Variable443_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_handle-continue">handle-continue</a></span>(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) ~> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>



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
[Continuing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Continuing/Continuing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Continuing
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Continuing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Continuing/Continuing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Continuing/Continuing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
