---
title: "Sequences"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Sequences.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
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
  
  A sequence with elements <code>X_1</code>, ..., <code>X_n</code> is written <code>X_1,...,X_n</code>.
  A sequence with a single element <code><i class="var">X</i></code> is identified with (and written) <code><i class="var">X</i></code>.
  An empty sequence is indicated by the absence of a term.
  Any sequence <code><i class="var">X<sup class="sup">*</sup></i></code> can be enclosed in parentheses <code>(<i class="var">X<sup class="sup">*</sup></i>)</code>, e.g.:
  <code>( )</code>, <code>(1)</code>, <code>(1,2,3)</code>. Superfluous commas are ignored.
  
  The elements of a type sequence <code>T_1,...,T_n</code> are the value sequences <code>V_1,...,V_n</code>
  where <code>V_1:T_1</code>, ..., <code>V_n:T_n</code>. The only element of the empty type sequence <code>( )</code>
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
  <span class="name"><a href="#Name_length">length</a></span>(<span id="Variable682_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable691_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-successor">natural-successor</a></span>(<span class="name"><a href="#Name_length">length</a></span>(<a href="#Variable691_V*"><i class="var">V<sup class="sup">*</sup></i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-in">is-in</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-in">is-in</a></span>(<span id="Variable763_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span> ,<span id="Variable772_V'"><i class="var">V&prime;</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable781_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_or">or</a></span>(<span class="name"><a href="../../Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable763_V"><i class="var">V</i></a>, <a href="#Variable772_V'"><i class="var">V&prime;</i></a>), <span class="name"><a href="#Name_is-in">is-in</a></span>(<a href="#Variable763_V"><i class="var">V</i></a>, <a href="#Variable781_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-in">is-in</a></span>(<span id="Variable849_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, ( )) ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>



#### Sequence indexing

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_index">index</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup></code></pre></div>

  <code><span class="name"><a href="#Name_index">index</a></span>(<i class="var">N</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> gives the <code><i class="var">N</i></code>th element of <code><i class="var">V<sup class="sup">*</sup></i></code>, if it exists, otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(1, <span id="Variable996_V"><i class="var">V</i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1005_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable996_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1055_N"><i class="var">N</i></a>) ~> <span id="Variable1044_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------
  <span class="name"><a href="#Name_index">index</a></span>(<span id="Variable1055_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1071_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_index">index</a></span>(<a href="#Variable1044_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1071_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(0, <span id="Variable1116_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_index">index</a></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>



 Total indexing funcons: 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_first">first</span></span>(_:<span id="Variable1176_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1201_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first">first</a></span>(<span id="Variable1210_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1222_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1210_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_second">second</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span id="Variable1259_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1285_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_second">second</a></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1301_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1313_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1301_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_third">third</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span id="Variable1359_T"><i class="var">T</i></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span id="Variable1386_T"><i class="var">T</i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_third">third</a></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span>, <span id="Variable1409_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1421_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) ~> <a href="#Variable1409_V"><i class="var">V</i></a></code></pre></div>



#### Homogeneous sequences



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_first-n">first-n</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:(<span id="Variable1482_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1504_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first-n">first-n</a></span>(0, <span id="Variable1523_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1579_N"><i class="var">N</i></a>) ~> <span id="Variable1568_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------
  <span class="name"><a href="#Name_first-n">first-n</a></span>(<span id="Variable1579_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, <span id="Variable1587_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1599_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<a href="#Variable1587_V"><i class="var">V</i></a>,<span class="name"><a href="#Name_first-n">first-n</a></span>(<a href="#Variable1568_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1599_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_first-n">first-n</a></span>(<span id="Variable1660_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_drop-first-n">drop-first-n</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:(<span id="Variable1698_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1720_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(0, <span id="Variable1739_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable1739_V*"><i class="var">V<sup class="sup">*</sup></i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable1797_N"><i class="var">N</i></a>) ~> <span id="Variable1786_N'"><i class="var">N&prime;</i></span>
  -----------------------------------------------------------------------
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<span id="Variable1797_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, _:<i class="var">T</i>, <span id="Variable1816_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<a href="#Variable1786_N'"><i class="var">N&prime;</i></a>, <a href="#Variable1816_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_drop-first-n">drop-first-n</a></span>(<span id="Variable1866_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, ( )) ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_reverse">reverse</span></span>(_:(<span id="Variable1896_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1917_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_reverse">reverse</a></span>( ) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_reverse">reverse</a></span>(<span id="Variable1946_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1958_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<span class="name"><a href="#Name_reverse">reverse</a></span>(<a href="#Variable1958_V*"><i class="var">V<sup class="sup">*</sup></i></a>), <a href="#Variable1946_V"><i class="var">V</i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_n-of">n-of</span></span>(<span id="Variable2011_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, <span id="Variable2020_V"><i class="var">V</i></span>:<span id="Variable2024_T"><i class="var">T</i></span>) : =>(<span id="Variable2039_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_n-of">n-of</a></span>(0, _:<i class="var">T</i>) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>(<a href="#Variable2105_N"><i class="var">N</i></a>) ~> <span id="Variable2094_N'"><i class="var">N&prime;</i></span>
  --------------------------------------------------
  <span class="name"><a href="#Name_n-of">n-of</a></span>(<span id="Variable2105_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>, <span id="Variable2113_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> (<a href="#Variable2113_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_n-of">n-of</a></span>(<a href="#Variable2094_N'"><i class="var">N&prime;</i></a>, <a href="#Variable2113_V"><i class="var">V</i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_intersperse">intersperse</span></span>(_:<span id="Variable2169_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable2180_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2202_T"><i class="var">T</i></span>, (<span id="Variable2208_T'"><i class="var">T&prime;</i></span>, <span id="Variable2213_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">?</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(_:<i class="var">T&prime;</i>, ( )) ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(_:<i class="var">T&prime;</i>, <span id="Variable2279_V"><i class="var">V</i></span>) ~> <a href="#Variable2279_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_intersperse">intersperse</a></span>(<span id="Variable2301_V'"><i class="var">V&prime;</i></span>:<i class="var">T&prime;</i>, <span id="Variable2314_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<i class="var">T</i>, <span id="Variable2326_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<i class="var">T</i>, <span id="Variable2338_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> (<a href="#Variable2314_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable2301_V'"><i class="var">V&prime;</i></a>, <span class="name"><a href="#Name_intersperse">intersperse</a></span>(<a href="#Variable2301_V'"><i class="var">V&prime;</i></a>, <a href="#Variable2326_V2"><i class="var">V<sub class="sub">2</sub></i></a>, <a href="#Variable2338_V*"><i class="var">V<sup class="sup">*</sup></i></a>))</code></pre></div>



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
[Sequences.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sequences/Sequences.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Sequences
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Sequences
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sequences/Sequences.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Sequences/Sequences.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
