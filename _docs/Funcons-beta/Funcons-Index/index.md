---
title: "Funcons-Index"
parent: Funcons-beta


---

[Funcons-beta] : [Funcons-Index.cbs] \| [PRETTY] \| [PDF]

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

## Types of computation
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Computation-Types/index.html#Name_computation-types">computation-types</a></span>
]</code></pre></div>


## Normal computation

### Flowing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_left-to-right">left-to-right</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_l-to-r">l-to-r</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_right-to-left">right-to-left</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_r-to-l">r-to-l</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_seq">seq</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_choice">choice</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_while">while</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_do-while-true">do-while-true</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_do-while">do-while</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_interleave">interleave</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_yielding">yielding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_signal">signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_yielded">yielded</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_yield">yield</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_yield-on-value">yield-on-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_yield-on-abrupt">yield-on-abrupt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Flowing/index.html#Name_atomic">atomic</a></span>
]</code></pre></div>


### Giving
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_given-value">given-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_give">give</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_given">given</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_no-given">no-given</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_left-to-right-map">left-to-right-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_left-to-right-repeat">left-to-right-repeat</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_interleave-repeat">interleave-repeat</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_left-to-right-filter">left-to-right-filter</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_interleave-filter">interleave-filter</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_fold-left">fold-left</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Giving/index.html#Name_fold-right">fold-right</a></span>
]</code></pre></div>


### Binding
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_identifier-tagged">identifier-tagged</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_id-tagged">id-tagged</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_fresh-identifier">fresh-identifier</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_environment">environment</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_env">env</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bind-value">bind-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bind">bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_unbind">unbind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bound-directly">bound-directly</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_closed">closed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_scope">scope</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_accumulate">accumulate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_bind-recursively">bind-recursively</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Binding/index.html#Name_recursive">recursive</a></span>
]</code></pre></div>


### Generating
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Generating/index.html#Name_used-atom-set">used-atom-set</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Generating/index.html#Name_initialise-generating">initialise-generating</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Generating/index.html#Name_use-atom-not-in">use-atom-not-in</a></span>
]</code></pre></div>


### Storing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_locations">locations</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_locs">locs</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_stores">stores</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_store">store</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_store-clear">store-clear</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_variables">variables</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_vars">vars</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_variable">variable</a></span>                      <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_var">var</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_alloc">alloc</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_recycle-variables">recycle-variables</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_recycle">recycle</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_initialise-variable">initialise-variable</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_init">init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_alloc-init">alloc-init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_assign">assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_current-value">current-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_un-assign">un-assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_structural-assign">structural-assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Storing/index.html#Name_structural-assigned">structural-assigned</a></span>
]</code></pre></div>


### Linking
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_links">links</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_initialise-linking">initialise-linking</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_link">link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_fresh-link">fresh-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_fresh-initialised-link">fresh-initialised-link</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_fresh-init-link">fresh-init-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_set-link">set-link</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Linking/index.html#Name_follow-if-link">follow-if-link</a></span>
]</code></pre></div>


### Interacting

#### Input
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Interacting/index.html#Name_standard-in">standard-in</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Interacting/index.html#Name_read">read</a></span>
]</code></pre></div>


#### Output
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Normal/Interacting/index.html#Name_standard-out">standard-out</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Normal/Interacting/index.html#Name_print">print</a></span>
]</code></pre></div>


## Abnormal computation

### Terminating abruptly
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_stuck">stuck</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_abrupted">abrupted</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_handle-abrupt">handle-abrupt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Abrupting/index.html#Name_finally">finally</a></span>
]</code></pre></div>


### Failing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_failing">failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_failed">failed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_else">else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_else-choice">else-choice</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Failing/index.html#Name_check-true">check-true</a></span>
]</code></pre></div>


### Throwing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_throwing">throwing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_thrown">thrown</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_finalise-throwing">finalise-throwing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_handle-recursively">handle-recursively</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Throwing/index.html#Name_catch-else-throw">catch-else-throw</a></span>
]</code></pre></div>


### Returning
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Returning/index.html#Name_returning">returning</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Returning/index.html#Name_returned">returned</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Returning/index.html#Name_finalise-returning">finalise-returning</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Returning/index.html#Name_return">return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Returning/index.html#Name_handle-return">handle-return</a></span>
]</code></pre></div>


