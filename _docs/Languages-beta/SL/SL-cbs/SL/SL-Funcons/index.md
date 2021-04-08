---
title: "SL-Funcons"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-Funcons.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SL">"SL"</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code>[
  // SL-specific funcons
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_sl-to-string">sl-to-string</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_integer-add-else-string-append">integer-add-else-string-append</a></span>
  
  // Abbreviations
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_int">int</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_bool">bool</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_str">str</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_obj">obj</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_fun">fun</a></span>
  
  // Further funcons
  
  //   Binding
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_scope-closed">scope-closed</a></span>
  
  //   Local variables
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_initialise-local-variables">initialise-local-variables</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_local-variable">local-variable</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_local-variable-initialise">local-variable-initialise</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_local-variable-assign">local-variable-assign</a></span>
  
  //   Global bindings
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_initialise-global-bindings">initialise-global-bindings</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_override-global-bindings">override-global-bindings</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_global-bound">global-bound</a></span>
  
  //   Composite input and output
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_read-line">read-line</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_print-line">print-line</a></span>
]</code></pre></div>


# SL-specific funcons


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sl-to-string">sl-to-string</span></span>(<span id="Variable87_V"><i class="var">V</i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sl-to-string">sl-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) ~> "null"
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sl-to-string">sl-to-string</a></span>(<span id="Variable122_V"><i class="var">V</i></span>:~<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<a href="#Variable122_V"><i class="var">V</i></a>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_integer-add-else-string-append">integer-add-else-string-append</span></span>(<span id="Variable154_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>, <span id="Variable164_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="#Name_int">int</a></span> <a href="#Variable154_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <span class="name"><a href="#Name_int">int</a></span> <a href="#Variable164_V2"><i class="var">V<sub class="sub">2</sub></i></a>),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<span class="name"><a href="#Name_sl-to-string">sl-to-string</a></span> <a href="#Variable154_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <span class="name"><a href="#Name_sl-to-string">sl-to-string</a></span> <a href="#Variable164_V2"><i class="var">V<sub class="sub">2</sub></i></a>))</code></pre></div>


# Abbreviations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_int">int</span></span>(<span id="Variable256_V"><i class="var">V</i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>(<a href="#Variable256_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_bool">bool</span></span>(<span id="Variable295_V"><i class="var">V</i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>(<a href="#Variable295_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_str">str</span></span>(<span id="Variable334_V"><i class="var">V</i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>(<a href="#Variable334_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_obj">obj</span></span>(<span id="Variable373_V"><i class="var">V</i></span>:<span class="name"><a href="../SL-2-Expressions/index.html#Name_sl-values">sl-values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>(<a href="#Variable373_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fun">fun</span></span>(<span id="Variable412_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_, _)
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_cast-to-type">cast-to-type</a></span>(<a href="#Variable412_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_, _))</code></pre></div>


# Further funcons


  Some of the funcons defined below might be sufficiently reuseful for
  inclusion in Funcons-beta.


## Binding

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_scope-closed">scope-closed</span></span>(<span id="Variable506_Env"><i class="var">Env</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>, <span id="Variable515_X"><i class="var">X</i></span>:=><span id="Variable520_T"><i class="var">T</i></span>) : => <span id="Variable536_T"><i class="var">T</i></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_closed">closed</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<a href="#Variable506_Env"><i class="var">Env</i></a>, <a href="#Variable515_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_scope-closed">scope-closed</a></span>(<i class="var">D</i>, <i class="var">X</i>)</code> evaluates <code><i class="var">D</i></code> in the current environment, then
  evaluates <code><i class="var">X</i></code> in the resulting environment. Note the difference between
  <code><span class="name"><a href="#Name_scope-closed">scope-closed</a></span>(<i class="var">D</i>, <i class="var">X</i>)</code> and <code><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_closed">closed</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<i class="var">D</i>, <i class="var">X</i>))</code>: the latter is equivalent
  to <code><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_closed">closed</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_closed">closed</a></span> <i class="var">D</i>, <i class="var">X</i>))</code>, where <code><i class="var">D</i></code> cannot reference any bindings.


## Local variables


  The local variable map is stored in a variable bound to "local-variables".
  Initialising a local variable updates the stored local variable map. 
  Subsequent assignments to a local variable do not change the stored map.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-local-variables">initialise-local-variables</span></span> : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>("local-variables", 
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_local-variable">local-variable</span></span>(<span id="Variable783_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "local-variables", <a href="#Variable783_I"><i class="var">I</i></a>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_local-variable-initialise">local-variable-initialise</span></span>(<span id="Variable826_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>, <span id="Variable835_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "local-variables", 
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>(
          { <a href="#Variable826_I"><i class="var">I</i></a> |-> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <a href="#Variable835_V"><i class="var">V</i></a>) },
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "local-variables"))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_local-variable-assign">local-variable-assign</span></span>(<span id="Variable909_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>, <span id="Variable918_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="#Name_local-variable">local-variable</a></span> <a href="#Variable909_I"><i class="var">I</i></a>, <a href="#Variable918_V"><i class="var">V</i></a>),
        <span class="name"><a href="#Name_local-variable-initialise">local-variable-initialise</a></span>(<a href="#Variable909_I"><i class="var">I</i></a>, <a href="#Variable918_V"><i class="var">V</i></a>))</code></pre></div>


## Global bindings


  The global bindings map is stored in a variable bound to "global-bindings". 
  Global declaration or redeclaration of an identifier involves updating the
  stored global environment.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-global-bindings">initialise-global-bindings</span></span> : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
    ~>  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>("global-bindings", 
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_override-global-bindings">override-global-bindings</span></span>(<span id="Variable1042_E"><i class="var">E</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "global-bindings",
         <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-override">map-override</a></span>(<a href="#Variable1042_E"><i class="var">E</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "global-bindings"))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_global-bound">global-bound</span></span>(<span id="Variable1095_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
    ~>  <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "global-bindings", <a href="#Variable1095_I"><i class="var">I</i></a>)</code></pre></div>


## Composite input and output

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_read-line">read-line</span></span> : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>,
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-eq">is-eq</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <b class="atom">'\n'</b>),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>,
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="#Name_read-line">read-line</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_read-line">read-line</a></span></code> reads characters from the standard input until a linefeed
  character, giving the string formed from the sequence of characters
  excluding the newline. If the input ends before the end of the line,
  it fails.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_print-line">print-line</span></span>(<span id="Variable1221_S"><i class="var">S</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>) : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<a href="#Variable1221_S"><i class="var">S</i></a>, "\n")</code></pre></div>



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
[SL-Funcons.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons/SL-Funcons.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Funcons
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Funcons
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons/SL-Funcons.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-Funcons/SL-Funcons.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
