---
title: "Linking"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Linking.cbs] \| [PRETTY] \| [PDF]


----
### Linking

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_links">links</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-linking">initialise-linking</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_link">link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_fresh-link">fresh-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_fresh-initialised-link">fresh-initialised-link</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="#Name_fresh-init-link">fresh-init-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_set-link">set-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_follow-if-link">follow-if-link</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_links">links</span></span> ::= <span id="Name_link">link</span>(_:<span class="name"><a href="../Storing/index.html#Name_variables">variables</a></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-linking">initialise-linking</span></span>(<span id="Variable85_X"><i class="var">X</i></span>:=><span id="Variable90_T"><i class="var">T</i></span>) : =><span id="Variable105_T"><i class="var">T</i></span>
   ~> <span class="name"><a href="../Storing/index.html#Name_initialise-storing">initialise-storing</a></span>(<a href="#Variable85_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_initialise-linking">initialise-linking</a></span>(<i class="var">X</i>)</code> ensures that the entities used by the funcons for
  linking are properly initialised.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fresh-link">fresh-link</span></span>(<span id="Variable153_T"><i class="var">T</i></span>) : =><span class="name"><a href="#Name_links">links</a></span>
    ~> <span class="name"><a href="#Name_link">link</a></span>(<span class="name"><a href="../Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<a href="#Variable153_T"><i class="var">T</i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fresh-initialised-link">fresh-initialised-link</span></span>(<span id="Variable191_T"><i class="var">T</i></span>, <span id="Variable197_V"><i class="var">V</i></span>:<span id="Variable201_T"><i class="var">T</i></span>) : =><span class="name"><a href="#Name_links">links</a></span>
    ~> <span class="name"><a href="#Name_link">link</a></span>(<span class="name"><a href="../Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<i class="var">T</i>, <a href="#Variable197_V"><i class="var">V</i></a>))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_fresh-init-link">fresh-init-link</span></span> = <span class="name"><a href="#Name_fresh-initialised-link">fresh-initialised-link</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-link">set-link</span></span>(_:<span class="name"><a href="#Name_links">links</a></span>, _:<span id="Variable262_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  The value of a link can be set only once.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_set-link">set-link</a></span>(<span class="name"><a href="#Name_link">link</a></span>(<span id="Variable290_Var"><i class="var">Var</i></span>:<span class="name"><a href="../Storing/index.html#Name_variables">variables</a></span>), <span id="Variable304_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <span class="name"><a href="../Storing/index.html#Name_initialise-variable">initialise-variable</a></span>(<a href="#Variable290_Var"><i class="var">Var</i></a>, <a href="#Variable304_V"><i class="var">V</i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_follow-link">follow-link</span></span>(_:<span class="name"><a href="#Name_links">links</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_follow-link">follow-link</a></span>(<span class="name"><a href="#Name_link">link</a></span>(<span id="Variable365_Var"><i class="var">Var</i></span>:<span class="name"><a href="../Storing/index.html#Name_variables">variables</a></span>)) ~> <span class="name"><a href="../Storing/index.html#Name_assigned">assigned</a></span>(<a href="#Variable365_Var"><i class="var">Var</i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_follow-if-link">follow-if-link</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  If <code><i class="var">V</i></code> is a link, <code><span class="name"><a href="#Name_follow-if-link">follow-if-link</a></span>(<i class="var">V</i>)</code> computes the set value, and
  otherwise it evaluates to <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_follow-if-link">follow-if-link</a></span>(<span class="name"><a href="#Name_link">link</a></span>(<span id="Variable474_Var"><i class="var">Var</i></span>:<span class="name"><a href="../Storing/index.html#Name_variables">variables</a></span>)) ~> <span class="name"><a href="../Storing/index.html#Name_assigned">assigned</a></span>(<a href="#Variable474_Var"><i class="var">Var</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_follow-if-link">follow-if-link</a></span>(<span id="Variable510_V"><i class="var">V</i></span>:~<span class="name"><a href="#Name_links">links</a></span>) ~> <a href="#Variable510_V"><i class="var">V</i></a></code></pre></div>



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
[Linking.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Linking/Linking.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Linking
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Linking
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Linking/Linking.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Linking/Linking.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
