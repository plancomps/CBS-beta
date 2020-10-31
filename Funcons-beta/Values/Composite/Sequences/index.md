---
layout: default
title: "Sequences"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Sequences.cbs]
-----------------------------

### Sequences of values

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_length">length</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_index">index</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-in">is-in</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_first">first</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_second">second</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_third">third</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_first-n">first-n</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_reverse">reverse</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_n-of">n-of</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_intersperse">intersperse</a></span>
]</code></pre></div>



  Sequences of two or more values are not themselves values, nor is the empty
  sequence a value. However, sequences can be provided to funcons as arguments,
  and returned as results. Many operations on composite values can be expressed
  by extracting their components as sequences, operating on the sequences, then
  forming the required composite values from the resulting sequences.
  
  A sequence with elements <code><i class="var">X<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Xn</i></code> is written <code><i class="var">X<sub class="sub">1</sub></i>,...,<i class="var">Xn</i></code>.
  A sequence with a single element <code><i class="var">X</i></code> is identified with (and written) <code><i class="var">X</i></code>.
  An empty sequence is indicated by the absence of a term.
  Any sequence <code><i class="var">X<sup class="sup">*</sup></i></code> can be enclosed in parentheses <code>(<i class="var">X<sup class="sup">*</sup></i>)</code>, e.g.:
  <code>( )</code>, <code>(1)</code>, <code>(1,2,3)</code>. Superfluous commas are ignored.
  
  The elements of a type sequence <code><i class="var">T<sub class="sub">1</sub></i>,...,<i class="var">Tn</i></code> are the value sequences <code><i class="var">V<sub class="sub">1</sub></i>,...,<i class="var">Vn</i></code>
  where <code><i class="var">V<sub class="sub">1</sub></i>:<i class="var">T<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Vn</i>:<i class="var">Tn</i></code>. The only element of the empty type sequence <code>( )</code>
  is the empty value sequence <code>( )</code>.
  
  <code>(<i class="var">T</i>)^<i class="var">N</i></code> is equivalent to <code><i class="var">T</i>,...,<i class="var">T</i></code> with <code><i class="var">N</i></code> occurrences of <code><i class="var">T</i></code>.
  <code>(<i class="var">T</i>)<sup class="sup">*</sup></code> is equivalent to the union of all <code>(<i class="var">T</i>)^<i class="var">N</i></code> for <code><i class="var">N</i></code>>=0,
  <code>(<i class="var">T</i>)<sup class="sup">+</sup></code> is equivalent to the union of all <code>(<i class="var">T</i>)^<i class="var">N</i></code> for <code><i class="var">N</i></code>>=1, and
  <code>(<i class="var">T</i>)<sup class="sup">?</sup></code> is equivalent to <code><i class="var">T</i> | ( )</code>.
  The parentheses around <code><i class="var">T</i></code> above can be omitted when they are not needed for
  disambiguation.
    
  (Non-trivial) sequence types are not values, so not included in <code><span class="name"><a href="../../Value-Types/index.html#Name_types">types</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i> 
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_length">length</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_length">length</a></span>(<i class="var">V<sup class="sup">*</sup></i>)</code> gives the number of elements in <code><i class="var">V<sup class="sup">*</sup></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_length">length</a></span>( ) ~> 0
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_length">length</a></span>(<span id="Variable675_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable684_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-successor">natural-successor</a></span>(<span class="name"><a href="#Name_length">length</a></span>(<a href="#Variable684_V*"><i class="var">V<sup class="sup">*</sup></i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-in">is-in</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-in">is-in</a></span>(<span id="Variable756_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span> ,<span id="Variable765_V'"><i class="var">V&prime;</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable774_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_or">or</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable756_V"><i class="var">V</i></a>, <a href="#Variable765_V'"><i class="var">V&prime;</i></a>), <span class="name"><a href="#Name_is-in">is-in</a></span>(<a href="#Variable756_V"><i class="var">V</i></a>, <a href="#Variable774_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-in">is-in</a></span>(<span id="Variable842_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, ( )) ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>



