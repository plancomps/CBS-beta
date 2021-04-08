---
title: "Binding"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Binding.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Binding

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_environments">environments</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="#Name_envs">envs</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_identifiers">identifiers</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_ids">ids</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_identifier-tagged">identifier-tagged</a></span>  <i class="keyword">Alias</i> <span class="name"><a href="#Name_id-tagged">id-tagged</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_fresh-identifier">fresh-identifier</a></span>
  <i class="keyword">Entity</i>   <span class="name"><a href="#Name_environment">environment</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_env">env</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_initialise-binding">initialise-binding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bind-value">bind-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="#Name_bind">bind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_unbind">unbind</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bound-directly">bound-directly</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bound-value">bound-value</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_bound">bound</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_closed">closed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_scope">scope</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_accumulate">accumulate</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_collateral">collateral</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_bind-recursively">bind-recursively</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_recursive">recursive</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



#### Environments


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_environments">environments</span></span> ~> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_envs">envs</span></span> = <span class="name"><a href="#Name_environments">environments</a></span></code></pre></div>


  An environment represents bindings of identifiers to values.
  Mapping an identifier to <code>( )</code> represents that its binding is hidden.
  
  Circularity in environments (due to recursive bindings) is represented using
  bindings to cut-points called <code><span class="name"><a href="../Linking/index.html#Name_links">links</a></span></code>. Funcons are provided for making
  declarations recursive and for referring to bound values without explicit
  mention of links, so their existence can generally be ignored.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_identifiers">identifiers</span></span> ::= {_:<span class="name"><a href="../../../Values/Composite/Strings/index.html#Name_strings">strings</a></span>} | <span id="Name_identifier-tagged">identifier-tagged</span>(_:<span class="name"><a href="#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_ids">ids</span></span> = <span class="name"><a href="#Name_identifiers">identifiers</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Alias</i>
  <span class="name"><span id="Name_id-tagged">id-tagged</span></span> = <span class="name"><a href="#Name_identifier-tagged">identifier-tagged</a></span></code></pre></div>


  An identifier is either a string of characters, or an identifier tagged with
  some value (e.g., with the identifier of a namespace).



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fresh-identifier">fresh-identifier</span></span> : =><span class="name"><a href="#Name_identifiers">identifiers</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_fresh-identifier">fresh-identifier</a></span></code> computes an identifier distinct from all previously
  computed identifiers.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fresh-identifier">fresh-identifier</a></span> ~> <span class="name"><a href="#Name_identifier-tagged">identifier-tagged</a></span>("generated", <span class="name"><a href="../Generating/index.html#Name_fresh-atom">fresh-atom</a></span>)</code></pre></div>



