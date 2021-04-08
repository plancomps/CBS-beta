---
title: "Graphs"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Graphs.cbs] \| [PRETTY] \| [PDF]


----
### Graphs

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_directed-graphs">directed-graphs</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-cyclic">is-cyclic</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_topological-sort">topological-sort</a></span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_GT"><i class="var">GT</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_directed-graphs">directed-graphs</span></span>(<span id="Variable41_GT"><i class="var">GT</i></span>) ~> <span class="name"><a href="../Maps/index.html#Name_maps">maps</a></span>(<a href="#Variable41_GT"><i class="var">GT</i></a>, <span class="name"><a href="../Sets/index.html#Name_sets">sets</a></span>(<a href="#Variable41_GT"><i class="var">GT</i></a>))</code></pre></div>


  <code><span class="name"><a href="#Name_directed-graphs">directed-graphs</a></span>(<i class="var">GT</i>)</code> models directed graphs with vertices of type <code><i class="var">GT</i></code>,
  represented as maps from vertices to the set of vertices to which the
  vertex has an edge.  E.g., the graph

    (1)--->(2)

  would be represented as <code>{ 1 |-> {2}, 2 |-> {} }</code>  


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-cyclic">is-cyclic</span></span>(_:<span class="name"><a href="#Name_directed-graphs">directed-graphs</a></span>(<span id="Variable156_GT"><i class="var">GT</i></span>)) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_topological-sort">topological-sort</span></span>(_:<span class="name"><a href="#Name_directed-graphs">directed-graphs</a></span>(<span id="Variable187_GT"><i class="var">GT</i></span>)) : =>(<span id="Variable207_GT"><i class="var">GT</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_topological-sort">topological-sort</a></span>(<i class="var">DG</i>)</code> returns a topological ordering of the vertices
  of the graph <code><i class="var">DG</i></code>, as a sequence of vertices, provided that <code><i class="var">DG</i></code> is not
  cyclic.



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
[Graphs.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Graphs/Graphs.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Graphs
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Graphs
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Graphs/Graphs.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Graphs/Graphs.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
