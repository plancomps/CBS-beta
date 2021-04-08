---
title: "Classes"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Classes.cbs] \| [PRETTY] \| [PDF]


----
### Classes

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_classes">classes</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class">class</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class-instantiator">class-instantiator</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class-feature-map">class-feature-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class-superclass-name-sequence">class-superclass-name-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_is-subclass-name">is-subclass-name</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_class-name-single-inheritance-feature-map">class-name-single-inheritance-feature-map</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_classes">classes</span></span> ::= 
    <span id="Name_class">class</span>(_:<span class="name"><a href="../../Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(<span class="name"><a href="../References/index.html#Name_references">references</a></span>(<span class="name"><a href="../Objects/index.html#Name_objects">objects</a></span>)), _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span><sup class="sup">*</sup>)</code></pre></div>


  <code><span class="name"><a href="#Name_class">class</a></span>(<i class="var">Thunk</i>, <i class="var">Env</i>, <i class="var">C<sup class="sup">*</sup></i>)</code> is a class with:
  * a thunk <code><i class="var">Thunk</i></code> for instantiating the class,
  * an environment <code><i class="var">Env</i></code> with the features declared by the class, and
  * a sequence <code><i class="var">C<sup class="sup">*</sup></i></code> of names of direct superclasses.
  <code><span class="name"><a href="#Name_class">class</a></span>(<i class="var">Thunk</i>, <i class="var">Env</i>)</code> is a base class, having no superclasses.
  <code><span class="name"><a href="#Name_class">class</a></span>(<i class="var">Thunk</i>, <i class="var">Env</i>, <i class="var">C</i>)</code> is a class with a single superclass.
  
  Class instantiation forces its thunk to compute a reference to an object.

  Features are inherited from superclasses. When features with the same name
  are declared in simultaneously inherited classes, the order of the superclass
  identifiers in <code><i class="var">C<sup class="sup">*</sup></i></code> may affect resolution of references to features. 
  Overloading of feature names is supported by using type maps as features.

  The class table is represented by binding class names to classes. 
  The class superclass hierarchy is assumed to be acyclic.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_class-instantiator">class-instantiator</span></span>(_:<span class="name"><a href="#Name_classes">classes</a></span>) : =><span class="name"><a href="../../Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(<span class="name"><a href="../References/index.html#Name_references">references</a></span>(<span class="name"><a href="../Objects/index.html#Name_objects">objects</a></span>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_class-instantiator">class-instantiator</a></span>
    <span class="name"><a href="#Name_class">class</a></span>(<span id="Variable309_Thunk"><i class="var">Thunk</i></span>:<span class="name"><a href="../../Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(_), <span id="Variable326_Envs"><i class="var">Envs</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span id="Variable335_C*"><i class="var">C<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span><sup class="sup">*</sup>) ~> <a href="#Variable309_Thunk"><i class="var">Thunk</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_class-feature-map">class-feature-map</span></span>(_:<span class="name"><a href="#Name_classes">classes</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_class-feature-map">class-feature-map</a></span>
    <span class="name"><a href="#Name_class">class</a></span>(<span id="Variable384_Thunk"><i class="var">Thunk</i></span>:<span class="name"><a href="../../Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(_), <span id="Variable401_Env"><i class="var">Env</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span id="Variable410_C*"><i class="var">C<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span><sup class="sup">*</sup>) ~> <a href="#Variable401_Env"><i class="var">Env</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_class-superclass-name-sequence">class-superclass-name-sequence</span></span>(_:<span class="name"><a href="#Name_classes">classes</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_class-superclass-name-sequence">class-superclass-name-sequence</a></span> 
    <span class="name"><a href="#Name_class">class</a></span>(<span id="Variable461_Thunk"><i class="var">Thunk</i></span>:<span class="name"><a href="../../Abstraction/Thunks/index.html#Name_thunks">thunks</a></span>(_), <span id="Variable478_Env"><i class="var">Env</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span id="Variable487_C*"><i class="var">C<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span><sup class="sup">*</sup>) ~> <a href="#Variable487_C*"><i class="var">C<sup class="sup">*</sup></i></a></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_class-name-tree">class-name-tree</span></span>(_:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../Trees/index.html#Name_trees">trees</a></span>(<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span> <i class="var">C</i></code> forms a tree where the branches are the class name
  trees for the superclasses of <code><i class="var">C</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span>(<span id="Variable577_C"><i class="var">C</i></span> : <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>)
   ~> <span class="name"><a href="../Trees/index.html#Name_tree">tree</a></span>(<a href="#Variable577_C"><i class="var">C</i></a>,
        <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
          <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>,
          <span class="name"><a href="#Name_class-superclass-name-sequence">class-superclass-name-sequence</a></span> <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span> <a href="#Variable577_C"><i class="var">C</i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-subclass-name">is-subclass-name</span></span>(<span id="Variable629_C"><i class="var">C</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable639_C'"><i class="var">C&prime;</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
   ~> <span class="name"><a href="../Sets/index.html#Name_is-in-set">is-in-set</a></span>(<a href="#Variable629_C"><i class="var">C</i></a>, { <span class="name"><a href="../Trees/index.html#Name_forest-value-sequence">forest-value-sequence</a></span> <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span> <a href="#Variable639_C'"><i class="var">C&prime;</i></a> })</code></pre></div>


  The result of <code><span class="name"><a href="#Name_is-subclass-name">is-subclass-name</a></span>(<i class="var">C</i>, <i class="var">C&prime;</i>)</code> does not depend on the order of
  the names in <code><span class="name"><a href="../Trees/index.html#Name_forest-value-sequence">forest-value-sequence</a></span> <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span> <i class="var">C&prime;</i></code>. 



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_class-name-single-inheritance-feature-map">class-name-single-inheritance-feature-map</span></span>(<span id="Variable741_C"><i class="var">C</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
   ~> <span class="name"><a href="../Maps/index.html#Name_map-override">map-override</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
        <span class="name"><a href="#Name_class-feature-map">class-feature-map</a></span> <span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_bound-value">bound-value</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>,
        <span class="name"><a href="../Trees/index.html#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_class-name-tree">class-name-tree</a></span> <a href="#Variable741_C"><i class="var">C</i></a>)</code></pre></div>


  For multiple inheritance, different resolution orders can be specified
  by using different linearisations of the class name tree.



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
[Classes.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Classes/Classes.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Classes
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Classes
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Classes/Classes.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Classes/Classes.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
