---
title: "Trees"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Trees.cbs] \| [PRETTY] \| [PDF]


----
### Trees

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_trees">trees</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_tree">tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_tree-root-value">tree-root-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_tree-branch-sequence">tree-branch-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_trees">trees</span></span>(<span id="Variable61_T"><i class="var">T</i></span>) ::= <span id="Name_tree">tree</span>( _:<span id="Variable77_T"><i class="var">T</i></span>, _:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable89_T"><i class="var">T</i></span>))<sup class="sup">*</sup>)</code></pre></div>


  <code><span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>)</code> consists of finitely-branching trees with elements of type <code><i class="var">T</i></code>.
  When <code><i class="var">V</i>:<i class="var">T</i></code>, <code><span class="name"><a href="#Name_tree">tree</a></span>(<i class="var">V</i>)</code> is a leaf, and <code><span class="name"><a href="#Name_tree">tree</a></span>(<i class="var">V</i>,B_1,...,B_n)</code> is a tree with
  branches <code>B_1</code>, ..., <code>B_n</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tree-root-value">tree-root-value</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable272_T"><i class="var">T</i></span>)) : =>(<span id="Variable292_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tree-root-value">tree-root-value</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable309_V"><i class="var">V</i></span>:<i class="var">T</i>, _*:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>) ~> <a href="#Variable309_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tree-branch-sequence">tree-branch-sequence</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable366_T"><i class="var">T</i></span>)) : =>(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable387_T"><i class="var">T</i></span>))<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tree-branch-sequence">tree-branch-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(_:<i class="var">T</i>, <span id="Variable421_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>) ~> <a href="#Variable421_B*"><i class="var">B<sup class="sup">*</sup></i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_single-branching-sequence">single-branching-sequence</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable468_T"><i class="var">T</i></span>)) : =><span id="Variable489_T+"><i class="var">T<sup class="sup">+</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <i class="var">B</i></code> extracts the values in <code><i class="var">B</i></code> starting from 
  the root, provided that <code><i class="var">B</i></code> is at most single-branching; otherwise it fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable546_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable546_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable574_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable585_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))
   ~> <span class="name"><a href="../../../Computations/Normal/Flowing/index.html#Name_left-to-right">left-to-right</a></span>( <a href="#Variable574_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <a href="#Variable585_B"><i class="var">B</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(_:<i class="var">T</i>, _:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), _+:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">+</sup>) ~> <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>




  A sequence of trees corresponds to a forest, and the selector funcons
  on trees <code><i class="var">B</i></code> extend to forests <code><i class="var">B<sup class="sup">*</sup></i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-root-value-sequence">forest-root-value-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable740_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable768_T*"><i class="var">T<sup class="sup">*</sup></i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>(<span id="Variable777_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), <span id="Variable796_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<span class="name"><a href="#Name_tree-root-value">tree-root-value</a></span> <a href="#Variable777_B"><i class="var">B</i></a> , <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span> <a href="#Variable796_B*"><i class="var">B<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>( ) ~>( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-branch-sequence">forest-branch-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable870_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable898_T*"><i class="var">T<sup class="sup">*</sup></i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span>(<span id="Variable907_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), <span id="Variable926_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<span class="name"><a href="#Name_tree-branch-sequence">tree-branch-sequence</a></span> <a href="#Variable907_B"><i class="var">B</i></a> , <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span> <a href="#Variable926_B*"><i class="var">B<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span>( ) ~>( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-value-sequence">forest-value-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable1000_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable1028_T*"><i class="var">T<sup class="sup">*</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <i class="var">B<sup class="sup">*</sup></i></code> provides the values from a left-to-right pre-order
  depth-first traversal.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span>(<span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable1060_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1073_B1*"><i class="var">B<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>), <span id="Variable1107_B2*"><i class="var">B<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<a href="#Variable1060_V"><i class="var">V</i></a> , <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <a href="#Variable1073_B1*"><i class="var">B<sub class="sub">1</sub><sup class="sup">*</sup></i></a>, <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <a href="#Variable1107_B2*"><i class="var">B<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span>( ) ~>( )</code></pre></div>




  Other linearizations of trees can be added: breadth-first, right-to-left,
  C3, etc.
    


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
[Trees.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Trees/Trees.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Trees
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Trees
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Trees/Trees.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Trees/Trees.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
