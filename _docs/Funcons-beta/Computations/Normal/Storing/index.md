---
title: "Storing"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Storing.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Storing

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_locations">locations</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="#Name_locs">locs</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_stores">stores</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_store">store</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-storing">initialise-storing</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_store-clear">store-clear</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_variables">variables</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="#Name_vars">vars</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_variable">variable</a></span>                      <i class="keyword">Alias</i> <span class="name"><a href="#Name_var">var</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_alloc">alloc</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>             <i class="keyword">Alias</i> <span class="name"><a href="#Name_recycle">recycle</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="#Name_init">init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> <i class="keyword">Alias</i> <span class="name"><a href="#Name_alloc-init">alloc-init</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_assign">assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_assigned">assigned</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_current-value">current-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_un-assign">un-assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



#### Stores


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_locations">locations</span></span> ~> <span class="name"><a href="../Generating/index.html#Name_atoms">atoms</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_locs">locs</span></span> = <span class="name"><a href="#Name_locations">locations</a></span></code></pre></div>


  A storage location is represented by an atom.

 
 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_stores">stores</span></span> ~> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_locations">locations</a></span>, <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)</code></pre></div>


  The domain of a store is the set of currently allocated locations.
  Mapping a location to <code>( )</code> models the absence of its stored value;
  removing it from the store allows it to be re-allocated.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_store">store</span></span>(_:<span class="name"><a href="#Name_stores">stores</a></span>) > ---> < _ , <span class="ent-name">store</span>(_:<span class="name">stores</span>) ></code></pre></div>


  The current store is a mutable entity.
  A transition <code>< <i class="var">X</i> , <span class="ent-name"><a href="#Name_store">store</a></span>(<i class="var">Sigma</i>) > ---> < <span id="Variable241_X'"><i class="var">X&prime;</i></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable248_Sigma'"><i class="var">Sigma&prime;</i></span>) ></code> models
  a step from <code><i class="var">X</i></code> to <code><i class="var">X&prime;</i></code> where the difference between <code><i class="var">Sigma</i></code> and <code><i class="var">Sigma&prime;</i></code>
  (if any) corresponds to storage effects.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_store-clear">store-clear</span></span> : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  < <span class="name"><a href="#Name_store-clear">store-clear</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(_) > ---> < <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )) ></code></pre></div>


  <code><span class="name"><a href="#Name_store-clear">store-clear</a></span></code> ensures the store is empty.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_initialise-storing">initialise-storing</span></span>(<span id="Variable394_X"><i class="var">X</i></span>:=><span id="Variable399_T"><i class="var">T</i></span>) : =><span id="Variable414_T"><i class="var">T</i></span>
   ~> <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_store-clear">store-clear</a></span>, 
        <span class="name"><a href="../Giving/index.html#Name_initialise-giving">initialise-giving</a></span>(<span class="name"><a href="../Generating/index.html#Name_initialise-generating">initialise-generating</a></span>(<a href="#Variable394_X"><i class="var">X</i></a>)))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_init-storing">init-storing</span></span> = <span class="name"><a href="#Name_initialise-storing">initialise-storing</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_initialise-storing">initialise-storing</a></span>(<i class="var">X</i>)</code> ensures that the entities used by the funcons for
  storing are properly initialised.



