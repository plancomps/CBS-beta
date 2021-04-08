---
title: "Generating"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Generating.cbs] \| [PRETTY] \| [PDF]


----
### Generating

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_atoms">atoms</a></span>
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_used-atom-set">used-atom-set</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_initialise-generating">initialise-generating</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_fresh-atom">fresh-atom</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_use-atom-not-in">use-atom-not-in</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_atoms">atoms</span></span></code></pre></div>

  <code><span class="name"><a href="#Name_atoms">atoms</a></span></code> is the type of values used as distinguishable tags.
  Notation for individual atoms is not provided.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  < _ , <span class="ent-name"><span id="Name_used-atom-set">used-atom-set</span></span>(_:<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_atoms">atoms</a></span>)) > ---> < _ , <span class="ent-name">used-atom-set</span>(_:<span class="name">sets</span>(<span class="name">atoms</span>)) ></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-generating">initialise-generating</span></span>(_:=><span id="Variable109_T"><i class="var">T</i></span>) : =><span id="Variable124_T"><i class="var">T</i></span></code></pre></div>

  The initial value of the <code><span class="name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<i class="var">SA</i>)</code> entity is unspecified. It could
  contains atoms that are reserved for internal use.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fresh-atom">fresh-atom</span></span> : =><span class="name"><a href="#Name_atoms">atoms</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_fresh-atom">fresh-atom</a></span></code> computes an atom distinct from all previously computed atoms.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_element-not-in">element-not-in</a></span>(<span class="name"><a href="#Name_atoms">atoms</a></span>, <a href="#Variable212_SA"><i class="var">SA</i></a>) ~> <span id="Variable198_A"><i class="var">A</i></span>
  -----------------------------------------------
  < <span class="name"><a href="#Name_fresh-atom">fresh-atom</a></span> , <span class="ent-name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<span id="Variable212_SA"><i class="var">SA</i></span>) > 
    ---> < <a href="#Variable198_A"><i class="var">A</i></a> , <span class="ent-name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_set-insert">set-insert</a></span>(<a href="#Variable198_A"><i class="var">A</i></a>, <a href="#Variable212_SA"><i class="var">SA</i></a>)) ></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_use-atom-not-in">use-atom-not-in</span></span>(_:<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_atoms">atoms</a></span>)) : =><span class="name"><a href="#Name_atoms">atoms</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_use-atom-not-in">use-atom-not-in</a></span>(<i class="var">SA</i>)</code> computes an atom not in the set <code><i class="var">SA</i></code>, and inserts it
  in the <code><span class="name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<i class="var">SA&prime;</i>)</code> entity, in case it was not previously used.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_element-not-in">element-not-in</a></span>(<span class="name"><a href="#Name_atoms">atoms</a></span>, <a href="#Variable380_SA"><i class="var">SA</i></a>) ~> <span id="Variable368_A"><i class="var">A</i></span>
  --------------------------------------------------------
  < <span class="name"><a href="#Name_use-atom-not-in">use-atom-not-in</a></span>(<span id="Variable380_SA"><i class="var">SA</i></span>:<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="#Name_atoms">atoms</a></span>)) , <span class="ent-name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<span id="Variable403_SA'"><i class="var">SA&prime;</i></span>) >
    ---> < <a href="#Variable368_A"><i class="var">A</i></a> , <span class="ent-name"><a href="#Name_used-atom-set">used-atom-set</a></span>(<span class="name"><a href="../../../Values/Composite/Sets/index.html#Name_set-insert">set-insert</a></span>(<a href="#Variable368_A"><i class="var">A</i></a>, <a href="#Variable403_SA'"><i class="var">SA&prime;</i></a>)) ></code></pre></div>



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
[Generating.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Generating/Generating.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Generating
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Generating
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Generating/Generating.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Generating/Generating.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
