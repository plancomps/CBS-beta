---
title: "SL-Funcons-Index"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-Funcons-Index.cbs] \| [PRETTY] \| [PDF]

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
]</code></pre></div>


### Binding
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind-value">bind-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_closed">closed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>
]</code></pre></div>


### Generating
<div class="highlighter-rouge"><pre class="highlight"><code>[
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
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>
]</code></pre></div>


### Failing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span>
]</code></pre></div>


### Returning
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_handle-return">handle-return</a></span>
]</code></pre></div>


### Breaking
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Breaking/index.html#Name_break">break</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Breaking/index.html#Name_handle-break">handle-break</a></span>
]</code></pre></div>


### Continuing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Continuing/index.html#Name_continue">continue</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Continuing/index.html#Name_handle-continue">handle-continue</a></span>
]</code></pre></div>


# Values

## Value Types
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_vals">vals</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast">cast</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-eq">is-eq</a></span>
]</code></pre></div>


## Primitive values

### Booleans
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_bools">bools</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>
]</code></pre></div>


### Integers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_ints">ints</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-sub">int-sub</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-mul">int-mul</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-neg">int-neg</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less">integer-is-less</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-greater">integer-is-greater</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal">decimal</a></span>
]</code></pre></div>


### The null value

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
]</code></pre></div>


## Composite values

### Lists
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-nil">list-nil</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-cons">list-cons</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-head">list-head</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-tail">list-tail</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span>
]</code></pre></div>


### Strings
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>
]</code></pre></div>


### Maps
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>
]</code></pre></div>


### Objects
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object">object</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span>
]</code></pre></div>


## Abstraction values

### Generic abstractions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
]</code></pre></div>


### Functions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>
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
[SL-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index/SL-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index/SL-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-Funcons-Index/SL-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
