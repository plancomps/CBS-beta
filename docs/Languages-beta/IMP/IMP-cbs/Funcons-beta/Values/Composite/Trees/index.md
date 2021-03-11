---
layout: default
title: "Trees"
parent: Composite
ancestor: Languages-beta

---

[Languages-beta] : [Trees.cbs]

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
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_trees">trees</span></span>(<span id="Variable61_T"><i class="var">T</i></span>) ::= <span id="Name_tree">tree</span>( _:<span id="Variable77_T"><i class="var">T</i></span>, _:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable89_T"><i class="var">T</i></span>))<sup class="sup">*</sup>)</code></pre></div>


  <code><span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>)</code> consists of finitely-branching trees with elements of type <code><i class="var">T</i></code>.
  When <code><i class="var">V</i>:<i class="var">T</i></code>, <code><span class="name"><a href="#Name_tree">tree</a></span>(<i class="var">V</i>)</code> is a leaf, and <code><span class="name"><a href="#Name_tree">tree</a></span>(<i class="var">V</i>,<i class="var">B<sub class="sub">1</sub></i>,...,<i class="var">Bn</i>)</code> is a tree with
  branches <code><i class="var">B<sub class="sub">1</sub></i></code>, ..., <code><i class="var">Bn</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tree-root-value">tree-root-value</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable270_T"><i class="var">T</i></span>)) : =>(<span id="Variable290_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tree-root-value">tree-root-value</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable307_V"><i class="var">V</i></span>:<i class="var">T</i>, _*:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>) ~> <a href="#Variable307_V"><i class="var">V</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_tree-branch-sequence">tree-branch-sequence</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable364_T"><i class="var">T</i></span>)) : =>(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable385_T"><i class="var">T</i></span>))<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_tree-branch-sequence">tree-branch-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(_:<i class="var">T</i>, <span id="Variable419_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>) ~> <a href="#Variable419_B*"><i class="var">B<sup class="sup">*</sup></i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_single-branching-sequence">single-branching-sequence</span></span>(_:<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable466_T"><i class="var">T</i></span>)) : =><span id="Variable487_T+"><i class="var">T<sup class="sup">+</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <i class="var">B</i></code> extracts the values in <code><i class="var">B</i></code> starting from 
  the root, provided that <code><i class="var">B</i></code> is at most single-branching; otherwise it fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable544_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable544_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable572_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable583_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))
   ~> <span class="name"><a href="../../../../../../Computations/Normal/Flowing/index.html#Name_left-to-right">left-to-right</a></span>( <a href="#Variable572_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <a href="#Variable583_B"><i class="var">B</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_tree">tree</a></span>(_:<i class="var">T</i>, _:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), _+:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">+</sup>) ~> <span class="name"><a href="../../../../../../Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>




  A sequence of trees corresponds to a forest, and the selector funcons
  on trees <code><i class="var">B</i></code> extend to forests <code><i class="var">B<sup class="sup">*</sup></i></code>:

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-root-value-sequence">forest-root-value-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable738_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable766_T*"><i class="var">T<sup class="sup">*</sup></i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>(<span id="Variable775_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), <span id="Variable794_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<span class="name"><a href="#Name_tree-root-value">tree-root-value</a></span> <a href="#Variable775_B"><i class="var">B</i></a> , <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span> <a href="#Variable794_B*"><i class="var">B<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-root-value-sequence">forest-root-value-sequence</a></span>( ) ~>( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-branch-sequence">forest-branch-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable868_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable896_T*"><i class="var">T<sup class="sup">*</sup></i></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span>(<span id="Variable905_B"><i class="var">B</i></span>:<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>), <span id="Variable924_B*"><i class="var">B<sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<span class="name"><a href="#Name_tree-branch-sequence">tree-branch-sequence</a></span> <a href="#Variable905_B"><i class="var">B</i></a> , <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span> <a href="#Variable924_B*"><i class="var">B<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-branch-sequence">forest-branch-sequence</a></span>( ) ~>( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_forest-value-sequence">forest-value-sequence</span></span>(_:(<span class="name"><a href="#Name_trees">trees</a></span>(<span id="Variable998_T"><i class="var">T</i></span>))<sup class="sup">*</sup>) : =><span id="Variable1026_T*"><i class="var">T<sup class="sup">*</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <i class="var">B<sup class="sup">*</sup></i></code> provides the values from a left-to-right pre-order
  depth-first traversal.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span>(<span class="name"><a href="#Name_tree">tree</a></span>(<span id="Variable1058_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1071_B1*"><i class="var">B<sub class="sub">1</sub><sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>), <span id="Variable1105_B2*"><i class="var">B<sub class="sub">2</sub><sup class="sup">*</sup></i></span>:(<span class="name"><a href="#Name_trees">trees</a></span>(<i class="var">T</i>))<sup class="sup">*</sup>)
   ~>(<a href="#Variable1058_V"><i class="var">V</i></a> , <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <a href="#Variable1071_B1*"><i class="var">B<sub class="sub">1</sub><sup class="sup">*</sup></i></a>, <span class="name"><a href="#Name_forest-value-sequence">forest-value-sequence</a></span> <a href="#Variable1105_B2*"><i class="var">B<sub class="sub">2</sub><sup class="sup">*</sup></i></a>)
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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Trees.cbs]: /CBS-beta/Languages-beta/IMP/IMP-cbs/Funcons-beta/Values/Composite/Trees/Trees.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Funcons-beta/Values/Composite/Trees/Trees.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
