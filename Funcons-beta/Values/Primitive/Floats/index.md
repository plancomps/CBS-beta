---
layout: default
title: "Floats"
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Floats.cbs]
-----------------------------

### Floats

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_float-formats">float-formats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_binary32">binary32</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_binary64">binary64</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_binary128">binary128</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_decimal64">decimal64</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_decimal128">decimal128</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_floats">floats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float">float</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_quiet-not-a-number">quiet-not-a-number</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="#Name_qNaN">qNaN</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_signaling-not-a-number">signaling-not-a-number</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="#Name_sNaN">sNaN</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_positive-infinity">positive-infinity</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_pos-inf">pos-inf</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_negative-infinity">negative-infinity</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_neg-inf">neg-inf</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-convert">float-convert</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_decimal-float">decimal-float</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-equal">float-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-is-less">float-is-less</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-is-less-or-equal">float-is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-is-greater">float-is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-is-greater-or-equal">float-is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-negate">float-negate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-absolute-value">float-absolute-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-add">float-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-subtract">float-subtract</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-multiply">float-multiply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-multiply-add">float-multiply-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-divide">float-divide</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-remainder">float-remainder</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-sqrt">float-sqrt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-integer-power">float-integer-power</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-float-power">float-float-power</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-round-ties-to-even">float-round-ties-to-even</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-round-ties-to-infinity">float-round-ties-to-infinity</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-floor">float-floor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-ceiling">float-ceiling</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-truncate">float-truncate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-pi">float-pi</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-e">float-e</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-log">float-log</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-log10">float-log10</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-exp">float-exp</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-sin">float-sin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-cos">float-cos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-tan">float-tan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-asin">float-asin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-acos">float-acos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-atan">float-atan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-sinh">float-sinh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-cosh">float-cosh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-tanh">float-tanh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-asinh">float-asinh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-acosh">float-acosh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-atanh">float-atanh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_float-atan2">float-atan2</a></span>
]</code></pre></div>



  Floating-point numbers according to the IEEE 754 Standard (2008).

  See:
    - http://doi.org/10.1109/IEEESTD.2008.4610935
    - https://en.wikipedia.org/wiki/IEEE_754


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_float-formats">float-formats</span></span> ::= <span id="Name_binary32">binary32</span> | <span id="Name_binary64">binary64</span> | <span id="Name_binary128">binary128</span> | <span id="Name_decimal64">decimal64</span> | <span id="Name_decimal128">decimal128</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_floats">floats</span></span>(_:<span class="name"><a href="#Name_float-formats">float-formats</a></span>)</code></pre></div>

  Note that for distinct formats <code><i class="var">FF<sub class="sub">1</sub></i></code>, <code><i class="var">FF<sub class="sub">2</sub></i></code>, the types <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF<sub class="sub">1</sub></i>)</code> and
  <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF<sub class="sub">2</sub></i>)</code> are not necessarily disjoint.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float">float</span></span>(<span id="Variable372_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
        _:<span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, 1), _:<span class="name"><a href="../Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:<span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable425_FF"><i class="var">FF</i></span>)</code></pre></div>

  Each finite number is described by three integers: 
  * s = a sign (zero or one), 
  * c = a significand (or 'coefficient'), 
  * q = an exponent. 
  The numerical value of a finite number is (-1)^s * c * b^q
  where b is the base (2 or 10), also called radix.
  
  The possible finite values that can be represented in a format
  are determined by the base b, the number of digits in the significand 
  (precision p), and the exponent parameter emax:
  * c must be an integer in the range zero through (b^p)-1
    (e.g., if b=10 and p=7 then c is 0 through 9999999);
  * q must be an integer such that 1-emax <= q+p-1 <= emax
    (e.g., if p=7 and emax=96 then q is -101 through 90).

  Note that <code><span class="name"><a href="#Name_float">float</a></span>(<i class="var">FF</i>, <i class="var">S</i>, <i class="var">C</i>, <i class="var">Q</i>)</code> is not a 1-1 operation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_quiet-not-a-number">quiet-not-a-number</span></span>(<span id="Variable527_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable542_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_qNaN">qNaN</span></span> = <span class="name"><a href="#Name_quiet-not-a-number">quiet-not-a-number</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_signaling-not-a-number">signaling-not-a-number</span></span>(<span id="Variable560_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable575_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_sNaN">sNaN</span></span> = <span class="name"><a href="#Name_signaling-not-a-number">signaling-not-a-number</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_positive-infinity">positive-infinity</span></span>(<span id="Variable593_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable608_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_pos-inf">pos-inf</span></span> = <span class="name"><a href="#Name_positive-infinity">positive-infinity</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_negative-infinity">negative-infinity</span></span>(<span id="Variable626_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable641_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_neg-inf">neg-inf</span></span> = <span class="name"><a href="#Name_negative-infinity">negative-infinity</a></span></code></pre></div>



