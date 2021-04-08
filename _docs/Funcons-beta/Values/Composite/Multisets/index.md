---
title: "Multisets"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Multisets.cbs] \| [PRETTY] \| [PDF]


----
### Multisets (bags)

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_multisets">multisets</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_multiset">multiset</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_multiset-elements">multiset-elements</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_multiset-occurrences">multiset-occurrences</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_multiset-insert">multiset-insert</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_multiset-delete">multiset-delete</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-submultiset">is-submultiset</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_GT"><i class="var">GT</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_multisets">multisets</span></span>(<span id="Variable57_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_multisets">multisets</a></span>(<i class="var">GT</i>)</code> is the type of possibly-empty finite multisets of elements
  of <code><i class="var">GT</i></code>. 



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_multiset">multiset</span></span>(_:(<span id="Variable116_GT"><i class="var">GT</i></span>)<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable138_GT"><i class="var">GT</i></span>)</code></pre></div>

  Note that <code><span class="name"><a href="#Name_multiset">multiset</a></span>(...)</code> is not a constructor operation. The order of
  argument values is ignored, but duplicates are significant, e.g., 
  <code><span class="name"><a href="#Name_multiset">multiset</a></span>(1, 2, 2)</code> is equivalent to <code><span class="name"><a href="#Name_multiset">multiset</a></span>(2, 1, 2)</code>, but not to
  <code><span class="name"><a href="#Name_multiset">multiset</a></span>(1, 2)</code> or <code><span class="name"><a href="#Name_multiset">multiset</a></span>(2, 1)</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_multiset-elements">multiset-elements</span></span>(_:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable268_GT"><i class="var">GT</i></span>)) : =>(<span id="Variable288_GT"><i class="var">GT</i></span>)<sup class="sup">*</sup></code></pre></div>

  For each multiset <code><i class="var">MS</i></code>, the sequence of values <code><i class="var">V<sup class="sup">*</sup></i></code> returned by 
  <code><span class="name"><a href="#Name_multiset-elements">multiset-elements</a></span>(<i class="var">MS</i>)</code> contains each element of <code><i class="var">MS</i></code> the same number of times
  as <code><i class="var">MS</i></code> does.
  The order of the values in <code><i class="var">V<sup class="sup">*</sup></i></code> is unspecified, and may vary between multisets.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_multiset">multiset</a></span>(<span class="name"><a href="#Name_multiset-elements">multiset-elements</a></span>(<i class="var">S</i>)) == <i class="var">S</i></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_multiset-occurrences">multiset-occurrences</span></span>(_:<span id="Variable427_GT"><i class="var">GT</i></span>, _:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable439_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_multiset-occurrences">multiset-occurrences</a></span>(<i class="var">GV</i>, <i class="var">MS</i>)</code> returns the number of occurrences of <code><i class="var">GV</i></code>
  in <code><i class="var">MS</i></code>. 



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_multiset-insert">multiset-insert</span></span>(_:<span id="Variable528_GT"><i class="var">GT</i></span>, _:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable548_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable571_GT"><i class="var">GT</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_multiset-insert">multiset-insert</a></span>(<i class="var">GV</i>, <i class="var">N</i>, <i class="var">MS</i>)</code> returns the multiset that differs from <code><i class="var">MS</i></code> 
  by containing <code><i class="var">N</i></code> more copies of <code><i class="var">GV</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_multiset-delete">multiset-delete</span></span>(_:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable668_GT"><i class="var">GT</i></span>), _:<span id="Variable685_GT"><i class="var">GT</i></span>, _:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable710_GT"><i class="var">GT</i></span>)</code></pre></div>

 <code><span class="name"><a href="#Name_multiset-delete">multiset-delete</a></span>(<i class="var">MS</i>, <i class="var">GV</i>, <i class="var">N</i>)</code> removes <code><i class="var">N</i></code> copies of <code><i class="var">V</i></code> from the multiset <code><i class="var">MS</i></code>,
 or all copies of <code><i class="var">GV</i></code> if there are fewer than <code><i class="var">N</i></code> in <code><i class="var">MS</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-submultiset">is-submultiset</span></span>(_:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable846_GT"><i class="var">GT</i></span>), _:<span class="name"><a href="#Name_multisets">multisets</a></span>(<span id="Variable864_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_is-submultiset">is-submultiset</a></span>(<i class="var">MS<sub class="sub">1</sub></i>, <i class="var">MS<sub class="sub">2</sub></i>)</code> tests whether every element of <code><i class="var">MS<sub class="sub">1</sub></i></code> has equal or
  fewer occurrences in <code><i class="var">MS<sub class="sub">1</sub></i></code> than in <code><i class="var">MS<sub class="sub">2</sub></i></code>. 



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
[Multisets.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Multisets/Multisets.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Multisets
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Multisets
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Multisets/Multisets.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Multisets/Multisets.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