#### Simple variables

  
  Simple variables may store primitive or structured values. The type of
  values stored by a variable is fixed when it is allocated. For instance,
  <code><span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)</code> allocates a simple integer variable, and
  <code><span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>))</code> allocates a structured variable for
  storing vectors of integers, which can be updated only monolithically.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_variables">variables</span></span> ::= <span id="Name_variable">variable</span>(_:<span class="name"><a href="#Name_locations">locations</a></span>, _:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_value-types">value-types</a></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_vars">vars</span></span> = <span class="name"><a href="#Name_variables">variables</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Alias</i>
  <span class="name"><span id="Name_var">var</span></span> = <span class="name"><a href="#Name_variable">variable</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_variables">variables</a></span></code> is the type of simple variables that can store values of
  a particular type.

  <code><span class="name"><a href="#Name_variable">variable</a></span>(<i class="var">L</i>, <i class="var">T</i>)</code> constructs a simple variable for storing values of
  type <code><i class="var">T</i></code> at location <code><i class="var">L</i></code>. Variables at different locations are independent. 
  
  Note that <code><span class="name"><a href="#Name_variables">variables</a></span></code> is a subtype of <code><span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_allocate-variable">allocate-variable</span></span>(<span id="Variable679_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>) : =><span class="name"><a href="#Name_variables">variables</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_alloc">alloc</span></span> = <span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<i class="var">T</i>)</code> gives a simple variable whose location is not in the
  current store. Subsequent uses of <code><span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<i class="var">T&prime;</i>)</code> give independent
  variables, except after <code><span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<i class="var">V</i>,...)</code> or <code><span class="name"><a href="#Name_store-clear">store-clear</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  < <span class="name"><a href="../Generating/index.html#Name_use-atom-not-in">use-atom-not-in</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable901_Sigma"><i class="var">Sigma</i></a>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable901_Sigma"><i class="var">Sigma</i></a>) > ---> < <span id="Variable821_L"><i class="var">L</i></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable828_Sigma'"><i class="var">Sigma&prime;</i></span>) >
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable821_L"><i class="var">L</i></a> |-> ( )}, <a href="#Variable828_Sigma'"><i class="var">Sigma&prime;</i></a>) ~> <span id="Variable873_Sigma''"><i class="var">Sigma&prime;&prime;</i></span>
  -------------------------------------------------------------------------
  < <span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<span id="Variable886_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable901_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="#Name_variable">variable</a></span>(<a href="#Variable821_L"><i class="var">L</i></a>, <a href="#Variable886_T"><i class="var">T</i></a>) , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable873_Sigma''"><i class="var">Sigma&prime;&prime;</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_recycle-variables">recycle-variables</span></span>(_:<span class="name"><a href="#Name_variables">variables</a></span><sup class="sup">+</sup>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_recycle">recycle</span></span> = <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<i class="var">Var</i>,...)</code> removes the locations of <code><i class="var">Var</i></code>, ..., from the
  current store, so that they may subsequently be re-allocated.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1059_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1089_Sigma"><i class="var">Sigma</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  ---------------------------------------------------------------------
  < <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable1059_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable1067_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable1089_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable1089_Sigma"><i class="var">Sigma</i></a>, {<a href="#Variable1059_L"><i class="var">L</i></a>})) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1180_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1210_Sigma"><i class="var">Sigma</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  ---------------------------------------------------------------------
  < <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable1180_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable1188_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable1210_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable1210_Sigma"><i class="var">Sigma</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<span id="Variable1249_Var"><i class="var">Var</i></span>:<span class="name"><a href="#Name_variables">variables</a></span>, <span id="Variable1258_Var+"><i class="var">Var<sup class="sup">+</sup></i></span>:<span class="name"><a href="#Name_variables">variables</a></span><sup class="sup">+</sup>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<a href="#Variable1249_Var"><i class="var">Var</i></a>), <span class="name"><a href="#Name_recycle-variables">recycle-variables</a></span>(<a href="#Variable1258_Var+"><i class="var">Var<sup class="sup">+</sup></i></a>))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-variable">initialise-variable</span></span>(_:<span class="name"><a href="#Name_variables">variables</a></span>, _:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_init">init</span></span> = <span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span>(<i class="var">Var</i>, <i class="var">Val</i>)</code> assigns <code><i class="var">Val</i></code> as the initial value of <code><i class="var">Var</i></code>,
  and gives <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>. If <code><i class="var">Var</i></code> already has an assigned value, it fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1513_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1552_Sigma"><i class="var">Sigma</i></a>)),
      <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-value">is-value</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable1552_Sigma"><i class="var">Sigma</i></a>, <a href="#Variable1513_L"><i class="var">L</i></a>)),
      <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<a href="#Variable1536_Val"><i class="var">Val</i></a>, <a href="#Variable1521_T"><i class="var">T</i></a>)) 
    == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  ----------------------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable1513_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable1521_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>), <span id="Variable1536_Val"><i class="var">Val</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) , 
    <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable1552_Sigma"><i class="var">Sigma</i></span>) > ---> < <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable1513_L"><i class="var">L</i></a>|-><a href="#Variable1536_Val"><i class="var">Val</i></a>}, <a href="#Variable1552_Sigma"><i class="var">Sigma</i></a>)) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable1702_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable1741_Sigma"><i class="var">Sigma</i></a>)),
      <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-value">is-value</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable1741_Sigma"><i class="var">Sigma</i></a>, <a href="#Variable1702_L"><i class="var">L</i></a>)),
      <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<a href="#Variable1725_Val"><i class="var">Val</i></a>, <a href="#Variable1710_T"><i class="var">T</i></a>)) 
    == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  ----------------------------------------------------------------------------
  < <span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable1702_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable1710_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>), <span id="Variable1725_Val"><i class="var">Val</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) , 
    <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable1741_Sigma"><i class="var">Sigma</i></span>) > ---> < <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable1741_Sigma"><i class="var">Sigma</i></a>) ></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_allocate-initialised-variable">allocate-initialised-variable</span></span>(<span id="Variable1780_T"><i class="var">T</i></span>, <span id="Variable1786_Val"><i class="var">Val</i></span>:<span id="Variable1790_T"><i class="var">T</i></span>) : =><span class="name"><a href="#Name_variables">variables</a></span>
    ~> <span class="name"><a href="../Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="#Name_allocate-variable">allocate-variable</a></span>(<i class="var">T</i>),
         <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_initialise-variable">initialise-variable</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>, <a href="#Variable1786_Val"><i class="var">Val</i></a>), <span class="name"><a href="../Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_alloc-init">alloc-init</span></span> = <span class="name"><a href="#Name_allocate-initialised-variable">allocate-initialised-variable</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<i class="var">T</i>, <i class="var">Val</i>)</code> allocates a simple variable for
  storing values of type <code><i class="var">T</i></code>, initialises its value to <code><i class="var">Val</i></code>, and returns the
  variable.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_assign">assign</span></span>(_:<span class="name"><a href="#Name_variables">variables</a></span>, _:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_assign">assign</a></span>(<i class="var">Var</i>, <i class="var">Val</i>)</code> assigns the value <code><i class="var">Val</i></code> to the variable <code><i class="var">Var</i></code>,
  provided that <code><i class="var">Var</i></code> was allocated with a type that contains <code><i class="var">Val</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2091_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2130_Sigma"><i class="var">Sigma</i></a>)), <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<a href="#Variable2114_Val"><i class="var">Val</i></a>, <a href="#Variable2099_T"><i class="var">T</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -----------------------------------------------------------------------
  < <span class="name"><a href="#Name_assign">assign</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2091_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable2099_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>), <span id="Variable2114_Val"><i class="var">Val</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) ,
    <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2130_Sigma"><i class="var">Sigma</i></span>) > ---> < <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable2091_L"><i class="var">L</i></a>|-><a href="#Variable2114_Val"><i class="var">Val</i></a>}, <a href="#Variable2130_Sigma"><i class="var">Sigma</i></a>)) >
