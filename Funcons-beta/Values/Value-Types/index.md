---
layout: default
title: "Value-Types"
parent: Values
ancestor: Funcons-beta

---

[Funcons-beta] : [Value-Types.cbs]
-----------------------------

## Value Types

<div class="highlighter-rouge"><pre class="highlight"><code>[ 
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_values">values</a></span>           <i class="keyword">Alias</i> <span class="name"><a href="#Name_vals">vals</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_value-types">value-types</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_types">types</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_empty-type">empty-type</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-in-type">is-in-type</a></span>       <i class="keyword">Alias</i> <span class="name"><a href="#Name_is">is</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-value">is-value</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-val">is-val</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_when-true">when-true</a></span>        <i class="keyword">Alias</i> <span class="name"><a href="#Name_when">when</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_cast-to-type">cast-to-type</a></span>     <i class="keyword">Alias</i> <span class="name"><a href="#Name_cast">cast</a></span>
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_ground-values">ground-values</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="#Name_ground-vals">ground-vals</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_is-equal">is-equal</a></span>         <i class="keyword">Alias</i> <span class="name"><a href="#Name_is-eq">is-eq</a></span>
]</code></pre></div>



### Values


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_values">values</span></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_vals">vals</span></span> = <span class="name"><a href="#Name_values">values</a></span></code></pre></div>

 
  The type <code><span class="name"><a href="#Name_values">values</a></span></code> includes all values provided by CBS.
  
  Some funcons are declared as value constructors. Values are constructed by
  applying value constructor funcons to the required arguments.
  
  Values are immutable and context-independent. Their structure can be
  inspected using patterns formed from value constructors and variables.
  Computations can be extracted from values and executed, but the structure
  of computations cannot be inspected.
  
  Some types of values and their funcons are declared as built-in, and not
  further specified in CBS. New types of built-in values can be added to CBS
  by its developers.
 
  New algebraic datatypes may be declared by users of CBS. Their values are
  disjoint from built-in values.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="PartVariable_T2"><i class="var">T<sub class="sub">2</sub></i></span> <: <span class="name"><a href="#Name_values">values</a></span></code></pre></div>



