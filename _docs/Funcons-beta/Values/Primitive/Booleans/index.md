---
title: "Booleans"
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Booleans.cbs] \| [PRETTY] \| [PDF]


----
### Booleans

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_booleans">booleans</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_bools">bools</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_true">true</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_false">false</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_not">not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_implies">implies</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_and">and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_or">or</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="#Name_xor">xor</a></span>
]</code></pre></div>




<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_booleans">booleans</span></span> ::= <span id="Name_true">true</span> | <span id="Name_false">false</span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_bools">bools</span></span> = <span class="name"><a href="#Name_booleans">booleans</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_not">not</span></span>(_:<span class="name"><a href="#Name_booleans">booleans</a></span>) : =><span class="name"><a href="#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_not">not</a></span>(<i class="var">B</i>)</code>   is logical negation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_not">not</a></span>(<span class="name"><a href="#Name_false">false</a></span>) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_not">not</a></span>(<span class="name"><a href="#Name_true">true</a></span>) ~> <span class="name"><a href="#Name_false">false</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implies">implies</span></span>(_:<span class="name"><a href="#Name_booleans">booleans</a></span>, _:<span class="name"><a href="#Name_booleans">booleans</a></span>) : =><span class="name"><a href="#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_implies">implies</a></span>(<i class="var">B<sub class="sub">1</sub></i>, <i class="var">B<sub class="sub">2</sub></i>)</code> is logical implication.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_implies">implies</a></span>(<span class="name"><a href="#Name_false">false</a></span>, <span class="name"><a href="#Name_false">false</a></span>) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_implies">implies</a></span>(<span class="name"><a href="#Name_false">false</a></span>, <span class="name"><a href="#Name_true">true</a></span>) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_implies">implies</a></span>(<span class="name"><a href="#Name_true">true</a></span>, <span class="name"><a href="#Name_true">true</a></span>) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_implies">implies</a></span>(<span class="name"><a href="#Name_true">true</a></span>, <span class="name"><a href="#Name_false">false</a></span>) ~> <span class="name"><a href="#Name_false">false</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_and">and</span></span>(_:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_and">and</a></span>(<i class="var">B</i>, ...)</code> is logical conjunction of any number of Boolean values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_and">and</a></span>( ) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_and">and</a></span>(<span class="name"><a href="#Name_false">false</a></span>, _*:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_false">false</a></span>  
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_and">and</a></span>(<span class="name"><a href="#Name_true">true</a></span>, <span id="Variable370_B*"><i class="var">B<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_and">and</a></span>(<a href="#Variable370_B*"><i class="var">B<sup class="sup">*</sup></i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_or">or</span></span>(_:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_or">or</a></span>(<i class="var">B</i>, ...)</code> is logical disjunction of any number of Boolean values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_or">or</a></span>( ) ~> <span class="name"><a href="#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_or">or</a></span>(<span class="name"><a href="#Name_true">true</a></span>, _*:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_or">or</a></span>(<span class="name"><a href="#Name_false">false</a></span>, <span id="Variable495_B*"><i class="var">B<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_booleans">booleans</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_or">or</a></span>(<a href="#Variable495_B*"><i class="var">B<sup class="sup">*</sup></i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_exclusive-or">exclusive-or</span></span>(_:<span class="name"><a href="#Name_booleans">booleans</a></span>, _:<span class="name"><a href="#Name_booleans">booleans</a></span>) : =><span class="name"><a href="#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_xor">xor</span></span> = <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>(<i class="var">B<sub class="sub">1</sub></i>, <i class="var">B<sub class="sub">2</sub></i>)</code> is exclusive disjunction.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>(<span class="name"><a href="#Name_false">false</a></span>, <span class="name"><a href="#Name_false">false</a></span>) ~> <span class="name"><a href="#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>(<span class="name"><a href="#Name_false">false</a></span>, <span class="name"><a href="#Name_true">true</a></span>)  ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>(<span class="name"><a href="#Name_true">true</a></span>, <span class="name"><a href="#Name_false">false</a></span>)  ~> <span class="name"><a href="#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_exclusive-or">exclusive-or</a></span>(<span class="name"><a href="#Name_true">true</a></span>, <span class="name"><a href="#Name_true">true</a></span>)   ~> <span class="name"><a href="#Name_false">false</a></span></code></pre></div>



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
[Booleans.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Booleans/Booleans.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Booleans
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Booleans
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Booleans/Booleans.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Booleans/Booleans.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
