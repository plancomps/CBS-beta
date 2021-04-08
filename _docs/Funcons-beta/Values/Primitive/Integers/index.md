---
title: "Integers"
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Integers.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Integers

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="#Name_ints">ints</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_integers-from">integers-from</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="#Name_from">from</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_integers-up-to">integers-up-to</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="#Name_up-to">up-to</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_bounded-integers">bounded-integers</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_bounded-ints">bounded-ints</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_positive-integers">positive-integers</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="#Name_pos-ints">pos-ints</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_negative-integers">negative-integers</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="#Name_neg-ints">neg-ints</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="#Name_nats">nats</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_natural-successor">natural-successor</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="#Name_nat-succ">nat-succ</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_natural-predecessor">natural-predecessor</a></span>          <i class="keyword">Alias</i> <span class="name"><a href="#Name_nat-pred">nat-pred</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-subtract">integer-subtract</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-sub">int-sub</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-multiply">integer-multiply</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-mul">int-mul</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-modulo">integer-modulo</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-mod">int-mod</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-power">integer-power</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-pow">int-pow</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-absolute-value">integer-absolute-value</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-abs">int-abs</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-negate">integer-negate</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="#Name_int-neg">int-neg</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-is-less">integer-is-less</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-less">is-less</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-less-or-equal">is-less-or-equal</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-is-greater">integer-is-greater</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-greater">is-greater</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-greater-or-equal">is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_binary-natural">binary-natural</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="#Name_binary">binary</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_octal-natural">octal-natural</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="#Name_octal">octal</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_decimal-natural">decimal-natural</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="#Name_decimal">decimal</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_hexadecimal-natural">hexadecimal-natural</a></span>          <i class="keyword">Alias</i> <span class="name"><a href="#Name_hexadecimal">hexadecimal</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-sequence">integer-sequence</a></span>
]</code></pre></div>




<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_integers">integers</span></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_ints">ints</span></span> = <span class="name"><a href="#Name_integers">integers</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_integers">integers</a></span></code> is the type of unbounded integers. Decimal notation is used to
  express particular integer values.