### Types


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_value-types">value-types</span></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_types">types</span></span> = <span class="name"><a href="#Name_value-types">value-types</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_empty-type">empty-type</span></span></code></pre></div>
 
  A type <code><i class="var">T</i></code> is a value that represents a set of values. 

  The values of type <code><span class="name"><a href="#Name_types">types</a></span></code> are all the types, including <code><span class="name"><a href="#Name_types">types</a></span></code> itself.

  The formula <code><i class="var">V</i> : <i class="var">T</i></code> holds when <code><i class="var">V</i></code> is a value of type <code><i class="var">T</i></code>, i.e., <code><i class="var">V</i></code> is in
  the set represented by the type <code><i class="var">T</i></code>.

  The formula <code><i class="var">T<sub class="sub">1</sub></i> <: <i class="var">T<sub class="sub">2</sub></i></code> holds when <code><i class="var">T<sub class="sub">1</sub></i></code> is a subtype of <code><i class="var">T<sub class="sub">2</sub></i></code>, i.e., the set
  represented by <code><i class="var">T<sub class="sub">1</sub></i></code> is a subset of the set represented by <code><i class="var">T<sub class="sub">2</sub></i></code>.

  The set of types forms a Boolean algebra with the following operations and
  constants:
    * <code><i class="var">T<sub class="sub">1</sub></i> & <i class="var">T<sub class="sub">2</sub></i></code>    (meet/intersection)
    * <code><i class="var">T<sub class="sub">1</sub></i> | <i class="var">T<sub class="sub">2</sub></i></code>    (join/union)
    * <code>~ <i class="var">T</i></code>        (complement)
    * <code><span class="name"><a href="#Name_values">values</a></span></code>     (top)
    * <code><span class="name"><a href="#Name_empty-type">empty-type</a></span></code> (bottom)
  
  Subtyping: <code><i class="var">T<sub class="sub">1</sub></i> <: <i class="var">T<sub class="sub">2</sub></i></code> is the partial order defined by the algebra. 

  Subsumption: If <code><i class="var">V</i> : <i class="var">T<sub class="sub">1</sub></i></code> and <code><i class="var">T<sub class="sub">1</sub></i> <: <i class="var">T<sub class="sub">2</sub></i></code> both hold, so does <code><i class="var">V</i> : <i class="var">T<sub class="sub">2</sub></i></code>.

  Indivisibility: For each value <code><i class="var">V</i></code> and type <code><i class="var">T</i></code>, either <code><i class="var">V</i> : <i class="var">T</i></code> or
  <code><i class="var">V</i> : ~<i class="var">T</i></code> holds.

  Universality: <code><i class="var">V</i> : <span class="name"><a href="#Name_values">values</a></span></code> holds for all values <code><i class="var">V</i></code>.

  Emptiness: <code><i class="var">V</i> : <span class="name"><a href="#Name_empty-type">empty-type</a></span></code> holds for no value <code><i class="var">V</i></code>.

  'Type N' declares the name 'N' to refer to a fresh value constructor
  and includes it as an element of <code><span class="name"><a href="#Name_types">types</a></span></code>. 
  
  'Type N ~> T' moreover specifies 'Rule N ~> T', so that 'N' can be used as
  an abbreviation for the type term 'T'.
  
  'Type N <: T' declares the name 'N' to refer to a fresh value constructor
  in <code><span class="name"><a href="#Name_types">types</a></span></code>, and asserts 'N <: T'. 
  
  Parametrised type declarations introduce generic (possibly dependent) types, 
  i.e., families of individual types, indexed by types (and by other values). 
  For example, <code><span class="name"><a href="../Composite/Lists/index.html#Name_lists">lists</a></span>(<i class="var">T</i>)</code> is parameterised by the type of list elements <code><i class="var">T</i></code>.
  Replacing a parameter by <code>_</code> denotes the union over all instances of that
  parameter, e.g., <code><span class="name"><a href="../Composite/Lists/index.html#Name_lists">lists</a></span>(_)</code> is the union of all types <code><span class="name"><a href="../Composite/Lists/index.html#Name_lists">lists</a></span>(<i class="var">T</i>)</code> with <code><i class="var">T</i>:<span class="name"><a href="#Name_types">types</a></span></code>.
  
  Qualified variables <code><i class="var">V</i>:<i class="var">T</i></code> in terms range over values of type <code><i class="var">T</i></code>.
  Qualified variables <code><i class="var">T<sub class="sub">1</sub></i><:<i class="var">T<sub class="sub">2</sub></i></code> in terms range over subtypes <code><i class="var">T<sub class="sub">1</sub></i></code> of <code><i class="var">T<sub class="sub">2</sub></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i> 
  <span class="name"><span id="Name_is-in-type">is-in-type</span></span>(<span id="Variable850_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable859_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) : =><span class="name"><a href="../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is">is</span></span> = <span class="name"><a href="#Name_is-in-type">is-in-type</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_is-in-type">is-in-type</a></span>(<i class="var">V</i>, <i class="var">T</i>)</code> tests whether <code><i class="var">V</i> : <i class="var">T</i></code> holds. The value <code><i class="var">V</i></code> need not be a
  ground value, but <code><i class="var">T</i></code> should not require testing any computation types.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <a href="#Variable977_V"><i class="var">V</i></a> : <a href="#Variable985_T"><i class="var">T</i></a>
  -------------------------------------
  <span class="name"><a href="#Name_is-in-type">is-in-type</a></span>(<span id="Variable977_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable985_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <a href="#Variable1024_V"><i class="var">V</i></a> : ~ <a href="#Variable1032_T"><i class="var">T</i></a>
  --------------------------------------
  <span class="name"><a href="#Name_is-in-type">is-in-type</a></span>(<span id="Variable1024_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable1032_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>

		

### Option types


  For any value type <code><i class="var">T</i></code>, the elements of the option type <code>(<i class="var">T</i>)<sup class="sup">?</sup></code> are the
  elements of <code><i class="var">T</i></code> together with the empty sequence <code>( )</code>, which represents
  the absence of a value. Option types are a special case of sequence types.
  
  A funcon whose result type is an option type <code>(<i class="var">T</i>)<sup class="sup">?</sup></code> may compute a value of
  type <code><i class="var">T</i></code> or the empty sequence <code>( )</code>; the latter represents undefined results
  of partial operations.

  The parentheses in <code>(<i class="var">T</i>)<sup class="sup">?</sup></code> and <code>( )</code> can be omitted when this does not give
  rise to grouoing ambiguity. Note however that <code><i class="var">T<sup class="sup">?</sup></i></code> is a meta-variable ranging
  over option types, whereas <code>(<i class="var">T</i>)<sup class="sup">?</sup></code> is the option type for the value type <code><i class="var">T</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-value">is-value</span></span>(_:<span class="name"><a href="#Name_values">values</a></span><sup class="sup">?</sup>) : =><span class="name"><a href="../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-val">is-val</span></span> = <span class="name"><a href="#Name_is-value">is-value</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_is-value">is-value</a></span>(<i class="var">V<sup class="sup">?</sup></i>)</code> tests whether the optional value <code><i class="var">V<sup class="sup">?</sup></i></code> is a value or absent.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-value">is-value</a></span>(_:<span class="name"><a href="#Name_values">values</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-value">is-value</a></span>( ) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_when-true">when-true</span></span>(_:<span class="name"><a href="../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:<span id="Variable1365_T"><i class="var">T</i></span>) : =>(<span id="Variable1380_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_when">when</span></span> = <span class="name"><a href="#Name_when-true">when-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_when-true">when-true</a></span>(<i class="var">B</i>, <i class="var">V</i>)</code> gives <code><i class="var">V</i></code> when <code><i class="var">B</i></code> is <code><span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span></code>, and <code>( )</code> when <code><i class="var">B</i></code> is <code><span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_when-true">when-true</a></span>(<span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span>, <span id="Variable1504_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>) ~> <a href="#Variable1504_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_when-true">when-true</a></span>(<span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span>, <span id="Variable1530_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>) ~> ( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_cast-to-type">cast-to-type</span></span>(<span id="Variable1553_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable1562_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) : =>(<span id="Variable1578_T"><i class="var">T</i></span>)<sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_cast">cast</span></span> = <span class="name"><a href="#Name_cast-to-type">cast-to-type</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_cast-to-type">cast-to-type</a></span>(<i class="var">V</i>, <i class="var">T</i>)</code> gives <code><i class="var">V</i></code> if it is in <code><i class="var">T</i></code>, otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <a href="#Variable1684_V"><i class="var">V</i></a> : <a href="#Variable1692_T"><i class="var">T</i></a>
  -------------------------------------
  <span class="name"><a href="#Name_cast-to-type">cast-to-type</a></span>(<span id="Variable1684_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable1692_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) ~> <a href="#Variable1684_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <a href="#Variable1734_V"><i class="var">V</i></a> : ~ <a href="#Variable1742_T"><i class="var">T</i></a>
  --------------------------------------
  <span class="name"><a href="#Name_cast-to-type">cast-to-type</a></span>(<span id="Variable1734_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable1742_T"><i class="var">T</i></span>:<span class="name"><a href="#Name_types">types</a></span>) ~> ( )</code></pre></div>



### Ground values


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_ground-values">ground-values</span></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_ground-vals">ground-vals</span></span> = <span class="name"><a href="#Name_ground-values">ground-values</a></span></code></pre></div>


  The elements of <code><span class="name"><a href="#Name_ground-values">ground-values</a></span></code> are all values that are formed entirely
  from value-constructors, and thus do not involve computations. 
  
  A type is a subtype of <code><span class="name"><a href="#Name_ground-values">ground-values</a></span></code> if and only if all its elements are
  included in <code><span class="name"><a href="#Name_ground-values">ground-values</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_is-equal">is-equal</span></span>(<span id="Variable1836_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable1845_W"><i class="var">W</i></span>:<span class="name"><a href="#Name_values">values</a></span>) : =><span class="name"><a href="../Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_is-eq">is-eq</span></span> = <span class="name"><a href="#Name_is-equal">is-equal</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_is-equal">is-equal</a></span>(<i class="var">V</i>, <i class="var">W</i>)</code> returns <code><span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span></code> when <code><i class="var">V</i></code> and <code><i class="var">W</i></code> are identical ground values,
  otherwise <code><span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span></code>.
 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <a href="#Variable1963_V"><i class="var">V</i></a> == <a href="#Variable1971_W"><i class="var">W</i></a>
  --------------------------------------------------
  <span class="name"><a href="#Name_is-equal">is-equal</a></span>(<span id="Variable1963_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_ground-values">ground-values</a></span>, <span id="Variable1971_W"><i class="var">W</i></span>:<span class="name"><a href="#Name_ground-values">ground-values</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <a href="#Variable2007_V"><i class="var">V</i></a> =/= <a href="#Variable2015_W"><i class="var">W</i></a>
  ---------------------------------------------------
  <span class="name"><a href="#Name_is-equal">is-equal</a></span>(<span id="Variable2007_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_ground-values">ground-values</a></span>, <span id="Variable2015_W"><i class="var">W</i></span>:<span class="name"><a href="#Name_ground-values">ground-values</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-equal">is-equal</a></span>(<span id="Variable2036_V"><i class="var">V</i></span>:~<span class="name"><a href="#Name_ground-values">ground-values</a></span>, <span id="Variable2045_W"><i class="var">W</i></span>:<span class="name"><a href="#Name_values">values</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_is-equal">is-equal</a></span>(<span id="Variable2066_V"><i class="var">V</i></span>:<span class="name"><a href="#Name_values">values</a></span>, <span id="Variable2074_W"><i class="var">W</i></span>:~<span class="name"><a href="#Name_ground-values">ground-values</a></span>) ~> <span class="name"><a href="../Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Value-Types.cbs]: Value-Types.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Value-Types/Value-Types.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
