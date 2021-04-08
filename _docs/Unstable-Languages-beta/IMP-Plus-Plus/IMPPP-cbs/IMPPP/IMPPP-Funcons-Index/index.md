---
title: "IMPPP-Funcons-Index"
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

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
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_left-to-right">left-to-right</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_l-to-r">l-to-r</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_seq">seq</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while">while</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_atomic">atomic</a></span>
]</code></pre></div>


### Giving
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_no-given">no-given</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-filter">left-to-right-filter</a></span>
]</code></pre></div>


### Binding
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind-value">bind-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>
]</code></pre></div>


### Generating
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>
]</code></pre></div>


### Storing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_store">store</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_alloc">alloc</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_alloc-init">alloc-init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_un-assign">un-assign</a></span>
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

### Terminating abruptly
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_handle-abrupt">handle-abrupt</a></span>
]</code></pre></div>


### Failing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>
]</code></pre></div>


# Values

## Value Types
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_vals">vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-value">is-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-val">is-val</a></span>
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
]</code></pre></div>


### Integers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_ints">ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_pos-ints">pos-ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-successor">natural-successor</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>          <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-neg">int-neg</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-greater">integer-is-greater</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal">decimal</a></span>
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
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_first">first</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_second">second</a></span>
]</code></pre></div>


### Tuples
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>
]</code></pre></div>


### Lists
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-cons">list-cons</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-head">list-head</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-tail">list-tail</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-append">list-append</a></span>
]</code></pre></div>


### Strings
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>
]</code></pre></div>


### Sets
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-subset">is-subset</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-intersect">set-intersect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_some-element">some-element</a></span>
]</code></pre></div>


### Maps
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-domain">map-domain</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>
]</code></pre></div>


## Abstraction values

### Generic abstractions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstractions">abstractions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
]</code></pre></div>


### Thunks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span>
]</code></pre></div>


### Functions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_supply">supply</a></span>
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
[IMPPP-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
