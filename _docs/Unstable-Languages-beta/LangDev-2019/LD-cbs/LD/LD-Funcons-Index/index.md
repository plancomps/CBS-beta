---
title: "LD-Funcons-Index"
parent: LD
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [LD-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

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
]</code></pre></div>


### Giving
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>
]</code></pre></div>


### Binding
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind-value">bind-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>
]</code></pre></div>


### Generating
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>
]</code></pre></div>


### Storing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_vars">vars</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_alloc-init">alloc-init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>
]</code></pre></div>


## Abnormal computation

### Terminating abruptly
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_handle-abrupt">handle-abrupt</a></span>
]</code></pre></div>


### Failing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span>
]</code></pre></div>


# Values

## Value Types
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_vals">vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-value">is-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-val">is-val</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-vals">ground-vals</a></span>
]</code></pre></div>


## Primitive values

### Booleans
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_bools">bools</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
]</code></pre></div>


### Integers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_ints">ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-mul">int-mul</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>
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
]</code></pre></div>


### Lists
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>
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
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span>
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
[LD-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index/LD-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index/LD-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Funcons-Index/LD-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
