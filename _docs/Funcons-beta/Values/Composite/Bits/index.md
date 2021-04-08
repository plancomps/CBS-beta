---
title: "Bits"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Bits.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Bits and bit vectors

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_bits">bits</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_bit-vectors">bit-vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector">bit-vector</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_bytes">bytes</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_octets">octets</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-not">bit-vector-not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-and">bit-vector-and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-or">bit-vector-or</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-xor">bit-vector-xor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-shift-left">bit-vector-shift-left</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-logical-shift-right">bit-vector-logical-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-arithmetic-shift-right">bit-vector-arithmetic-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_integer-to-bit-vector">integer-to-bit-vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bit-vector-to-natural">bit-vector-to-natural</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_signed-bit-vector-maximum">signed-bit-vector-maximum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_signed-bit-vector-minimum">signed-bit-vector-minimum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-in-signed-bit-vector">is-in-signed-bit-vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-in-unsigned-bit-vector">is-in-unsigned-bit-vector</a></span>
]</code></pre></div>



#### Bits

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_bits">bits</span></span> ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>


  <code><span class="name"><a href="../../Primitive/Booleans/index.html#Name_false">false</a></span></code> represents the absence of a bit, <code><span class="name"><a href="../../Primitive/Booleans/index.html#Name_true">true</a></span></code> its presence.



#### Bit vectors

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_bit-vectors">bit-vectors</span></span>(<span id="Variable148_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) ::= <span id="Name_bit-vector">bit-vector</span>(_:<span class="name"><a href="#Name_bits">bits</a></span>^<span id="Variable169_N"><i class="var">N</i></span>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_bytes">bytes</span></span> ~> <span class="name"><a href="#Name_bit-vectors">bit-vectors</a></span>(8)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_octets">octets</span></span> = <span class="name"><a href="#Name_bytes">bytes</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_BT"><i class="var">BT</i></span> <: <span class="name"><a href="#Name_bit-vectors">bit-vectors</a></span>(_)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-not">bit-vector-not</span></span>(_:<span id="Variable237_BT"><i class="var">BT</i></span>) : =><span id="Variable251_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-and">bit-vector-and</span></span>(_:<span id="Variable264_BT"><i class="var">BT</i></span>, _:<span id="Variable275_BT"><i class="var">BT</i></span>) : =><span id="Variable290_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-or">bit-vector-or</span></span>(_:<span id="Variable303_BT"><i class="var">BT</i></span>, _:<span id="Variable314_BT"><i class="var">BT</i></span>) : =><span id="Variable329_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-xor">bit-vector-xor</span></span>(_:<span id="Variable342_BT"><i class="var">BT</i></span>, _:<span id="Variable353_BT"><i class="var">BT</i></span>) : =><span id="Variable368_BT"><i class="var">BT</i></span></code></pre></div>

  The above four funcons are the natural extensions of funcons from <code><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code>
  to <code><span class="name"><a href="#Name_bit-vectors">bit-vectors</a></span>(<i class="var">N</i>)</code> of the same length.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-shift-left">bit-vector-shift-left</span></span>(_:<span id="Variable417_BT"><i class="var">BT</i></span>, _:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : <span id="Variable439_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-logical-shift-right">bit-vector-logical-shift-right</span></span>(_:<span id="Variable451_BT"><i class="var">BT</i></span>, _:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : <span id="Variable473_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-arithmetic-shift-right">bit-vector-arithmetic-shift-right</span></span>(_:<span id="Variable485_BT"><i class="var">BT</i></span>, _:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : <span id="Variable507_BT"><i class="var">BT</i></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-to-bit-vector">integer-to-bit-vector</span></span>(_:<span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable524_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : <span class="name"><a href="#Name_bit-vectors">bit-vectors</a></span>(<span id="Variable540_N"><i class="var">N</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_integer-to-bit-vector">integer-to-bit-vector</a></span>(<i class="var">M</i>, <i class="var">N</i>)</code> converts an integer <code><i class="var">M</i></code> to a bit-vector of
  length <code><i class="var">N</i></code>, using Two's Complement representation.  If the integer is out of
  range of the representation, it will wrap around (modulo 2^N).


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-to-integer">bit-vector-to-integer</span></span>(_:<span id="Variable616_BT"><i class="var">BT</i></span>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>(<i class="var">B</i>)</code> interprets a bit-vector <code><i class="var">BV</i></code> as an integer
  in Two's Complement representation.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bit-vector-to-natural">bit-vector-to-natural</span></span>(_:<span id="Variable679_BT"><i class="var">BT</i></span>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_bit-vector-to-natural">bit-vector-to-natural</a></span>(<i class="var">BV</i>)</code> interprets a bit-vector <code><i class="var">BV</i></code> as a natural number
  in unsigned representation.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</span></span>(<span id="Variable739_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>
    ~> <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-power">integer-power</a></span>(2, <a href="#Variable739_N"><i class="var">N</i></a>), 1)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_signed-bit-vector-maximum">signed-bit-vector-maximum</span></span>(<span id="Variable786_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span>
    ~> <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-power">integer-power</a></span>(2, <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<a href="#Variable786_N"><i class="var">N</i></a>, 1)), 1)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_signed-bit-vector-minimum">signed-bit-vector-minimum</span></span>(<span id="Variable843_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span>
    ~> <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-power">integer-power</a></span>(2, <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<a href="#Variable843_N"><i class="var">N</i></a>, 1)))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-in-signed-bit-vector">is-in-signed-bit-vector</span></span>(<span id="Variable897_M"><i class="var">M</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable906_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
    ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>(<a href="#Variable897_M"><i class="var">M</i></a>, <span class="name"><a href="#Name_signed-bit-vector-maximum">signed-bit-vector-maximum</a></span>(<a href="#Variable906_N"><i class="var">N</i></a>)),
           <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>(<a href="#Variable897_M"><i class="var">M</i></a>, <span class="name"><a href="#Name_signed-bit-vector-minimum">signed-bit-vector-minimum</a></span>(<a href="#Variable906_N"><i class="var">N</i></a>)))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-in-unsigned-bit-vector">is-in-unsigned-bit-vector</span></span>(<span id="Variable987_M"><i class="var">M</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable996_N"><i class="var">N</i></span>:<span class="name"><a href="../../Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
    ~> <span class="name"><a href="../../Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>(<a href="#Variable987_M"><i class="var">M</i></a>, <span class="name"><a href="#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>(<a href="#Variable996_N"><i class="var">N</i></a>)),
           <span class="name"><a href="../../Primitive/Integers/index.html#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>(<a href="#Variable987_M"><i class="var">M</i></a>, 0))</code></pre></div>



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
[Bits.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Bits/Bits.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Bits
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Bits
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Bits/Bits.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Bits/Bits.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