#### Subtypes of integers


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_integers-from">integers-from</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>) <: <span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_from">from</span></span> = <span class="name"><a href="#Name_integers-from">integers-from</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_integers-from">integers-from</a></span>(<i class="var">M</i>)</code> is the subtype of integers greater than or equal to <code><i class="var">M</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_integers-up-to">integers-up-to</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>) <: <span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_up-to">up-to</span></span> = <span class="name"><a href="#Name_integers-up-to">integers-up-to</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_integers-up-to">integers-up-to</a></span>(<i class="var">N</i>)</code> is the subtype of integers less than or equal to <code><i class="var">N</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_bounded-integers">bounded-integers</span></span>(<span id="Variable387_M"><i class="var">M</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>, <span id="Variable396_N"><i class="var">N</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>)
    ~> <span class="name"><a href="#Name_integers-from">integers-from</a></span>(<a href="#Variable387_M"><i class="var">M</i></a>) & <span class="name"><a href="#Name_integers-up-to">integers-up-to</a></span>(<a href="#Variable396_N"><i class="var">N</i></a>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_bounded-ints">bounded-ints</span></span> = <span class="name"><a href="#Name_bounded-integers">bounded-integers</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_bounded-integers">bounded-integers</a></span>(<i class="var">M</i>,<i class="var">N</i>)</code> is the subtype of integers from <code><i class="var">M</i></code> to <code><i class="var">N</i></code>, inclusive.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_positive-integers">positive-integers</span></span> ~> <span class="name"><a href="#Name_integers-from">integers-from</a></span>(1)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_pos-ints">pos-ints</span></span> = <span class="name"><a href="#Name_positive-integers">positive-integers</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_negative-integers">negative-integers</span></span> ~> <span class="name"><a href="#Name_integers-up-to">integers-up-to</a></span>(-1)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_neg-ints">neg-ints</span></span> = <span class="name"><a href="#Name_negative-integers">negative-integers</a></span></code></pre></div>



#### Natural numbers


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_natural-numbers">natural-numbers</span></span> ~> <span class="name"><a href="#Name_integers-from">integers-from</a></span>(0)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_nats">nats</span></span> = <span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_natural-successor">natural-successor</span></span>(<span id="Variable585_N"><i class="var">N</i></span>:<span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_nat-succ">nat-succ</span></span> = <span class="name"><a href="#Name_natural-successor">natural-successor</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_natural-predecessor">natural-predecessor</span></span>(_:<span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_nat-pred">nat-pred</span></span> = <span class="name"><a href="#Name_natural-predecessor">natural-predecessor</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_natural-predecessor">natural-predecessor</a></span>(0) == ( )</code></pre></div>



#### Arithmetic


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-add">integer-add</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-add">int-add</span></span> = <span class="name"><a href="#Name_integer-add">integer-add</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-subtract">integer-subtract</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-sub">int-sub</span></span> = <span class="name"><a href="#Name_integer-subtract">integer-subtract</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-multiply">integer-multiply</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-mul">int-mul</span></span> = <span class="name"><a href="#Name_integer-multiply">integer-multiply</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-divide">integer-divide</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-div">int-div</span></span> = <span class="name"><a href="#Name_integer-divide">integer-divide</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_integer-divide">integer-divide</a></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, 0) == ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-modulo">integer-modulo</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-mod">int-mod</span></span> = <span class="name"><a href="#Name_integer-modulo">integer-modulo</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_integer-modulo">integer-modulo</a></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, 0) == ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-power">integer-power</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-pow">int-pow</span></span> = <span class="name"><a href="#Name_integer-power">integer-power</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-absolute-value">integer-absolute-value</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-abs">int-abs</span></span> = <span class="name"><a href="#Name_integer-absolute-value">integer-absolute-value</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-negate">integer-negate</span></span>(<span id="Variable925_N"><i class="var">N</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span>
    ~> <span class="name"><a href="#Name_integer-subtract">integer-subtract</a></span>(0, <a href="#Variable925_N"><i class="var">N</i></a>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_int-neg">int-neg</span></span> = <span class="name"><a href="#Name_integer-negate">integer-negate</a></span></code></pre></div>



#### Comparison


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-is-less">integer-is-less</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-less">is-less</span></span> = <span class="name"><a href="#Name_integer-is-less">integer-is-less</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-is-less-or-equal">integer-is-less-or-equal</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-less-or-equal">is-less-or-equal</span></span> = <span class="name"><a href="#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-is-greater">integer-is-greater</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-greater">is-greater</span></span> = <span class="name"><a href="#Name_integer-is-greater">integer-is-greater</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-is-greater-or-equal">integer-is-greater-or-equal</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="../Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-greater-or-equal">is-greater-or-equal</span></span> = <span class="name"><a href="#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span></code></pre></div>



#### Conversion


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_binary-natural">binary-natural</span></span>(_:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_binary">binary</span></span> = <span class="name"><a href="#Name_binary-natural">binary-natural</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_octal-natural">octal-natural</span></span>(_:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_octal">octal</span></span> = <span class="name"><a href="#Name_octal-natural">octal-natural</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_decimal-natural">decimal-natural</span></span>(_:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_decimal">decimal</span></span> = <span class="name"><a href="#Name_decimal-natural">decimal-natural</a></span></code></pre></div>


  Literal natural numbers <code><i class="var">N</i></code> are equivalent to <code><span class="name"><a href="#Name_decimal-natural">decimal-natural</a></span>"N"</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_hexadecimal-natural">hexadecimal-natural</span></span>(_:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_natural-numbers">natural-numbers</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_hexadecimal">hexadecimal</span></span> = <span class="name"><a href="#Name_hexadecimal-natural">hexadecimal-natural</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-sequence">integer-sequence</span></span>(_:<span class="name"><a href="#Name_integers">integers</a></span>, _:<span class="name"><a href="#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_integers">integers</a></span><sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_integer-sequence">integer-sequence</a></span>(<i class="var">M</i>, <i class="var">N</i>)</code> is the seqeunce of integers from <code><i class="var">M</i></code> to <code><i class="var">N</i></code>,
  except that if <code><i class="var">M</i></code> is greater than <code><i class="var">N</i></code>, it is the empty sequence.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-greater">is-greater</a></span>(<a href="#Variable1416_M"><i class="var">M</i></a>, <a href="#Variable1424_N"><i class="var">N</i></a>) == <span class="name"><a href="../Booleans/index.html#Name_false">false</a></span>
  ------------------------------------------------
  <span class="name"><a href="#Name_integer-sequence">integer-sequence</a></span>(<span id="Variable1416_M"><i class="var">M</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>, <span id="Variable1424_N"><i class="var">N</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>)
    ~> (<a href="#Variable1416_M"><i class="var">M</i></a>, <span class="name"><a href="#Name_integer-sequence">integer-sequence</a></span>(<span class="name"><a href="#Name_integer-add">integer-add</a></span>(<a href="#Variable1416_M"><i class="var">M</i></a>, 1), <a href="#Variable1424_N"><i class="var">N</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-greater">is-greater</a></span>(<a href="#Variable1507_M"><i class="var">M</i></a>, <a href="#Variable1515_N"><i class="var">N</i></a>) == <span class="name"><a href="../Booleans/index.html#Name_true">true</a></span>
  -----------------------------------------------
  <span class="name"><a href="#Name_integer-sequence">integer-sequence</a></span>(<span id="Variable1507_M"><i class="var">M</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>, <span id="Variable1515_N"><i class="var">N</i></span>:<span class="name"><a href="#Name_integers">integers</a></span>) ~> ( )</code></pre></div>



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
[Integers.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Integers/Integers.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Integers
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Integers
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Integers/Integers.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Integers/Integers.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
