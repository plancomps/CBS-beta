---
title: "OC-L-Funcons-Index"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
# Computations

## Normal computation

### Flowing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_seq">seq</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while">while</a></span>
]</code></pre></div>


### Giving
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-map">left-to-right-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>
]</code></pre></div>


### Binding
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_accumulate">accumulate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_recursive">recursive</a></span>
]</code></pre></div>


### Storing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_vars">vars</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_alloc-init">alloc-init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>
]</code></pre></div>


### Interacting

#### Input
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
]</code></pre></div>


#### Output
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>
]</code></pre></div>


## Abnormal computation

### Failing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>
]</code></pre></div>


### Throwing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_finalise-throwing">finalise-throwing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>
]</code></pre></div>


# Values

## Value Types
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_vals">vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is">is</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when">when</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-vals">ground-vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-eq">is-eq</a></span>
]</code></pre></div>


## Primitive values

### Booleans
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_bools">bools</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_or">or</a></span>
]</code></pre></div>


### Integers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_ints">ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_bounded-integers">bounded-integers</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_bounded-ints">bounded-ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-successor">natural-successor</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-sub">int-sub</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-mul">int-mul</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-mod">int-mod</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-absolute-value">integer-absolute-value</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-abs">int-abs</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-neg">int-neg</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less">integer-is-less</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-greater">integer-is-greater</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal">decimal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-sequence">integer-sequence</a></span>
]</code></pre></div>


### Floats
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-formats">float-formats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_binary64">binary64</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_floats">floats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-negate">float-negate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-absolute-value">float-absolute-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-add">float-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-subtract">float-subtract</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-multiply">float-multiply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-divide">float-divide</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-remainder">float-remainder</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sqrt">float-sqrt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-float-power">float-float-power</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-floor">float-floor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-ceiling">float-ceiling</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-truncate">float-truncate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-log">float-log</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-log10">float-log10</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-exp">float-exp</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sin">float-sin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-cos">float-cos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-tan">float-tan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-asin">float-asin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-acos">float-acos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-atan">float-atan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sinh">float-sinh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-cosh">float-cosh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-tanh">float-tanh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-atan2">float-atan2</a></span>
]</code></pre></div>


### Characters
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_characters">characters</a></span>                          <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_chars">chars</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_unicode-character">unicode-character</a></span>                   <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_unicode-char">unicode-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_ascii-character">ascii-character</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_ascii-char">ascii-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_backspace">backspace</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_horizontal-tab">horizontal-tab</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_line-feed">line-feed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_carriage-return">carriage-return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_backslash">backslash</a></span>
]</code></pre></div>


### The null value

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
]</code></pre></div>


## Composite values

### Sequences of values
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_n-of">n-of</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>
]</code></pre></div>


### Tuples
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>
]</code></pre></div>


### Lists
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list">list</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-nil">list-nil</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-cons">list-cons</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-head">list-head</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-tail">list-tail</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-length">list-length</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-append">list-append</a></span>
]</code></pre></div>


### Strings
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>
]</code></pre></div>


### Vectors
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>
]</code></pre></div>


### Bits and bit vectors
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-not">bit-vector-not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-and">bit-vector-and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-or">bit-vector-or</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-xor">bit-vector-xor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-shift-left">bit-vector-shift-left</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-logical-shift-right">bit-vector-logical-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-arithmetic-shift-right">bit-vector-arithmetic-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_integer-to-bit-vector">integer-to-bit-vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_signed-bit-vector-maximum">signed-bit-vector-maximum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_signed-bit-vector-minimum">signed-bit-vector-minimum</a></span>
]</code></pre></div>


### Sets
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set">set</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-elements">set-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>
]</code></pre></div>


### Maps
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-domain">map-domain</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>
]</code></pre></div>


### Records
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_records">records</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record">record</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record-map">record-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record-select">record-select</a></span>
]</code></pre></div>


### Variants
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>
]</code></pre></div>


## Abstraction values

### Generic abstractions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
]</code></pre></div>


### Functions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_curry">curry</a></span>
]</code></pre></div>


### Patterns
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-any">pattern-any</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-bind">pattern-bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-else">pattern-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-unite">pattern-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match-loosely">match-loosely</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_case-match">case-match</a></span>
]</code></pre></div>



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
[OC-L-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