#### Conversions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-convert">float-convert</span></span>(<span id="Variable679_FF1"><i class="var">FF<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
                <span id="Variable689_FF2"><i class="var">FF<sub class="sub">2</sub></i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, <span id="Variable698_F"><i class="var">F</i></span>:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable704_FF1"><i class="var">FF<sub class="sub">1</sub></i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable728_FF2"><i class="var">FF<sub class="sub">2</sub></i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_decimal-float">decimal-float</span></span>(<span id="Variable744_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
                _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>, _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>, _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable787_FF"><i class="var">FF</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_decimal-float">decimal-float</a></span>(<i class="var">F</i>, "M", "N", "E")</code> is an approximation in <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF</i>)</code> to the
  value of 'M.N' times 10 to the power 'E', where "M.N" is decimal notation
  (optionally-signed) for a fixed-point number and "E" is decimal notation
  (optionally signed) for an integer. When any argument string is invalid,
  the result is <code><span class="name"><a href="#Name_quiet-not-a-number">quiet-not-a-number</a></span>(<i class="var">F</i>)</code>.



#### Comparison

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-equal">float-equal</span></span>(<span id="Variable889_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
              _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable902_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable920_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-less">float-is-less</span></span>(<span id="Variable949_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable962_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable980_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-less-or-equal">float-is-less-or-equal</span></span>(<span id="Variable1009_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                         _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1022_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1040_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-greater">float-is-greater</span></span>(<span id="Variable1069_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                   _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1082_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1100_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-greater-or-equal">float-is-greater-or-equal</span></span>(<span id="Variable1129_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                            _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1142_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1160_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
#### Arithmetic

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-negate">float-negate</span></span>(<span id="Variable1202_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1215_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1237_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-absolute-value">float-absolute-value</span></span>(<span id="Variable1253_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1266_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1288_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-add">float-add</span></span>(<span id="Variable1304_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1317_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1335_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1358_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-subtract">float-subtract</span></span>(<span id="Variable1374_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1387_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1405_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1428_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-multiply">float-multiply</span></span>(<span id="Variable1444_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1457_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1475_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1498_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-multiply-add">float-multiply-add</span></span>(<span id="Variable1514_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                     _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1527_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1545_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1563_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1587_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-divide">float-divide</span></span>(<span id="Variable1603_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1616_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1634_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1657_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-remainder">float-remainder</span></span>(<span id="Variable1673_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1686_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1704_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1727_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sqrt">float-sqrt</span></span>(<span id="Variable1743_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1756_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1778_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-integer-power">float-integer-power</span></span>(<span id="Variable1794_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1807_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1838_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-float-power">float-float-power</span></span>(<span id="Variable1854_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1867_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1885_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1908_FF"><i class="var">FF</i></span>)</code></pre></div>
#### Rounding

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-round-ties-to-even">float-round-ties-to-even</span></span>(<span id="Variable1943_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1956_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-round-ties-to-infinity">float-round-ties-to-infinity</span></span>(<span id="Variable1984_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1997_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-floor">float-floor</span></span>(<span id="Variable2025_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2038_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-ceiling">float-ceiling</span></span>(<span id="Variable2066_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2079_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-truncate">float-truncate</span></span>(<span id="Variable2107_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2120_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
#### Miscellaneous

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-pi">float-pi</span></span>(<span id="Variable2161_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2177_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-e">float-e</span></span>(<span id="Variable2193_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2209_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-log">float-log</span></span>(<span id="Variable2225_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2238_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2260_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-log10">float-log10</span></span>(<span id="Variable2276_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2289_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2311_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-exp">float-exp</span></span>(<span id="Variable2327_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2340_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2362_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sin">float-sin</span></span>(<span id="Variable2378_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2391_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2413_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-cos">float-cos</span></span>(<span id="Variable2429_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2442_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2464_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-tan">float-tan</span></span>(<span id="Variable2480_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2493_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2515_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-asin">float-asin</span></span>(<span id="Variable2531_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2544_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2566_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-acos">float-acos</span></span>(<span id="Variable2582_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2595_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2617_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atan">float-atan</span></span>(<span id="Variable2633_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2646_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2668_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sinh">float-sinh</span></span>(<span id="Variable2684_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2697_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2719_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-cosh">float-cosh</span></span>(<span id="Variable2735_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2748_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2770_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-tanh">float-tanh</span></span>(<span id="Variable2786_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2799_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2821_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-asinh">float-asinh</span></span>(<span id="Variable2837_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2850_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2872_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-acosh">float-acosh</span></span>(<span id="Variable2888_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2901_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2923_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atanh">float-atanh</span></span>(<span id="Variable2939_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2952_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2974_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atan2">float-atan2</span></span>(<span id="Variable2990_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3003_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3021_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3044_FF"><i class="var">FF</i></span>)</code></pre></div>


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Floats.cbs]: Floats.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Floats/Floats.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