#### Current bindings

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  <span class="ent-name"><span id="Name_environment">environment</span></span>(_:<span class="name"><a href="#Name_environments">environments</a></span>) |- _ ---> _</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Alias</i>
  <span class="name"><span id="Name_env">env</span></span> = <span class="name"><a href="#Name_environment">environment</a></span></code></pre></div>


  The environment entity allows a computation to refer to the current bindings
  of identifiers to values.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-binding">initialise-binding</span></span>(<span id="Variable309_X"><i class="var">X</i></span>:=><span id="Variable314_T"><i class="var">T</i></span>) : =><span id="Variable329_T"><i class="var">T</i></span>
   ~> <span class="name"><a href="../Linking/index.html#Name_initialise-linking">initialise-linking</a></span>(<span class="name"><a href="../Generating/index.html#Name_initialise-generating">initialise-generating</a></span>(<span class="name"><a href="#Name_closed">closed</a></span>(<a href="#Variable309_X"><i class="var">X</i></a>)))</code></pre></div>


  <code><span class="name"><a href="#Name_initialise-binding">initialise-binding</a></span>(<i class="var">X</i>)</code> ensures that <code><i class="var">X</i></code> does not depend on non-local bindings.
  It also ensures that the linking entity (used to represent potentially cyclic
  bindings) and the generating entity (for creating fresh identifiers) are 
  initialised.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bind-value">bind-value</span></span>(<span id="Variable404_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span id="Variable413_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="#Name_environments">environments</a></span>
    ~> { <a href="#Variable404_I"><i class="var">I</i></a> |-> <a href="#Variable413_V"><i class="var">V</i></a> }
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_bind">bind</span></span> = <span class="name"><a href="#Name_bind-value">bind-value</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_bind-value">bind-value</a></span>(<i class="var">I</i>, <i class="var">X</i>)</code> computes the environment that binds only <code><i class="var">I</i></code> to the value
  computed by <code><i class="var">X</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_unbind">unbind</span></span>(<span id="Variable512_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="#Name_environments">environments</a></span>
    ~> { <a href="#Variable512_I"><i class="var">I</i></a> |-> ( ) }</code></pre></div>


  <code><span class="name"><a href="#Name_unbind">unbind</a></span>(<i class="var">I</i>)</code> computes the environment that hides the binding of <code><i class="var">I</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bound-directly">bound-directly</span></span>(_:<span class="name"><a href="#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>
 
  <code><span class="name"><a href="#Name_bound-directly">bound-directly</a></span>(<i class="var">I</i>)</code> returns the value to which <code><i class="var">I</i></code> is currently bound, if any,
  and otherwise fails.

  <code><span class="name"><a href="#Name_bound-directly">bound-directly</a></span>(<i class="var">I</i>)</code> does *not* follow links. It is used only in connection with
  recursively-bound values when references are not encapsulated in abstractions.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> 
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable714_Rho"><i class="var">Rho</i></a>, <a href="#Variable731_I"><i class="var">I</i></a>) ~> (<span id="Variable695_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)
  --------------------------------------------------------
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(<span id="Variable714_Rho"><i class="var">Rho</i></span>) |- <span class="name"><a href="#Name_bound-directly">bound-directly</a></span>(<span id="Variable731_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>) ---> <a href="#Variable695_V"><i class="var">V</i></a>
<i class="keyword">Rule</i> 
  <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable785_Rho"><i class="var">Rho</i></a>, <a href="#Variable802_I"><i class="var">I</i></a>) ~> ( )
  -----------------------------------------------------------
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(<span id="Variable785_Rho"><i class="var">Rho</i></span>) |- <span class="name"><a href="#Name_bound-directly">bound-directly</a></span>(<span id="Variable802_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>) ---> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bound-value">bound-value</span></span>(<span id="Variable826_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>
   ~> <span class="name"><a href="../Linking/index.html#Name_follow-if-link">follow-if-link</a></span>(<span class="name"><a href="#Name_bound-directly">bound-directly</a></span>(<a href="#Variable826_I"><i class="var">I</i></a>))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_bound">bound</span></span> = <span class="name"><a href="#Name_bound-value">bound-value</a></span></code></pre></div>

 
   <code><span class="name"><a href="#Name_bound-value">bound-value</a></span>(<i class="var">I</i>)</code> inspects the value to which <code><i class="var">I</i></code> is currently bound, if any,
   and otherwise fails. If the value is a link, <code><span class="name"><a href="#Name_bound-value">bound-value</a></span>(<i class="var">I</i>)</code> returns the
   value obtained by following the link, if any, and otherwise fails. If the 
   inspected value is not a link, <code><span class="name"><a href="#Name_bound-value">bound-value</a></span>(<i class="var">I</i>)</code> returns it. 
   
   <code><span class="name"><a href="#Name_bound-value">bound-value</a></span>(<i class="var">I</i>)</code> is used for references to non-recursive bindings and to
   recursively-bound values when references are encapsulated in abstractions.



#### Scope

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_closed">closed</span></span>(<span id="Variable995_X"><i class="var">X</i></span>:=><span id="Variable1000_T"><i class="var">T</i></span>) : =><span id="Variable1015_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_closed">closed</a></span>(<i class="var">X</i>)</code> ensures that <code><i class="var">X</i></code> does not depend on non-local bindings.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )) |- <a href="#Variable1117_X"><i class="var">X</i></a> ---> <span id="Variable1089_X'"><i class="var">X&prime;</i></span>
  -------------------------------------------
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(_) |- <span class="name"><a href="#Name_closed">closed</a></span>(<span id="Variable1117_X"><i class="var">X</i></span>) ---> <span class="name"><a href="#Name_closed">closed</a></span>(<a href="#Variable1089_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_closed">closed</a></span>(<span id="Variable1149_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable1149_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_scope">scope</span></span>(_:<span class="name"><a href="#Name_environments">environments</a></span>, _:=><span id="Variable1187_T"><i class="var">T</i></span>) : =><span id="Variable1203_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_scope">scope</a></span>(<i class="var">D</i>,<i class="var">X</i>)</code> executes <code><i class="var">D</i></code> with the current bindings, to compute an environment
  <code><i class="var">Rho</i></code> representing local bindings. It then executes <code><i class="var">X</i></code> to compute the result,
  with the current bindings extended by <code><i class="var">Rho</i></code>, which may shadow or hide previous
  bindings.
  
  <code><span class="name"><a href="#Name_closed">closed</a></span>(<span class="name"><a href="#Name_scope">scope</a></span>(<i class="var">Rho</i>, <i class="var">X</i>))</code> ensures that <code><i class="var">X</i></code> can reference only the bindings
  provided by <code><i class="var">Rho</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>(<a href="#Variable1426_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></a>, <a href="#Variable1408_Rho0"><i class="var">Rho<sub class="sub">0</sub></i></a>)) |- <a href="#Variable1434_X"><i class="var">X</i></a> ---> <span id="Variable1395_X'"><i class="var">X&prime;</i></span>
  ---------------------------------------------------------------------
  <span class="ent-name"><a href="#Name_environment">environment</a></span>(<span id="Variable1408_Rho0"><i class="var">Rho<sub class="sub">0</sub></i></span>) |- <span class="name"><a href="#Name_scope">scope</a></span>(<span id="Variable1426_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_environments">environments</a></span>, <span id="Variable1434_X"><i class="var">X</i></span>) ---> <span class="name"><a href="#Name_scope">scope</a></span>(<a href="#Variable1426_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></a>, <a href="#Variable1395_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_scope">scope</a></span>(_:<span class="name"><a href="#Name_environments">environments</a></span>, <span id="Variable1481_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable1481_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_accumulate">accumulate</span></span>(_:(=><span class="name"><a href="#Name_environments">environments</a></span>)<sup class="sup">*</sup>) : =><span class="name"><a href="#Name_environments">environments</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_accumulate">accumulate</a></span>(<i class="var">D<sub class="sub">1</sub></i>, <i class="var">D<sub class="sub">2</sub></i>)</code> executes <code><i class="var">D<sub class="sub">1</sub></i></code> with the current bindings, to compute an
  environment <code><i class="var">Rho<sub class="sub">1</sub></i></code> representing some local bindings. It then executes <code><i class="var">D<sub class="sub">2</sub></i></code> to
  compute an environment <code><i class="var">Rho<sub class="sub">2</sub></i></code> representing further local bindings, with the
  current bindings extended by <code><i class="var">Rho<sub class="sub">1</sub></i></code>, which may shadow or hide previous
  current bindings. The result is <code><i class="var">Rho<sub class="sub">1</sub></i></code> extended by <code><i class="var">Rho<sub class="sub">2</sub></i></code>, which may shadow
  or hide the bindings of <code><i class="var">Rho<sub class="sub">1</sub></i></code>.
  
  <code><span class="name"><a href="#Name_accumulate">accumulate</a></span>(_, _)</code> is associative, with <code><span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )</code> as unit, and extends to any
  number of arguments.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                  <a href="#Variable1745_D1"><i class="var">D<sub class="sub">1</sub></i></a> ---> <span id="Variable1731_D1'"><i class="var">D<sub class="sub">1</sub>&prime;</i></span>
  -------------------------------------------
  <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<span id="Variable1745_D1"><i class="var">D<sub class="sub">1</sub></i></span>, <span id="Variable1751_D2"><i class="var">D<sub class="sub">2</sub></i></span>) ---> <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<a href="#Variable1731_D1'"><i class="var">D<sub class="sub">1</sub>&prime;</i></a>, <a href="#Variable1751_D2"><i class="var">D<sub class="sub">2</sub></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<span id="Variable1792_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></span>:<span class="name"><a href="#Name_environments">environments</a></span>, <span id="Variable1801_D2"><i class="var">D<sub class="sub">2</sub></i></span>) ~> <span class="name"><a href="#Name_scope">scope</a></span>(<a href="#Variable1792_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></a>, <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>(<a href="#Variable1801_D2"><i class="var">D<sub class="sub">2</sub></i></a>, <a href="#Variable1792_Rho1"><i class="var">Rho<sub class="sub">1</sub></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_accumulate">accumulate</a></span>( ) ~> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<span id="Variable1867_D1"><i class="var">D<sub class="sub">1</sub></i></span>) ~> <a href="#Variable1867_D1"><i class="var">D<sub class="sub">1</sub></i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<span id="Variable1889_D1"><i class="var">D<sub class="sub">1</sub></i></span>, <span id="Variable1895_D2"><i class="var">D<sub class="sub">2</sub></i></span>, <span id="Variable1901_D+"><i class="var">D<sup class="sup">+</sup></i></span>) ~> <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<a href="#Variable1889_D1"><i class="var">D<sub class="sub">1</sub></i></a>, <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<a href="#Variable1895_D2"><i class="var">D<sub class="sub">2</sub></i></a>, <a href="#Variable1901_D+"><i class="var">D<sup class="sup">+</sup></i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_collateral">collateral</span></span>(<span id="Variable1953_Rho*"><i class="var">Rho<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_environments">environments</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_environments">environments</a></span>
   ~> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<a href="#Variable1953_Rho*"><i class="var">Rho<sup class="sup">*</sup></i></a>)</code></pre></div>

 
  <code><span class="name"><a href="#Name_collateral">collateral</a></span>(<i class="var">D<sub class="sub">1</sub></i>, ...)</code> pre-evaluates its arguments with the current bindings,
  and unites the resulting maps, which fails if the domains are not pairwise
  disjoint.

  <code><span class="name"><a href="#Name_collateral">collateral</a></span>(<i class="var">D<sub class="sub">1</sub></i>, <i class="var">D<sub class="sub">2</sub></i>)</code> is associative and commutative with <code><span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )</code> as unit, 
  and extends to any number of arguments.



#### Recurse

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bind-recursively">bind-recursively</span></span>(<span id="Variable2091_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span id="Variable2100_E"><i class="var">E</i></span>:=><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="#Name_environments">environments</a></span>
    ~> <span class="name"><a href="#Name_recursive">recursive</a></span>({<a href="#Variable2091_I"><i class="var">I</i></a>}, <span class="name"><a href="#Name_bind-value">bind-value</a></span>(<a href="#Variable2091_I"><i class="var">I</i></a>, <a href="#Variable2100_E"><i class="var">E</i></a>))</code></pre></div>


  <code><span class="name"><a href="#Name_bind-recursively">bind-recursively</a></span>(<i class="var">I</i>, <i class="var">E</i>)</code> binds <code><i class="var">I</i></code> to a link that refers to the value of <code><i class="var">E</i></code>, 
  representing a recursive binding of <code><i class="var">I</i></code> to the value of <code><i class="var">E</i></code>.
  Since <code><span class="name"><a href="#Name_bound-value">bound-value</a></span>(<i class="var">I</i>)</code> follows links, it should not be executed during the
  evaluation of <code><i class="var">E</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_recursive">recursive</span></span>(<span id="Variable2278_SI"><i class="var">SI</i></span>:<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>), <span id="Variable2294_D"><i class="var">D</i></span>:=><span class="name"><a href="#Name_environments">environments</a></span>) : =><span class="name"><a href="#Name_environments">environments</a></span>
    ~> <span class="name"><a href="#Name_re-close">re-close</a></span>(<span class="name"><a href="#Name_bind-to-forward-links">bind-to-forward-links</a></span>(<a href="#Variable2278_SI"><i class="var">SI</i></a>), <a href="#Variable2294_D"><i class="var">D</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_recursive">recursive</a></span>(<i class="var">SI</i>, <i class="var">D</i>)</code> executes <code><i class="var">D</i></code> with potential recursion on the bindings of 
  the identifiers in the set <code><i class="var">SI</i></code> (which need not be the same as the set of
  identifiers bound by <code><i class="var">D</i></code>).



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_re-close">re-close</span></span>(<span id="Variable2415_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span class="name"><a href="../Linking/index.html#Name_links">links</a></span>), <span id="Variable2434_D"><i class="var">D</i></span>:=><span class="name"><a href="#Name_environments">environments</a></span>) : =><span class="name"><a href="#Name_environments">environments</a></span>
    ~> <span class="name"><a href="#Name_accumulate">accumulate</a></span>(<span class="name"><a href="#Name_scope">scope</a></span>(<a href="#Variable2415_M"><i class="var">M</i></a>, <a href="#Variable2434_D"><i class="var">D</i></a>), <span class="name"><a href="../Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="#Name_set-forward-links">set-forward-links</a></span>(<a href="#Variable2415_M"><i class="var">M</i></a>), <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map">map</a></span>( )))</code></pre></div>


  <code><span class="name"><a href="#Name_re-close">re-close</a></span>(<i class="var">M</i>, <i class="var">D</i>)</code> first executes <code><i class="var">D</i></code> in the scope <code><i class="var">M</i></code>, which maps identifiers
  to freshly allocated links. This computes an environment <code><i class="var">Rho</i></code> where the bound
  values may contain links, or implicit references to links in abstraction
  values. It then sets the link for each identifier in the domain of <code><i class="var">M</i></code> to
  refer to its bound value in <code><i class="var">Rho</i></code>, and returns <code><i class="var">Rho</i></code> as the result.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bind-to-forward-links">bind-to-forward-links</span></span>(<span id="Variable2622_SI"><i class="var">SI</i></span>:<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>)) : =><span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span class="name"><a href="../Linking/index.html#Name_links">links</a></span>)
    ~> <span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<span class="name"><a href="../Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="#Name_bind-value">bind-value</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../Linking/index.html#Name_fresh-link">fresh-link</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>)), 
                                <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_set-elements">set-elements</a></span>(<a href="#Variable2622_SI"><i class="var">SI</i></a>)))</code></pre></div>


  <code><span class="name"><a href="#Name_bind-to-forward-links">bind-to-forward-links</a></span>(<i class="var">SI</i>)</code> binds each identifier in the set <code><i class="var">SI</i></code> to a
  freshly allocated link.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_set-forward-links">set-forward-links</span></span>(<span id="Variable2747_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="#Name_identifiers">identifiers</a></span>, <span class="name"><a href="../Linking/index.html#Name_links">links</a></span>)) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="../Flowing/index.html#Name_effect">effect</a></span>(<span class="name"><a href="../Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="../Linking/index.html#Name_set-link">set-link</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-lookup">map-lookup</a></span>(<a href="#Variable2747_M"><i class="var">M</i></a>, <span class="name"><a href="../Giving/index.html#Name_given">given</a></span>), <span class="name"><a href="#Name_bound-value">bound-value</a></span>(<span class="name"><a href="../Giving/index.html#Name_given">given</a></span>)),
                             <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_set-elements">set-elements</a></span>(<span class="name"><a href="../../../Values/Composite/Maps/index.html#Name_map-domain">map-domain</a></span>(<a href="#Variable2747_M"><i class="var">M</i></a>))))</code></pre></div>


  For each identifier <code><i class="var">I</i></code> in the domain of <code><i class="var">M</i></code>, <code><span class="name"><a href="#Name_set-forward-links">set-forward-links</a></span>(<i class="var">M</i>)</code> sets the 
  link to which <code><i class="var">I</i></code> is mapped by <code><i class="var">M</i></code> to the current bound value of <code><i class="var">I</i></code>.



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
[Binding.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Binding/Binding.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Binding
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Binding
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Binding/Binding.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Binding/Binding.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
