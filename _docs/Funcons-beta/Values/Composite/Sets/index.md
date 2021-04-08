---
title: "Sets"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Sets.cbs] \| [PRETTY] \| [PDF]


----
### Sets

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_sets">sets</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set">set</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-elements">set-elements</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-in-set">is-in-set</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-subset">is-subset</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-insert">set-insert</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-unite">set-unite</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-difference">set-difference</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_set-size">set-size</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_some-element">some-element</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_element-not-in">element-not-in</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_GT"><i class="var">GT</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_sets">sets</span></span>(<span id="Variable77_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)</code> is the type of possibly-empty finite sets <code>{V_1, ..., V_n}</code> 
  where <code>V_1:<i class="var">GT</i></code>, ..., <code>V_n:<i class="var">GT</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set">set</span></span>(_:(<span id="Variable193_GT"><i class="var">GT</i></span>)<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable215_GT"><i class="var">GT</i></span>)</code></pre></div>

  The notation <code>{V_1, ..., V_n}</code> for <code><span class="name"><a href="#Name_set">set</a></span>(V_1, ..., V_n)</code> is built-in.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  {<i class="var">V<sup class="sup">*</sup></i>:(<i class="var">GT</i>)<sup class="sup">*</sup>} == <span class="name"><a href="#Name_set">set</a></span>(<i class="var">V<sup class="sup">*</sup></i>)</code></pre></div>


  Note that <code><span class="name"><a href="#Name_set">set</a></span>(...)</code> is not a constructor operation. The order and duplicates
  of argument values are ignored (e.g., <code>{1,2,1}</code> denotes the same set as <code>{1,2}</code> 
  and <code>{2,1}</code>).



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-elements">set-elements</span></span>(_:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable423_GT"><i class="var">GT</i></span>)) : =>(<span id="Variable443_GT"><i class="var">GT</i></span>)<sup class="sup">*</sup></code></pre></div>

  For each set <code><i class="var">S</i></code>, the sequence of values <code><i class="var">V<sup class="sup">*</sup></i></code> returned by <code><span class="name"><a href="#Name_set-elements">set-elements</a></span>(<i class="var">S</i>)</code>
  contains each element of <code><i class="var">S</i></code> just once. The order of the values in <code><i class="var">V<sup class="sup">*</sup></i></code> is
  unspecified, and may vary between sets (e.g., <code><span class="name"><a href="#Name_set-elements">set-elements</a></span>{1,2}</code> could be
  <code>(1,2)</code> and <code><span class="name"><a href="#Name_set-elements">set-elements</a></span>{1,2,3}</code> could be <code>(3,2,1)</code>). 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set">set</a></span>(<span class="name"><a href="#Name_set-elements">set-elements</a></span>(<i class="var">S</i>)) == <i class="var">S</i></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-in-set">is-in-set</span></span>(_:<span id="Variable651_GT"><i class="var">GT</i></span>, _:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable663_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_is-in-set">is-in-set</a></span>(<i class="var">GV</i>,<i class="var">S</i>)</code> tests whether <code><i class="var">GV</i></code> is in the set <code><i class="var">S</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_is-in-set">is-in-set</a></span>(<i class="var">GV</i>:<i class="var">GT</i>, { }) == <span class="name"><a href="../../Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_is-in-set">is-in-set</a></span>(<i class="var">GV</i>:<i class="var">GT</i>, {<i class="var">GV</i>}:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="../../Primitive/Booleans/index.html#Name_true">true</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-subset">is-subset</span></span>(_:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable826_GT"><i class="var">GT</i></span>), _:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable844_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_is-subset">is-subset</a></span>(<i class="var">S<sub class="sub">1</sub></i>,<i class="var">S<sub class="sub">2</sub></i>)</code> tests whether <code><i class="var">S<sub class="sub">1</sub></i></code> is a subset of <code><i class="var">S<sub class="sub">2</sub></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_is-subset">is-subset</a></span>({ }, <i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="../../Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_is-subset">is-subset</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S</i>) == <span class="name"><a href="../../Primitive/Booleans/index.html#Name_true">true</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-insert">set-insert</span></span>(_:<span id="Variable1006_GT"><i class="var">GT</i></span>, _:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1018_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1040_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_set-insert">set-insert</a></span>(<i class="var">GV</i>, <i class="var">S</i>)</code> returns the set union of <code>{<i class="var">GV</i>}</code> and <code><i class="var">S</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_is-in-set">is-in-set</a></span>(<i class="var">GV</i>:<i class="var">GT</i>, <span class="name"><a href="#Name_set-insert">set-insert</a></span>(<i class="var">GV</i>:<i class="var">GT</i>, <i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>))) == <span class="name"><a href="../../Primitive/Booleans/index.html#Name_true">true</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-unite">set-unite</span></span>(_:(<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1183_GT"><i class="var">GT</i></span>))<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1211_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_set-unite">set-unite</a></span>(...)</code> unites a sequence of sets.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S</i>) == <i class="var">S</i>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">2</sub></i>, <i class="var">S<sub class="sub">1</sub></i>)
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">3</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>))) ==
    <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">1</sub></i>, <i class="var">S<sub class="sub">2</sub></i>), <i class="var">S<sub class="sub">3</sub></i>)
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">3</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == 
    <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">1</sub></i>, <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S<sub class="sub">2</sub></i>, <i class="var">S<sub class="sub">3</sub></i>))
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <i class="var">S</i>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-unite">set-unite</a></span>( ) == { }</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-intersect">set-intersect</span></span>(_:(<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1616_GT"><i class="var">GT</i></span>))<sup class="sup">+</sup>) : =><span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable1644_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">GT</i>,...)</code> intersects a non-empty sequence of sets.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S</i>) == <i class="var">S</i>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">2</sub></i>, <i class="var">S<sub class="sub">1</sub></i>)
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">3</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>))) == 
    <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">1</sub></i>, <i class="var">S<sub class="sub">2</sub></i>), <i class="var">S<sub class="sub">3</sub></i>)
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">1</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">2</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>), <i class="var">S<sub class="sub">3</sub></i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == 
    <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">1</sub></i>, <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S<sub class="sub">2</sub></i>, <i class="var">S<sub class="sub">3</sub></i>))
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-intersect">set-intersect</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <i class="var">S</i></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-difference">set-difference</span></span>(_:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable2043_GT"><i class="var">GT</i></span>), _:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable2061_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable2083_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_set-difference">set-difference</a></span>(<i class="var">S<sub class="sub">1</sub></i>, <i class="var">S<sub class="sub">2</sub></i>)</code> returns the set containing those elements of <code><i class="var">S<sub class="sub">1</sub></i></code>
  that are not in <code><i class="var">S<sub class="sub">2</sub></i></code>.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-size">set-size</span></span>(_:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable2165_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_set-size">set-size</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="../Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="#Name_set-elements">set-elements</a></span>(<i class="var">S</i>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_some-element">some-element</span></span>(_:<span class="name"><a href="#Name_sets">sets</a></span>(<span id="Variable2242_GT"><i class="var">GT</i></span>)) : =><span id="Variable2263_GT?"><i class="var">GT<sup class="sup">?</sup></i></span>
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_some-element">some-element</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_sets">sets</a></span>(<i class="var">GT</i>)) == <span class="name"><a href="../Sequences/index.html#Name_index">index</a></span>(1, <span class="name"><a href="#Name_set-elements">set-elements</a></span>(<i class="var">S</i>))
<i class="keyword">Assert</i>
  <span class="name"><a href="#Name_some-element">some-element</a></span>{ } == ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_element-not-in">element-not-in</span></span>(<span id="Variable2333_GT"><i class="var">GT</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span>, _:<span class="name"><a href="#Name_set">set</a></span>(<span id="Variable2346_GT"><i class="var">GT</i></span>)) : =><span id="Variable2368_GT?"><i class="var">GT<sup class="sup">?</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_element-not-in">element-not-in</a></span>(<i class="var">GT</i>, <i class="var">S</i>)</code> gives an element of the type <code><i class="var">GT</i></code> not in the set 
  <code><i class="var">S</i></code>, or <code>( )</code> when <code><i class="var">S</i></code> is empty. When the set of elements of <code><i class="var">GT</i></code> is infinite,
  <code><span class="name"><a href="#Name_element-not-in">element-not-in</a></span>(<i class="var">GT</i>, <i class="var">S</i>)</code> never gives <code>( )</code>.



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
[Sets.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sets/Sets.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Sets
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Sets
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sets/Sets.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Sets/Sets.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
