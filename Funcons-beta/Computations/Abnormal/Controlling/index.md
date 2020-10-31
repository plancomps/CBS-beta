---
layout: default
title: "Controlling"
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Controlling.cbs]
-----------------------------

### Controlling

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_continuations">continuations</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_continuation">continuation</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_plug-signal">plug-signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_hole">hole</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_resume-continuation">resume-continuation</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_control-signal">control-signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_control">control</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="#Name_delimit-cc">delimit-cc</a></span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="PartVariable_T2"><i class="var">T<sub class="sub">2</sub></i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_continuations">continuations</span></span>(<span id="Variable77_T1"><i class="var">T<sub class="sub">1</sub></i></span>,<span id="Variable84_T2"><i class="var">T<sub class="sub">2</sub></i></span>) ::= <span id="Name_continuation">continuation</span>(_:<span class="name"><a href="../../../Values/Abstraction/Generic/index.html#Name_abstractions">abstractions</a></span>(()=><span id="Variable108_T2"><i class="var">T<sub class="sub">2</sub></i></span>))</code></pre></div>


  <code><span class="name"><a href="#Name_continuations">continuations</a></span>(<i class="var">T<sub class="sub">1</sub></i>, <i class="var">T<sub class="sub">2</sub></i>)</code> consists of abstractions whose bodies contain a <code><span class="name"><a href="#Name_hole">hole</a></span></code>,
  and which will normally compute a value of type <code><i class="var">T<sub class="sub">2</sub></i></code> when the <code><span class="name"><a href="#Name_hole">hole</a></span></code> is plugged
  with a value of type <code><i class="var">T<sub class="sub">1</sub></i></code>.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ --<span class="ent-name"><span id="Name_plug-signal">plug-signal</span></span>(<i class="var">V<sup class="sup">?</sup></i>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)-> _</code></pre></div>


   A plug-signal contains the value to be filled into a <code><span class="name"><a href="#Name_hole">hole</a></span></code> in a continuation,
   thereby allowing a continuation to resume.


 <div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_hole">hole</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  A <code><span class="name"><a href="#Name_hole">hole</a></span></code> in a term cannot proceed until it receives a plug-signal
  containing a value to plug the hole.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
 <span class="name"><a href="#Name_hole">hole</a></span> --<span class="ent-name"><a href="#Name_plug-signal">plug-signal</a></span>(<i class="var">V</i>)-> <i class="var">V</i></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_resume-continuation">resume-continuation</span></span>(<span id="Variable304_K"><i class="var">K</i></span>:<span class="name"><a href="#Name_continuations">continuations</a></span>(<span id="Variable310_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable316_T2"><i class="var">T<sub class="sub">2</sub></i></span>), <span id="Variable331_V"><i class="var">V</i></span>:<span id="Variable336_T1"><i class="var">T<sub class="sub">1</sub></i></span>) : =><span id="Variable352_T2"><i class="var">T<sub class="sub">2</sub></i></span></code></pre></div>

 <code><span class="name"><a href="#Name_resume-continuation">resume-continuation</a></span>(<i class="var">K</i>, <i class="var">V</i>)</code> resumes a continuation <code><i class="var">K</i></code> by plugging the value
 <code><i class="var">V</i></code> into the <code><span class="name"><a href="#Name_hole">hole</a></span></code> in the continuation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                  <a href="#Variable469_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_plug-signal">plug-signal</a></span>(<span id="Variable437_V"><i class="var">V</i></span>)-> <span id="Variable454_X'"><i class="var">X&prime;</i></span>
 ---------------------------------------------------------------------------
 <span class="name"><a href="#Name_resume-continuation">resume-continuation</a></span>(<span class="name"><a href="#Name_continuation">continuation</a></span>(<span class="name"><a href="../../../Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable469_X"><i class="var">X</i></span>)), <span id="Variable486_V"><i class="var">V</i></span>:<i class="var">T</i>) --<span class="ent-name"><a href="#Name_plug-signal">plug-signal</a></span>()-> <a href="#Variable454_X'"><i class="var">X&prime;</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ --<span class="ent-name"><span id="Name_control-signal">control-signal</span></span>(<i class="var">F<sup class="sup">?</sup></i>:(<span class="name"><a href="../../../Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="#Name_continuations">continuations</a></span>(<i class="var">T<sub class="sub">1</sub></i>, <i class="var">T<sub class="sub">2</sub></i>), <i class="var">T<sub class="sub">2</sub></i>))<sup class="sup">?</sup>)-> _</code></pre></div>


   A control-signal contains the function to which control is about to be passed
   by the enclosing <code><span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<i class="var">X</i>)</code>.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_control">control</span></span>(<span id="Variable606_F"><i class="var">F</i></span>:<span class="name"><a href="../../../Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="#Name_continuations">continuations</a></span>(<span id="Variable613_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable619_T2"><i class="var">T<sub class="sub">2</sub></i></span>), <span id="Variable632_T2"><i class="var">T<sub class="sub">2</sub></i></span>)) : =><span id="Variable654_T1"><i class="var">T<sub class="sub">1</sub></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_control">control</a></span>(<i class="var">F</i>)</code> emits a control-signal that, when handled by an enclosing
  <code><span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<i class="var">X</i>)</code>, will apply <code><i class="var">F</i></code> to the current continuation of
  <code><span class="name"><a href="#Name_control">control</a></span>(<i class="var">F</i>)</code>, (rather than proceeding with that current continuation).

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_control">control</a></span>(<span id="Variable743_F"><i class="var">F</i></span>:<span class="name"><a href="../../../Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_,_)) --<span class="ent-name"><a href="#Name_control-signal">control-signal</a></span>(<a href="#Variable743_F"><i class="var">F</i></a>)-> <span class="name"><a href="#Name_hole">hole</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_delimit-current-continuation">delimit-current-continuation</span></span>(<span id="Variable797_X"><i class="var">X</i></span>:=><span id="Variable802_T"><i class="var">T</i></span>) : =><span id="Variable817_T"><i class="var">T</i></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_delimit-cc">delimit-cc</span></span> = <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<i class="var">X</i>)</code> delimits the scope of captured continuations.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<span id="Variable855_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable855_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
                         <a href="#Variable913_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_control-signal">control-signal</a></span>( )-> <span id="Variable900_X'"><i class="var">X&prime;</i></span>
  -----------------------------------------------------
  <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<span id="Variable913_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_control-signal">control-signal</a></span>( )->
    <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<a href="#Variable900_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
                         <a href="#Variable993_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_control-signal">control-signal</a></span>(<span id="Variable963_F"><i class="var">F</i></span>)-> <span id="Variable980_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------------------------------
  <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<span id="Variable993_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_control-signal">control-signal</a></span>( )->
    <span class="name"><a href="#Name_delimit-current-continuation">delimit-current-continuation</a></span>(<span class="name"><a href="../../../Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<a href="#Variable963_F"><i class="var">F</i></a>, <span class="name"><a href="#Name_continuation">continuation</a></span> <span class="name"><a href="../../../Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(<a href="#Variable980_X'"><i class="var">X&prime;</i></a>)))</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Controlling.cbs]: Controlling.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Controlling/Controlling.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
