---
title: "Thunks"
parent: Abstraction
ancestor: Funcons-beta

---

[Funcons-beta] : [Thunks.cbs] \| [PRETTY] \| [PDF]


----
### Thunks

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_thunks">thunks</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_thunk">thunk</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_force">force</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_thunks">thunks</span></span>(<span id="Variable41_T"><i class="var">T</i></span>) ::= <span id="Name_thunk">thunk</span>(_:<span class="name"><a href="../Generic/index.html#Name_abstractions">abstractions</a></span>(()=><span id="Variable63_T"><i class="var">T</i></span>))</code></pre></div>


  <code><span class="name"><a href="#Name_thunks">thunks</a></span>(<i class="var">T</i>)</code> consists of abstractions whose bodies do not depend on
  a given value, and whose executions normally compute values of type <code><i class="var">T</i></code>.
  <code><span class="name"><a href="#Name_thunk">thunk</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<i class="var">X</i>))</code> evaluates to a thunk with dynamic bindings,
  <code><span class="name"><a href="#Name_thunk">thunk</a></span>(<span class="name"><a href="../Generic/index.html#Name_closure">closure</a></span>(<i class="var">X</i>))</code> computes a thunk with static bindings.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_force">force</span></span>(_:<span class="name"><a href="#Name_thunks">thunks</a></span>(<span id="Variable188_T"><i class="var">T</i></span>)) : =><span id="Variable208_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_force">force</a></span>(<i class="var">H</i>)</code> enacts the abstraction of the thunk <code><i class="var">H</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_force">force</a></span>(<span class="name"><a href="#Name_thunk">thunk</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable258_X"><i class="var">X</i></span>))) ~> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_no-given">no-given</a></span>(<a href="#Variable258_X"><i class="var">X</i></a>)</code></pre></div>



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
[Thunks.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Thunks/Thunks.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Abstraction/Thunks
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Abstraction/Thunks
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Thunks/Thunks.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Thunks/Thunks.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
