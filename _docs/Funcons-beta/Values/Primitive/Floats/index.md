---
title: "Floats"
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Floats.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
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
  
  - <http://doi.org/10.1109/IEEESTD.2008.4610935>
  - <https://en.wikipedia.org/wiki/IEEE_754>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_float-formats">float-formats</span></span> ::= <span id="Name_binary32">binary32</span> | <span id="Name_binary64">binary64</span> | <span id="Name_binary128">binary128</span> | <span id="Name_decimal64">decimal64</span> | <span id="Name_decimal128">decimal128</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_floats">floats</span></span>(_:<span class="name"><a href="#Name_float-formats">float-formats</a></span>)</code></pre></div>

  Note that for distinct formats <code><i class="var">FF<sub class="sub">1</sub></i></code>, <code><i class="var">FF<sub class="sub">2</sub></i></code>, the types <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF<sub class="sub">1</sub></i>)</code> and
  <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF<sub class="sub">2</sub></i>)</code> are not necessarily disjoint.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float">float</span></span>(<span id="Variable373_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
        _:<span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, 1), _:<span class="name"><a href="../Integers/index.html#Name_natural-numbers">natural-numbers</a></span>, _:<span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable426_FF"><i class="var">FF</i></span>)</code></pre></div>

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
  <span class="name"><span id="Name_quiet-not-a-number">quiet-not-a-number</span></span>(<span id="Variable528_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable543_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_qNaN">qNaN</span></span> = <span class="name"><a href="#Name_quiet-not-a-number">quiet-not-a-number</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_signaling-not-a-number">signaling-not-a-number</span></span>(<span id="Variable561_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable576_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_sNaN">sNaN</span></span> = <span class="name"><a href="#Name_signaling-not-a-number">signaling-not-a-number</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_positive-infinity">positive-infinity</span></span>(<span id="Variable594_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable609_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_pos-inf">pos-inf</span></span> = <span class="name"><a href="#Name_positive-infinity">positive-infinity</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_negative-infinity">negative-infinity</span></span>(<span id="Variable627_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : <span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable642_FF"><i class="var">FF</i></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_neg-inf">neg-inf</span></span> = <span class="name"><a href="#Name_negative-infinity">negative-infinity</a></span></code></pre></div>



#### Conversions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-convert">float-convert</span></span>(<span id="Variable681_FF1"><i class="var">FF<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
                <span id="Variable691_FF2"><i class="var">FF<sub class="sub">2</sub></i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, <span id="Variable700_F"><i class="var">F</i></span>:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable706_FF1"><i class="var">FF<sub class="sub">1</sub></i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable730_FF2"><i class="var">FF<sub class="sub">2</sub></i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_decimal-float">decimal-float</span></span>(<span id="Variable746_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, 
                _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>, _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>, _:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable789_FF"><i class="var">FF</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_decimal-float">decimal-float</a></span>(<i class="var">F</i>, "M", "N", "E")</code> is an approximation in <code><span class="name"><a href="#Name_floats">floats</a></span>(<i class="var">FF</i>)</code> to the
  value of 'M.N' times 10 to the power 'E', where "M.N" is decimal notation
  (optionally-signed) for a fixed-point number and "E" is decimal notation
  (optionally signed) for an integer. When any argument string is invalid,
  the result is <code><span class="name"><a href="#Name_quiet-not-a-number">quiet-not-a-number</a></span>(<i class="var">F</i>)</code>.



#### Comparison

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-equal">float-equal</span></span>(<span id="Variable892_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
              _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable905_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable923_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-less">float-is-less</span></span>(<span id="Variable952_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable965_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable983_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-less-or-equal">float-is-less-or-equal</span></span>(<span id="Variable1012_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                         _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1025_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1043_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-greater">float-is-greater</span></span>(<span id="Variable1072_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                   _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1085_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1103_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-is-greater-or-equal">float-is-greater-or-equal</span></span>(<span id="Variable1132_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                            _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1145_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1163_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
#### Arithmetic

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-negate">float-negate</span></span>(<span id="Variable1206_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1219_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1241_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-absolute-value">float-absolute-value</span></span>(<span id="Variable1257_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1270_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1292_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-add">float-add</span></span>(<span id="Variable1308_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1321_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1339_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1362_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-subtract">float-subtract</span></span>(<span id="Variable1378_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1391_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1409_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1432_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-multiply">float-multiply</span></span>(<span id="Variable1448_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1461_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1479_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1502_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-multiply-add">float-multiply-add</span></span>(<span id="Variable1518_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>,
                     _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1531_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1549_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1567_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1591_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-divide">float-divide</span></span>(<span id="Variable1607_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1620_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1638_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1661_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-remainder">float-remainder</span></span>(<span id="Variable1677_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1690_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1708_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1731_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sqrt">float-sqrt</span></span>(<span id="Variable1747_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1760_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1782_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-integer-power">float-integer-power</span></span>(<span id="Variable1798_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1811_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1842_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-float-power">float-float-power</span></span>(<span id="Variable1858_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1871_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1889_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1912_FF"><i class="var">FF</i></span>)</code></pre></div>
#### Rounding

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-round-ties-to-even">float-round-ties-to-even</span></span>(<span id="Variable1948_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable1961_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-round-ties-to-infinity">float-round-ties-to-infinity</span></span>(<span id="Variable1989_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2002_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-floor">float-floor</span></span>(<span id="Variable2030_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2043_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-ceiling">float-ceiling</span></span>(<span id="Variable2071_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2084_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-truncate">float-truncate</span></span>(<span id="Variable2112_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2125_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="../Integers/index.html#Name_integers">integers</a></span></code></pre></div>
#### Miscellaneous

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-pi">float-pi</span></span>(<span id="Variable2167_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2183_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-e">float-e</span></span>(<span id="Variable2199_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2215_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-log">float-log</span></span>(<span id="Variable2231_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2244_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2266_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-log10">float-log10</span></span>(<span id="Variable2282_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2295_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2317_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-exp">float-exp</span></span>(<span id="Variable2333_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2346_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2368_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sin">float-sin</span></span>(<span id="Variable2384_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2397_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2419_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-cos">float-cos</span></span>(<span id="Variable2435_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2448_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2470_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-tan">float-tan</span></span>(<span id="Variable2486_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2499_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2521_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-asin">float-asin</span></span>(<span id="Variable2537_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2550_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2572_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-acos">float-acos</span></span>(<span id="Variable2588_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2601_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2623_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atan">float-atan</span></span>(<span id="Variable2639_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2652_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2674_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-sinh">float-sinh</span></span>(<span id="Variable2690_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2703_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2725_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-cosh">float-cosh</span></span>(<span id="Variable2741_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2754_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2776_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-tanh">float-tanh</span></span>(<span id="Variable2792_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2805_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2827_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-asinh">float-asinh</span></span>(<span id="Variable2843_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2856_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2878_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-acosh">float-acosh</span></span>(<span id="Variable2894_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2907_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2929_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atanh">float-atanh</span></span>(<span id="Variable2945_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2958_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable2980_FF"><i class="var">FF</i></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_float-atan2">float-atan2</span></span>(<span id="Variable2996_FF"><i class="var">FF</i></span>:<span class="name"><a href="#Name_float-formats">float-formats</a></span>, _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3009_FF"><i class="var">FF</i></span>), _:<span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3027_FF"><i class="var">FF</i></span>)) : =><span class="name"><a href="#Name_floats">floats</a></span>(<span id="Variable3050_FF"><i class="var">FF</i></span>)</code></pre></div>


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
[Floats.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Floats/Floats.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Floats
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Floats
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Floats/Floats.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Floats/Floats.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