### Breaking
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Breaking/index.html#Name_breaking">breaking</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Breaking/index.html#Name_broken">broken</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Breaking/index.html#Name_finalise-breaking">finalise-breaking</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Breaking/index.html#Name_break">break</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Breaking/index.html#Name_handle-break">handle-break</a></span>
]</code></pre></div>


### Continuing
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Continuing/index.html#Name_continuing">continuing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Continuing/index.html#Name_continued">continued</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Continuing/index.html#Name_finalise-continuing">finalise-continuing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Continuing/index.html#Name_continue">continue</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Continuing/index.html#Name_handle-continue">handle-continue</a></span>
]</code></pre></div>


### Controlling
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_continuations">continuations</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_continuation">continuation</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_plug-signal">plug-signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_hole">hole</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_resume-continuation">resume-continuation</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_control-signal">control-signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_control">control</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_delimit-current-continuation">delimit-current-continuation</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../Computations/Abnormal/Controlling/index.html#Name_delimit-cc">delimit-cc</a></span>
]</code></pre></div>



# Values

## Value Types
<div class="highlighter-rouge"><pre class="highlight"><code>[ 
  <i class="keyword">Type</i>   <span class="name"><a href="../Values/Value-Types/index.html#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_vals">vals</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../Values/Value-Types/index.html#Name_value-types">value-types</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_types">types</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../Values/Value-Types/index.html#Name_empty-type">empty-type</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is">is</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is-value">is-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is-val">is-val</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_when-true">when-true</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_when">when</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_cast">cast</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="../Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_ground-vals">ground-vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="../Values/Value-Types/index.html#Name_is-eq">is-eq</a></span>
]</code></pre></div>


## Primitive values

### Booleans
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_bools">bools</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_not">not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_implies">implies</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_and">and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_or">or</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_exclusive-or">exclusive-or</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Booleans/index.html#Name_xor">xor</a></span>
]</code></pre></div>


### Integers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_ints">ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integers-from">integers-from</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_from">from</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integers-up-to">integers-up-to</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_up-to">up-to</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_bounded-integers">bounded-integers</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_bounded-ints">bounded-ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_positive-integers">positive-integers</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_pos-ints">pos-ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_negative-integers">negative-integers</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_neg-ints">neg-ints</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_nats">nats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_natural-successor">natural-successor</a></span>            <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_natural-predecessor">natural-predecessor</a></span>          <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_nat-pred">nat-pred</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-sub">int-sub</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-mul">int-mul</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-mod">int-mod</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-power">integer-power</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-pow">int-pow</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-absolute-value">integer-absolute-value</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-abs">int-abs</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_int-neg">int-neg</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-is-less">integer-is-less</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-is-less-or-equal">integer-is-less-or-equal</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-is-greater">integer-is-greater</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-is-greater-or-equal">integer-is-greater-or-equal</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_binary-natural">binary-natural</a></span>               <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_binary">binary</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_octal-natural">octal-natural</a></span>                <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_octal">octal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_decimal">decimal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>          <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_hexadecimal">hexadecimal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Integers/index.html#Name_integer-sequence">integer-sequence</a></span>
]</code></pre></div>


