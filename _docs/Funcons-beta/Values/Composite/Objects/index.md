---
title: "Objects"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Objects.cbs] \| [PRETTY] \| [PDF]


----
### Objects

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_objects">objects</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object">object</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-identity">object-identity</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-class-name">object-class-name</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-feature-map">object-feature-map</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-subobject-sequence">object-subobject-sequence</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-tree">object-tree</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_object-single-inheritance-feature-map">object-single-inheritance-feature-map</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_objects">objects</span></span> ::= <span id="Name_object">object</span>(_:<span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, _:<span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>)</code></pre></div>


  <code><span class="name"><a href="#Name_object">object</a></span>( <i class="var">A</i>, <i class="var">C</i>, <i class="var">Env</i>, <i class="var">O<sup class="sup">*</sup></i>)</code> is an object:
  * distinguished by an atom <code><i class="var">A</i></code>,
  * of a class named <code><i class="var">C</i></code>,
  * with an environment <code><i class="var">Env</i></code> with the features of the object, and 
  * a sequence <code><i class="var">O<sup class="sup">*</sup></i></code> of subobjects of the direct superclasses of <code><i class="var">C</i></code>.
  <code><span class="name"><a href="#Name_object">object</a></span>( <i class="var">A</i>, <i class="var">C</i>, <i class="var">Env</i>)</code> is an object of a base class.
  <code><span class="name"><a href="#Name_object">object</a></span>( <i class="var">A</i>, <i class="var">C</i>, <i class="var">Env</i>, <i class="var">O&prime;</i>)</code> is an object of a class with a single superclass.
  With multiple inheritance, subobjects due to repeated inheritance of the 
  same class may be shared.
  
  Implementations of objects generally represent an object as a vector of
  fields, and use pointers and offsets for efficient access to individual
  fields. The representation of objects used in this specification is
  independent of such implementation concerns.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-identity">object-identity</span></span>(_:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_object-identity">object-identity</a></span>
    <span class="name"><a href="#Name_object">object</a></span>(<span id="Variable327_A"><i class="var">A</i></span>:<span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, _*:<span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>) ~> <a href="#Variable327_A"><i class="var">A</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-class-name">object-class-name</span></span>(_:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_object-class-name">object-class-name</a></span>
    <span class="name"><a href="#Name_object">object</a></span>(_:<span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>, <span id="Variable406_C"><i class="var">C</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, _*:<span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>) ~> <a href="#Variable406_C"><i class="var">C</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-feature-map">object-feature-map</span></span>(_:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_object-feature-map">object-feature-map</a></span>
    <span class="name"><a href="#Name_object">object</a></span>(_:<span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, <span id="Variable485_Env"><i class="var">Env</i></span>:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, _*:<span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>) ~> <a href="#Variable485_Env"><i class="var">Env</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-subobject-sequence">object-subobject-sequence</span></span>(_:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_object-subobject-sequence">object-subobject-sequence</a></span>
    <span class="name"><a href="#Name_object">object</a></span>(_:<span class="name"><a href="../../../Computations/Normal/Generating/index.html#Name_atoms">atoms</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_identifiers">identifiers</a></span>, _:<span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>, <span id="Variable567_O*"><i class="var">O<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_objects">objects</a></span><sup class="sup">*</sup>) ~> <a href="#Variable567_O*"><i class="var">O<sup class="sup">*</sup></i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-tree">object-tree</span></span>(_:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="../Trees/index.html#Name_trees">trees</a></span>(<span class="name"><a href="#Name_objects">objects</a></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_object-tree">object-tree</a></span> <i class="var">O</i></code> forms a tree where the branches are the object trees for
  the direct subobjects of <code><i class="var">O</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_object-tree">object-tree</a></span>(<span id="Variable658_O"><i class="var">O</i></span>:<span class="name"><a href="#Name_objects">objects</a></span>)
   ~> <span class="name"><a href="../Trees/index.html#Name_tree">tree</a></span>(<a href="#Variable658_O"><i class="var">O</i></a>,
        <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span> (
          <span class="name"><a href="#Name_object-tree">object-tree</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>,
          <span class="name"><a href="#Name_object-subobject-sequence">object-subobject-sequence</a></span> <a href="#Variable658_O"><i class="var">O</i></a>))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_object-single-inheritance-feature-map">object-single-inheritance-feature-map</span></span>(<span id="Variable708_O"><i class="var">O</i></span>:<span class="name"><a href="#Name_objects">objects</a></span>) : =><span class="name"><a href="../../../Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
   ~> <span class="name"><a href="../Maps/index.html#Name_map-override">map-override</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_left-to-right-map">left-to-right-map</a></span>(
        <span class="name"><a href="#Name_object-feature-map">object-feature-map</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>,
        <span class="name"><a href="../Trees/index.html#Name_single-branching-sequence">single-branching-sequence</a></span> <span class="name"><a href="#Name_object-tree">object-tree</a></span> <a href="#Variable708_O"><i class="var">O</i></a>)</code></pre></div>


  For multiple inheritance, different resolution orders can be specified
  by using difference linearisations of the object tree.



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
[Objects.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Objects/Objects.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Objects
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Objects
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Objects/Objects.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Objects/Objects.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