<i class="keyword">Rule</i>
   <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2252_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2291_Sigma"><i class="var">Sigma</i></a>)), <span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<a href="#Variable2275_Val"><i class="var">Val</i></a>, <a href="#Variable2260_T"><i class="var">T</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  --------------------------------------------------------------------------
  < <span class="name"><a href="#Name_assign">assign</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2252_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>,<span id="Variable2260_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>), <span id="Variable2275_Val"><i class="var">Val</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) ,
    <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2291_Sigma"><i class="var">Sigma</i></span>) > ---> < <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable2291_Sigma"><i class="var">Sigma</i></a>) ></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_assigned">assigned</span></span>(_:<span class="name"><a href="#Name_variables">variables</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_assigned">assigned</a></span>(<i class="var">Var</i>)</code> gives the value assigned to the variable <code><i class="var">Var</i></code>,
  failing if no value is currently assigned.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable2457_Sigma"><i class="var">Sigma</i></a>, <a href="#Variable2427_L"><i class="var">L</i></a>) ~> (<span id="Variable2406_Val"><i class="var">Val</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)
  ------------------------------------------------------------------
  < <span class="name"><a href="#Name_assigned">assigned</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2427_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable2435_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2457_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <a href="#Variable2406_Val"><i class="var">Val</i></a> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable2457_Sigma"><i class="var">Sigma</i></a>) >
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable2558_Sigma"><i class="var">Sigma</i></a>, <a href="#Variable2528_L"><i class="var">L</i></a>) == ( )
  ------------------------------------------------------------------
  < <span class="name"><a href="#Name_assigned">assigned</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2528_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable2536_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2558_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable2558_Sigma"><i class="var">Sigma</i></a>) ></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_current-value">current-value</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_current-value">current-value</a></span>(<i class="var">V</i>)</code> gives the same result as <code><span class="name"><a href="#Name_assigned">assigned</a></span>(<i class="var">V</i>)</code> when <code><i class="var">V</i></code> is a
  simple variable, and otherwise gives <code><i class="var">V</i></code>. 
  
  It represents implicit dereferencing of a value that might be a variable.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_current-value">current-value</a></span>(<span id="Variable2689_Var"><i class="var">Var</i></span>:<span class="name"><a href="#Name_variables">variables</a></span>) ~> <span class="name"><a href="#Name_assigned">assigned</a></span>(<a href="#Variable2689_Var"><i class="var">Var</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_current-value">current-value</a></span>(<span id="Variable2719_U"><i class="var">U</i></span>:~<span class="name"><a href="#Name_variables">variables</a></span>) ~> <a href="#Variable2719_U"><i class="var">U</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_un-assign">un-assign</span></span>(_:<span class="name"><a href="#Name_variables">variables</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_un-assign">un-assign</a></span>(<i class="var">Var</i>)</code> remove the value assigned to the variable <code><i class="var">Var</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2836_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2866_Sigma"><i class="var">Sigma</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  --------------------------------------------------------------------------
  < <span class="name"><a href="#Name_un-assign">un-assign</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2836_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable2844_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2866_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>({<a href="#Variable2836_L"><i class="var">L</i></a> |-> ( )}, <a href="#Variable2866_Sigma"><i class="var">Sigma</i></a>)) >