### Floats
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-formats">float-formats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_binary32">binary32</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_binary64">binary64</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_binary128">binary128</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_decimal64">decimal64</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_decimal128">decimal128</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_floats">floats</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float">float</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_quiet-not-a-number">quiet-not-a-number</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_qNaN">qNaN</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_signaling-not-a-number">signaling-not-a-number</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_sNaN">sNaN</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_positive-infinity">positive-infinity</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_pos-inf">pos-inf</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_negative-infinity">negative-infinity</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_neg-inf">neg-inf</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-convert">float-convert</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-equal">float-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-is-less">float-is-less</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-is-less-or-equal">float-is-less-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-is-greater">float-is-greater</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-is-greater-or-equal">float-is-greater-or-equal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-negate">float-negate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-absolute-value">float-absolute-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-add">float-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-subtract">float-subtract</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-multiply">float-multiply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-multiply-add">float-multiply-add</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-divide">float-divide</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-remainder">float-remainder</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-sqrt">float-sqrt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-integer-power">float-integer-power</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-float-power">float-float-power</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-round-ties-to-even">float-round-ties-to-even</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-round-ties-to-infinity">float-round-ties-to-infinity</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-floor">float-floor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-ceiling">float-ceiling</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-truncate">float-truncate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-pi">float-pi</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-e">float-e</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-log">float-log</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-log10">float-log10</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-exp">float-exp</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-sin">float-sin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-cos">float-cos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-tan">float-tan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-asin">float-asin</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-acos">float-acos</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-atan">float-atan</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-sinh">float-sinh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-cosh">float-cosh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-tanh">float-tanh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-asinh">float-asinh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-acosh">float-acosh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-atanh">float-atanh</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Floats/index.html#Name_float-atan2">float-atan2</a></span>
]</code></pre></div>


### Characters
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_characters">characters</a></span>                          <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_chars">chars</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-characters">unicode-characters</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-chars">unicode-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-points">unicode-points</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-character">unicode-character</a></span>                   <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-char">unicode-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode-point">unicode-point</a></span>                       <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_unicode">unicode</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_bmp-chars">bmp-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_basic-multilingual-plane-points">basic-multilingual-plane-points</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_iso-latin-1-characters">iso-latin-1-characters</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_latin-1-chars">latin-1-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_iso-latin-1-points">iso-latin-1-points</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_ascii-characters">ascii-characters</a></span>                    <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_ascii-chars">ascii-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_ascii-points">ascii-points</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_ascii-character">ascii-character</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_ascii-char">ascii-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_utf-8">utf-8</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_utf-16">utf-16</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_utf-32">utf-32</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_backspace">backspace</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_horizontal-tab">horizontal-tab</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_line-feed">line-feed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_form-feed">form-feed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_carriage-return">carriage-return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_double-quote">double-quote</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_single-quote">single-quote</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Characters/index.html#Name_backslash">backslash</a></span>
]</code></pre></div>


### The null value

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> <i class="keyword">Alias</i> <span class="name"><a href="../Values/Primitive/Null/index.html#Name_null">null</a></span>
]</code></pre></div>


## Composite values

### Sequences of values
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_length">length</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_index">index</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_is-in">is-in</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_first">first</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_second">second</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_third">third</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_first-n">first-n</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_drop-first-n">drop-first-n</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_n-of">n-of</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>
]</code></pre></div>


### Datatypes
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Datatypes/index.html#Name_datatype-value-id">datatype-value-id</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Datatypes/index.html#Name_datatype-value-elements">datatype-value-elements</a></span>
]</code></pre></div>


### Tuples
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Tuples/index.html#Name_tuple-zip">tuple-zip</a></span>
]</code></pre></div>


### Lists
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Lists/index.html#Name_lists">lists</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list">list</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-nil">list-nil</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Lists/index.html#Name_nil">nil</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-cons">list-cons</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Lists/index.html#Name_cons">cons</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-head">list-head</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Lists/index.html#Name_head">head</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-tail">list-tail</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Lists/index.html#Name_tail">tail</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-length">list-length</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Lists/index.html#Name_list-append">list-append</a></span>
]</code></pre></div>


### Strings
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Strings/index.html#Name_strings">strings</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Strings/index.html#Name_string">string</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>
]</code></pre></div>


### Vectors
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Vectors/index.html#Name_vector">vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>
]</code></pre></div>


### Bits and bit vectors
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bits">bits</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector">bit-vector</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bytes">bytes</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Bits/index.html#Name_octets">octets</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-not">bit-vector-not</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-and">bit-vector-and</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-or">bit-vector-or</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-xor">bit-vector-xor</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-shift-left">bit-vector-shift-left</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-logical-shift-right">bit-vector-logical-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-arithmetic-shift-right">bit-vector-arithmetic-shift-right</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_integer-to-bit-vector">integer-to-bit-vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_bit-vector-to-natural">bit-vector-to-natural</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_signed-bit-vector-maximum">signed-bit-vector-maximum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_signed-bit-vector-minimum">signed-bit-vector-minimum</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_is-in-signed-bit-vector">is-in-signed-bit-vector</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Bits/index.html#Name_is-in-unsigned-bit-vector">is-in-unsigned-bit-vector</a></span>
]</code></pre></div>