#### Sequence indexing

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_index">index</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup></code></pre></div>

  <code><span class="name"><a href="#Name_index">index</a></span>(<i class="var">N</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> gives the <code><i class="var">N</i></code>th element of <code><i class="var">V<sup class="sup">*</sup></i></code>, if it exists, otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(1, <span id="Variable988_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable997_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable988_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1047_N"><i class="var">N</i></a>) ~> <span id="Variable1036_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------
  <span class="name"><a href="#Name_index">index</a></span>(<span id="Variable1047_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1063_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_index">index</a></span>(<a href="#Variable1036_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1063_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(0, <span id="Variable1108_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>



 Total indexing funcons: 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_first">first</span></span>(_:<span id="Variable1168_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1193_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first">first</a></span>(<span id="Variable1202_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1214_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1202_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_second">second</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span id="Variable1251_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1277_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_second">second</a></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1293_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1305_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1293_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_third">third</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span id="Variable1351_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1378_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_third">third</a></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1401_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1413_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1401_V"><i class="var">V</i></a></code></pre></div>



#### Homogeneous sequences



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_first-n">first-n</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:(<span id="Variable1473_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1495_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first-n">first-n</a></span>(0, <span id="Variable1514_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1570_N"><i class="var">N</i></a>) ~> <span id="Variable1559_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------
  <span class="name"><a href="#Name_first-n">first-n</a></span>(<span id="Variable1570_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, <span id="Variable1578_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1590_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<a href="#Variable1578_V"><i class="var">V</i></a>,<span class="name"><a href="#Name_first-n">first-n</a></span>(<a href="#Variable1559_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1590_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first-n">first-n</a></span>(<span id="Variable1651_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_drop-first-n">drop-first-n</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:(<span id="Variable1689_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1711_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(0, <span id="Variable1730_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable1730_V*"><i class="var">V<sup class="sup">*</sup></i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1788_N"><i class="var">N</i></a>) ~> <span id="Variable1777_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------------
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<span id="Variable1788_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, _:<i class="var">T</i>, <span id="Variable1807_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<a href="#Variable1777_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1807_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<span id="Variable1857_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reverse">reverse</span></span>(_:(<span id="Variable1887_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1908_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_reverse">reverse</a></span>( ) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_reverse">reverse</a></span>(<span id="Variable1937_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1949_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<span class="name"><a href="#Name_reverse">reverse</a></span>(<a href="#Variable1949_V*"><i class="var">V<sup class="sup">*</sup></i></a>), <a href="#Variable1937_V"><i class="var">V</i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_n-of">n-of</span></span>(<span id="Variable2002_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, <span id="Variable2011_V"><i class="var">V</i></span>:<span id="Variable2015_T"><i class="var">T</i></span>) : =>(<span id="Variable2030_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_n-of">n-of</a></span>(0, _:<i class="var">T</i>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable2096_N"><i class="var">N</i></a>) ~> <span id="Variable2085_N'"><i class="var">N&prime;</i></span>
  --------------------------------------------------
  <span class="name"><a href="#Name_n-of">n-of</a></span>(<span id="Variable2096_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, <span id="Variable2104_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> (<a href="#Variable2104_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_n-of">n-of</a></span>(<a href="#Variable2085_N'"><i class="var">N&prime;</i></a>, <a href="#Variable2104_V"><i class="var">V</i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_intersperse">intersperse</span></span>(_:<span id="Variable2160_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable2171_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2193_T"><i class="var">T</i></span>, (<span id="Variable2199_T'"><i class="var">T&prime;</i></span>, <span id="Variable2204_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">?</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(_:<i class="var">T&prime;</i>, ( )) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(_:<i class="var">T&prime;</i>, <span id="Variable2270_V"><i class="var">V</i></span>) ~> <a href="#Variable2270_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(<span id="Variable2292_V'"><i class="var">V&prime;</i></span>:<i class="var">T&prime;</i>, <span id="Variable2305_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<i class="var">T</i>, <span id="Variable2317_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<i class="var">T</i>, <span id="Variable2329_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<a href="#Variable2305_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable2292_V'"><i class="var">V&prime;</i></a>, <span class="name"><a href="#Name_intersperse">intersperse</a></span>(<a href="#Variable2292_V'"><i class="var">V&prime;</i></a>, <a href="#Variable2317_V2"><i class="var">V<sub class="sub">2</sub></i></a>, <a href="#Variable2329_V*"><i class="var">V<sup class="sup">*</sup></i></a>))</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Sequences.cbs]: Sequences.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Sequences/Sequences.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