<i class="keyword">Rule</i>
   <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable2961_L"><i class="var">L</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable2991_Sigma"><i class="var">Sigma</i></a>)) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  --------------------------------------------------------------------------
  < <span class="name"><a href="#Name_un-assign">un-assign</a></span>(<span class="name"><a href="#Name_variable">variable</a></span>(<span id="Variable2961_L"><i class="var">L</i></span>:<span class="name"><a href="#Name_locations">locations</a></span>, <span id="Variable2969_T"><i class="var">T</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_types">types</a></span>)) , <span class="ent-name"><a href="#Name_store">store</a></span>(<span id="Variable2991_Sigma"><i class="var">Sigma</i></span>) >
    ---> < <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span> , <span class="ent-name"><a href="#Name_store">store</a></span>(<a href="#Variable2991_Sigma"><i class="var">Sigma</i></a>) ></code></pre></div>



#### Structured variables


  Structured variables are structured values where some components are
  simple variables. Such component variables can be selected using the
  same funcons as for selecting components of structured values. 

  Structured variables containing both simple variables and values correspond
  to hybrid structures where particular components are mutable.
  
  All datatypes (except for abstractions) can be used to form structured
  variables. So can maps, but not sets or multisets. 
  
  Structural generalisations of <code><span class="name"><a href="#Name_assign">assign</a></span>(<i class="var">Var</i>, <i class="var">Val</i>)</code> and 
  <code><span class="name"><a href="#Name_assigned">assigned</a></span>(<i class="var">Var</i>)</code> access all the simple variables contained in a
  structured variable. Assignment requires each component value of a hybrid
  structured variable to be equal to the corresponding component of the
  structured value.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_structural-assign">structural-assign</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>, _:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<i class="var">V<sub class="sub">1</sub></i>, <i class="var">V<sub class="sub">2</sub></i>)</code> takes a (potentially) structured variable
  <code><i class="var">V<sub class="sub">1</sub></i></code>and a (potentially) structured value <code><i class="var">V<sub class="sub">2</sub></i></code>. Provided that the structure
  and all non-variable values in <code><i class="var">V<sub class="sub">1</sub></i></code> match the structure and corresponding
  values of <code><i class="var">V<sub class="sub">2</sub></i></code>, all the simple variables in <code><i class="var">V<sub class="sub">1</sub></i></code> are assigned the
  corresponding values of <code><i class="var">V<sub class="sub">2</sub></i></code>; otherwise the assignment fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span id="Variable3278_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_variables">variables</a></span>, <span id="Variable3287_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="#Name_assign">assign</a></span>(<a href="#Variable3278_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable3287_V2"><i class="var">V<sub class="sub">2</sub></i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable3422_V1"><i class="var">V<sub class="sub">1</sub></i></a> : ~(<span class="name"><a href="#Name_variables">variables</a></span>)
  <a href="#Variable3422_V1"><i class="var">V<sub class="sub">1</sub></i></a> ~> <span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable3350_I1"><i class="var">I<sub class="sub">1</sub></i></span>:<span class="name"><a href="../Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable3360_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)
  <a href="#Variable3431_V2"><i class="var">V<sub class="sub">2</sub></i></a> ~> <span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable3386_I2"><i class="var">I<sub class="sub">2</sub></i></span>:<span class="name"><a href="../Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable3396_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)
  -----------------------------------------------------------------------
  <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span id="Variable3422_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>, <span id="Variable3431_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(
         <span class="name"><a href="../../Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3350_I1"><i class="var">I<sub class="sub">1</sub></i></a>, <a href="#Variable3386_I2"><i class="var">I<sub class="sub">2</sub></i></a>)),
         <span class="name"><a href="../Flowing/index.html#Name_effect">effect</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span class="name"><a href="../Giving/index.html#Name_interleave-map">interleave-map</a></span>(
           <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>)),
           <span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple-zip">tuple-zip</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable3360_V1*"><i class="var">V<sub class="sub">1</sub><sup class="sup">*</sup></i></a>), <span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable3396_V2*"><i class="var">V<sub class="sub">2</sub><sup class="sup">*</sup></i></a>))))),
         <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)</code></pre></div>


  Note that simple variables are datatype values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable3591_M1"><i class="var">M<sub class="sub">1</sub></i></a>) == {}
  ------------------------------------------------------
  <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span id="Variable3591_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_,_), <span id="Variable3614_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))
    ~> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable3614_M2"><i class="var">M<sub class="sub">2</sub></i></a>), { }))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_some-element">some-element</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable3710_M1"><i class="var">M<sub class="sub">1</sub></i></a>)) ~> <span id="Variable3698_K"><i class="var">K</i></span>
  ----------------------------------------------------------------------------
  <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span id="Variable3710_M1"><i class="var">M<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_, _), <span id="Variable3733_M2"><i class="var">M<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_, _))
    ~> <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../../Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable3698_K"><i class="var">K</i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable3733_M2"><i class="var">M<sub class="sub">2</sub></i></a>))),
         <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable3710_M1"><i class="var">M<sub class="sub">1</sub></i></a>, <a href="#Variable3698_K"><i class="var">K</i></a>), <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable3733_M2"><i class="var">M<sub class="sub">2</sub></i></a>, <a href="#Variable3698_K"><i class="var">K</i></a>)),
         <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable3710_M1"><i class="var">M<sub class="sub">1</sub></i></a>, {<a href="#Variable3698_K"><i class="var">K</i></a>}), <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-delete">map-delete</a></span>(<a href="#Variable3733_M2"><i class="var">M<sub class="sub">2</sub></i></a>, {<a href="#Variable3698_K"><i class="var">K</i></a>})))