### Sets
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Sets/index.html#Name_sets">sets</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set">set</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-elements">set-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_is-subset">is-subset</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-insert">set-insert</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-intersect">set-intersect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-difference">set-difference</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_set-size">set-size</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_some-element">some-element</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Sets/index.html#Name_element-not-in">element-not-in</a></span>
]</code></pre></div>


### Maps
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Maps/index.html#Name_maps">maps</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map">map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-domain">map-domain</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="../Values/Composite/Maps/index.html#Name_dom">dom</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>
]</code></pre></div>


### Multisets (bags)
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multisets">multisets</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multiset">multiset</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multiset-elements">multiset-elements</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multiset-occurrences">multiset-occurrences</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multiset-insert">multiset-insert</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_multiset-delete">multiset-delete</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Multisets/index.html#Name_is-submultiset">is-submultiset</a></span>
]</code></pre></div>


### Trees
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Trees/index.html#Name_trees">trees</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_tree">tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_tree-root-value">tree-root-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_tree-branch-sequence">tree-branch-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_single-branching-sequence">single-branching-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_forest-branch-sequence">forest-branch-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Trees/index.html#Name_forest-value-sequence">forest-value-sequence</a></span>
]</code></pre></div>


### Graphs
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/Graphs/index.html#Name_directed-graphs">directed-graphs</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Graphs/index.html#Name_is-cyclic">is-cyclic</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Graphs/index.html#Name_topological-sort">topological-sort</a></span>
]</code></pre></div>


### References and pointers
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/References/index.html#Name_references">references</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/References/index.html#Name_reference">reference</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Composite/References/index.html#Name_pointers">pointers</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/References/index.html#Name_dereference">dereference</a></span>
]</code></pre></div>


### Records
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Records/index.html#Name_records">records</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Records/index.html#Name_record">record</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Records/index.html#Name_record-map">record-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Records/index.html#Name_record-select">record-select</a></span>
]</code></pre></div>


### Variants
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Variants/index.html#Name_variants">variants</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Variants/index.html#Name_variant">variant</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Variants/index.html#Name_variant-id">variant-id</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Variants/index.html#Name_variant-value">variant-value</a></span>
]</code></pre></div>


### Classes
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Classes/index.html#Name_classes">classes</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class">class</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class-instantiator">class-instantiator</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class-feature-map">class-feature-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class-superclass-name-sequence">class-superclass-name-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class-name-tree">class-name-tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_is-subclass-name">is-subclass-name</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Classes/index.html#Name_class-name-single-inheritance-feature-map">class-name-single-inheritance-feature-map</a></span>
]</code></pre></div>


### Objects
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Composite/Objects/index.html#Name_objects">objects</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object">object</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-identity">object-identity</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-class-name">object-class-name</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-subobject-sequence">object-subobject-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-tree">object-tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Composite/Objects/index.html#Name_object-single-inheritance-feature-map">object-single-inheritance-feature-map</a></span>
]</code></pre></div>


## Abstraction values

### Generic abstractions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="../Values/Abstraction/Generic/index.html#Name_abstractions">abstractions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Generic/index.html#Name_enact">enact</a></span>
]</code></pre></div>


### Thunks
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Thunks/index.html#Name_force">force</a></span>
]</code></pre></div>


### Functions
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_function">function</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_supply">supply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_compose">compose</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_uncurry">uncurry</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_curry">curry</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Functions/index.html#Name_partial-apply">partial-apply</a></span>
]</code></pre></div>


### Patterns
<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern-any">pattern-any</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern-bind">pattern-bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern-type">pattern-type</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern-else">pattern-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_pattern-unite">pattern-unite</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_match">match</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_match-loosely">match-loosely</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_case-match">case-match</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_case-match-loosely">case-match-loosely</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="../Values/Abstraction/Patterns/index.html#Name_case-variant-value">case-variant-value</a></span>
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
[Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Funcons-Index/Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Funcons-Index
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Funcons-Index/Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Funcons-Index/Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