<i class="keyword">Rule</i>
  <a href="#Variable3949_V1"><i class="var">V<sub class="sub">1</sub></i></a> : ~(<span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>|<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_, _))
  ---------------------------------------------------------------
  <span class="name"><a href="#Name_structural-assign">structural-assign</a></span>(<span id="Variable3949_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>,<span id="Variable3958_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)
    ~> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_check-true">check-true</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3949_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable3958_V2"><i class="var">V<sub class="sub">2</sub></i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_structural-assigned">structural-assigned</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<i class="var">V</i>)</code> takes a (potentially) structured variable <code><i class="var">V</i></code>,
  and computes the value of <code><i class="var">V</i></code> with all simple variables in <code><i class="var">V</i></code> replaced by
  their assigned values, failing if any of them do not have assigned values.
  
  When <code><i class="var">V</i></code> is just a simple variable or a (possibly structured) value with no
  component variables, <code><span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<i class="var">V</i>)</code> gives the same result as
  <code><span class="name"><a href="#Name_current-value">current-value</a></span>(<i class="var">V</i>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span id="Variable4142_Var"><i class="var">Var</i></span>:<span class="name"><a href="#Name_variables">variables</a></span>) ~> <span class="name"><a href="#Name_assigned">assigned</a></span>(<a href="#Variable4142_Var"><i class="var">Var</i></a>)
<i class="keyword">Rule</i>
  <a href="#Variable4226_V"><i class="var">V</i></a> : ~(<span class="name"><a href="#Name_variables">variables</a></span>)
  <a href="#Variable4226_V"><i class="var">V</i></a> ~> <span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<span id="Variable4193_I"><i class="var">I</i></span>:<span class="name"><a href="../Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable4202_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)
  ----------------------------------------------------------------------------
  <span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span id="Variable4226_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>)
    ~> <span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-value">datatype-value</a></span>(<a href="#Variable4193_I"><i class="var">I</i></a>, <span class="name"><a href="../Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>), <a href="#Variable4202_V*"><i class="var">V<sup class="sup">*</sup></i></a>))</code></pre></div>


  Note that simple variables are datatype values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span id="Variable4286_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_, _))
    ~> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>(<span class="name"><a href="../Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>), <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span>(<a href="#Variable4286_M"><i class="var">M</i></a>)))
<i class="keyword">Rule</i>
  <a href="#Variable4391_U"><i class="var">U</i></a> : ~(<span class="name"><a href="../../../Values/Composite/Datatypes/index.html#Name_datatype-values">datatype-values</a></span>|<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_, _))
  ------------------------------------------
  <span class="name"><a href="#Name_structural-assigned">structural-assigned</a></span>(<span id="Variable4391_U"><i class="var">U</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) ~> <a href="#Variable4391_U"><i class="var">U</i></a></code></pre></div>



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
[Storing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Storing/Storing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Storing
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Storing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Storing/Storing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Storing/Storing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
