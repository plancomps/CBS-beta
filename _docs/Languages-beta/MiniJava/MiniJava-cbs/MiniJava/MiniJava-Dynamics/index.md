---
title: "MiniJava-Dynamics"
parent: MiniJava
ancestor: Languages-beta

---

[Languages-beta] : [MiniJava-Dynamics.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_MiniJava">"MiniJava"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Programs

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_P">P</span></i>:</i>  
  <span class="syn-name"><span id="SyntaxName_program">program</span></span> ::= <span class="syn-name"><a href="#SyntaxName_main-class">main-class</a></span> <span class="syn-name"><a href="#SyntaxName_class-declaration">class-declaration</a></span><sup class="sup">*</sup>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_MC">MC</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_main-class">main-class</span></span> ::=
    <b class="atom">'class'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'{'</b> 
      <b class="atom">'public'</b> <b class="atom">'static'</b> <b class="atom">'void'</b> <b class="atom">'main'</b> <b class="atom">'('</b> <b class="atom">'String'</b> <b class="atom">'['</b> <b class="atom">']'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">')'</b> <b class="atom">'{'</b>
        <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span>
      <b class="atom">'}'</b> 
    <b class="atom">'}'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_run">run</span></i>[[ <span id="Variable100_P"><i class="var"><a href="#VariableStem_P">P</a></i></span>:<span class="syn-name"><a href="#SyntaxName_program">program</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_run">run</a></i>[[<b class="atom">'class'</b> <span id="Variable117_ID1"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">1</sub></i></span> <b class="atom">'{'</b> 
         <b class="atom">'public'</b> <b class="atom">'static'</b> <b class="atom">'void'</b> <b class="atom">'main'</b> <b class="atom">'('</b> <b class="atom">'String'</b> <b class="atom">'['</b> <b class="atom">']'</b> <span id="Variable141_ID2"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">2</sub></i></span> <b class="atom">')'</b> <b class="atom">'{'</b>
           <span id="Variable150_S"><i class="var"><a href="#VariableStem_S">S</a></i></span>
         <b class="atom">'}'</b> 
       <b class="atom">'}'</b> 
       <span id="Variable160_CD*"><i class="var"><a href="#VariableStem_CD">CD</a><sup class="sup">*</sup></i></span>]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_recursive">recursive</a></span> ( <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<a href="#Variable160_CD*"><i class="var">CD<sup class="sup">*</sup></i></a>]], <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<a href="#Variable160_CD*"><i class="var">CD<sup class="sup">*</sup></i></a>]] ),
      <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable150_S"><i class="var">S</i></a>]] )</code></pre></div>


  <code><i class="var">ID<sub class="sub">1</sub></i></code> and <code><i class="var">ID<sub class="sub">2</sub></i></code> are not referenced in <code><i class="var">S</i></code> or <code><i class="var">CD<sup class="sup">*</sup></i></code>
    


# <span id="SectionNumber_2">2</span> Declarations

## Classes

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CD">CD</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_class-declaration">class-declaration</span></span> ::=
    <b class="atom">'class'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> ( <b class="atom">'extends'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> )<sup class="sup">?</sup> <b class="atom">'{'</b> 
      <span class="syn-name"><a href="#SyntaxName_var-declaration">var-declaration</a></span><sup class="sup">*</sup>
      <span class="syn-name"><a href="#SyntaxName_method-declaration">method-declaration</a></span><sup class="sup">*</sup>
    <b class="atom">'}'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_bound-names">bound-names</span></i>[[<span id="Variable376_CD*"><i class="var"><a href="#VariableStem_CD">CD</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_class-declaration">class-declaration</a></span><sup class="sup">*</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_sets">sets</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<b class="atom">'class'</b> <span id="Variable402_ID1"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">1</sub></i></span> <b class="atom">'{'</b> <span id="Variable410_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span> <span id="Variable416_MD*"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b>]] = { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable402_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]] }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<b class="atom">'class'</b> <span id="Variable461_ID1"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">1</sub></i></span> <b class="atom">'extends'</b> <span id="Variable469_ID2"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">2</sub></i></span> <b class="atom">'{'</b> <span id="Variable477_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span> <span id="Variable483_MD*"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b>]] = { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable461_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]] }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[ ]] = { }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<span id="Variable542_CD"><i class="var"><a href="#VariableStem_CD">CD</a></i></span> <span id="Variable548_CD+"><i class="var"><a href="#VariableStem_CD">CD</a><sup class="sup">+</sup></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-unite">set-unite</a></span> ( <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<a href="#Variable542_CD"><i class="var">CD</i></a>]], <i class="sem-name"><a href="#SemanticsName_bound-names">bound-names</a></i>[[<a href="#Variable548_CD+"><i class="var">CD<sup class="sup">+</sup></i></a>]] )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-classes">declare-classes</span></i>[[<span id="Variable600_CD*"><i class="var"><a href="#VariableStem_CD">CD</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_class-declaration">class-declaration</a></span><sup class="sup">*</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<b class="atom">'class'</b> <span id="Variable619_ID1"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">1</sub></i></span> <b class="atom">'{'</b> <span id="Variable627_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span> <span id="Variable633_MD*"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b>]] =
    { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable619_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]] |->
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Classes/index.html#Name_class">class</a></span> (
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>           // class instantiator
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_reference">reference</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object">object</a></span> (
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>,                 // object identifier
            <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable619_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]],                  // object class name
            <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<a href="#Variable627_VD*"><i class="var">VD<sup class="sup">*</sup></i></a>]] ), // object field variable map
        <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<a href="#Variable633_MD*"><i class="var">MD<sup class="sup">*</sup></i></a>]]  // class feature map
      ) }      
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<b class="atom">'class'</b> <span id="Variable742_ID1"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">1</sub></i></span> <b class="atom">'extends'</b> <span id="Variable750_ID2"><i class="var"><a href="#VariableStem_ID">ID</a><sub class="sub">2</sub></i></span> <b class="atom">'{'</b> <span id="Variable758_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span> <span id="Variable764_MD*"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b>]] =
    { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable742_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]] |->
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Classes/index.html#Name_class">class</a></span> (
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>           // class instantiator
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_reference">reference</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object">object</a></span> (
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>,                // object identifier
            <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable742_ID1"><i class="var">ID<sub class="sub">1</sub></i></a>]],                 // object class name
            <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<a href="#Variable758_VD*"><i class="var">VD<sup class="sup">*</sup></i></a>]],  // object field variable map
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_dereference">dereference</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_force">force</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Classes/index.html#Name_class-instantiator">class-instantiator</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable750_ID2"><i class="var">ID<sub class="sub">2</sub></i></a>]]
            ),                         // superclass subobject
        <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<a href="#Variable764_MD*"><i class="var">MD<sup class="sup">*</sup></i></a>]], // class feature map
        <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable750_ID2"><i class="var">ID<sub class="sub">2</sub></i></a>]]               // superclass name
      ) }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span> ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<span id="Variable925_CD"><i class="var"><a href="#VariableStem_CD">CD</a></i></span> <span id="Variable931_CD+"><i class="var"><a href="#VariableStem_CD">CD</a><sup class="sup">+</sup></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span> ( <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<a href="#Variable925_CD"><i class="var">CD</i></a>]], <i class="sem-name"><a href="#SemanticsName_declare-classes">declare-classes</a></i>[[<a href="#Variable931_CD+"><i class="var">CD<sup class="sup">+</sup></i></a>]] )</code></pre></div>


## Variables

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_VD">VD</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_var-declaration">var-declaration</span></span> ::= <span class="syn-name"><a href="#SyntaxName_type">type</a></span> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">';'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-variables">declare-variables</span></i>[[<span id="Variable1027_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_var-declaration">var-declaration</a></span><sup class="sup">*</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<span id="Variable1043_T"><i class="var"><a href="#VariableStem_T">T</a></i></span> <span id="Variable1048_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">';'</b>]] =
    { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable1048_ID"><i class="var">ID</i></a>]] |-> 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> ( <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<a href="#Variable1043_T"><i class="var">T</i></a>]], <i class="sem-name"><a href="#SemanticsName_initial-value">initial-value</a></i>[[<a href="#Variable1043_T"><i class="var">T</i></a>]] ) }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span> ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<span id="Variable1135_VD"><i class="var"><a href="#VariableStem_VD">VD</a></i></span> <span id="Variable1141_VD+"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">+</sup></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span> ( <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<a href="#Variable1135_VD"><i class="var">VD</i></a>]], <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<a href="#Variable1141_VD+"><i class="var">VD<sup class="sup">+</sup></i></a>]] )</code></pre></div>


## Types

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_T">T</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_type">type</span></span> ::= <b class="atom">'int'</b> <b class="atom">'['</b> <b class="atom">']'</b>
         | <b class="atom">'boolean'</b>
         | <b class="atom">'int'</b>
         | <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_type">type</span></i>[[<span id="Variable1239_T"><i class="var"><a href="#VariableStem_T">T</a></i></span>:<span class="syn-name"><a href="#SyntaxName_type">type</a></span>]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_types">types</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<b class="atom">'int'</b> <b class="atom">'['</b> <b class="atom">']'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<b class="atom">'boolean'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<b class="atom">'int'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<span id="Variable1314_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_pointers">pointers</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_initial-value">initial-value</span></i>[[<span id="Variable1340_T"><i class="var"><a href="#VariableStem_T">T</a></i></span>:<span class="syn-name"><a href="#SyntaxName_type">type</a></span>]] : => <span class="name"><a href="#Name_minijava-values">minijava-values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initial-value">initial-value</a></i>[[<b class="atom">'int'</b> <b class="atom">'['</b> <b class="atom">']'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initial-value">initial-value</a></i>[[<b class="atom">'boolean'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initial-value">initial-value</a></i>[[<b class="atom">'int'</b>]] = 0
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initial-value">initial-value</a></i>[[<span id="Variable1412_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_pointer-null">pointer-null</a></span></code></pre></div>


## Methods

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_MD">MD</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_method-declaration">method-declaration</span></span> ::=
    <b class="atom">'public'</b> <span class="syn-name"><a href="#SyntaxName_type">type</a></span> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_formal-list">formal-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b> <b class="atom">'{'</b> 
      <span class="syn-name"><a href="#SyntaxName_var-declaration">var-declaration</a></span><sup class="sup">*</sup> 
      <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span><sup class="sup">*</sup> 
      <b class="atom">'return'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">';'</b> 
    <b class="atom">'}'</b></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_methods">methods</span></span> 
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_references">references</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>), <span class="name"><a href="#Name_minijava-values">minijava-values</a></span><sup class="sup">*</sup>), <span class="name"><a href="#Name_minijava-values">minijava-values</a></span>)</code></pre></div>
  
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-methods">declare-methods</span></i>[[<span id="Variable1551_MD*"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_method-declaration">method-declaration</a></span><sup class="sup">*</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<b class="atom">'public'</b> <span id="Variable1569_T"><i class="var"><a href="#VariableStem_T">T</a></i></span> <span id="Variable1574_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">'('</b> <span id="Variable1582_FL?"><i class="var"><a href="#VariableStem_FL">FL</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <b class="atom">'{'</b> <span id="Variable1592_VD*"><i class="var"><a href="#VariableStem_VD">VD</a><sup class="sup">*</sup></i></span> <span id="Variable1598_S*"><i class="var"><a href="#VariableStem_S">S</a><sup class="sup">*</sup></i></span> <b class="atom">'return'</b> <span id="Variable1605_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">';'</b> <b class="atom">'}'</b>]] =
    { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable1574_ID"><i class="var">ID</i></a>]] |->
      <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span> (
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span> ( // variables not allowed to shadow visible fields
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span> (
              <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>
                { "this" |->
                  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_pointers">pointers</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span> ) },
              <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[<a href="#Variable1582_FL?"><i class="var">FL<sup class="sup">?</sup></i></a>]] ) ),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-single-inheritance-feature-map">object-single-inheritance-feature-map</a></span> 
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_dereference">dereference</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_first">first</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, 
          <i class="sem-name"><a href="#SemanticsName_declare-variables">declare-variables</a></i>[[<a href="#Variable1592_VD*"><i class="var">VD<sup class="sup">*</sup></i></a>]] ),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span> ( <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable1598_S*"><i class="var">S<sup class="sup">*</sup></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable1605_E"><i class="var">E</i></a>]] ) ) }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span> ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<span id="Variable1812_MD"><i class="var"><a href="#VariableStem_MD">MD</a></i></span> <span id="Variable1818_MD+"><i class="var"><a href="#VariableStem_MD">MD</a><sup class="sup">+</sup></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span> ( <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<a href="#Variable1812_MD"><i class="var">MD</i></a>]], <i class="sem-name"><a href="#SemanticsName_declare-methods">declare-methods</a></i>[[<a href="#Variable1818_MD+"><i class="var">MD<sup class="sup">+</sup></i></a>]] )</code></pre></div>


## Formals

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FL">FL</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_formal-list">formal-list</span></span> ::=
    <span class="syn-name"><a href="#SyntaxName_type">type</a></span> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> ( <b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_formal-list">formal-list</a></span> )<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_bind-formals">bind-formals</span></i>[[<span id="Variable1916_FL?"><i class="var"><a href="#VariableStem_FL">FL</a><sup class="sup">?</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_formal-list">formal-list</a></span><sup class="sup">?</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[<span id="Variable1934_T"><i class="var"><a href="#VariableStem_T">T</a></i></span> <span id="Variable1939_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>
      { <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable1939_ID"><i class="var">ID</i></a>]] |->
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> ( <i class="sem-name"><a href="#SemanticsName_type">type</a></i>[[<a href="#Variable1934_T"><i class="var">T</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span> ) }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[<span id="Variable2000_T"><i class="var"><a href="#VariableStem_T">T</a></i></span> <span id="Variable2005_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">','</b> <span id="Variable2012_FL"><i class="var"><a href="#VariableStem_FL">FL</a></i></span>]] = <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[<a href="#Variable2000_T"><i class="var">T</i></a> <a href="#Variable2005_ID"><i class="var">ID</i></a>]], <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[<a href="#Variable2012_FL"><i class="var">FL</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_bind-formals">bind-formals</a></i>[[ ]] = ( )</code></pre></div>



# <span id="SectionNumber_3">3</span> Statements

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_S">S</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_statement">statement</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span><sup class="sup">*</sup> <b class="atom">'}'</b>
              | <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span>
              | <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_statement">statement</a></span>
              | <b class="atom">'System'</b><b class="atom">'.'</b><b class="atom">'out'</b><b class="atom">'.'</b><b class="atom">'println'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <b class="atom">';'</b>
              | <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">';'</b>
              | <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">']'</b> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">';'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_execute">execute</span></i>[[<span id="Variable2223_S*"><i class="var"><a href="#VariableStem_S">S</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_statement">statement</a></span><sup class="sup">*</sup>]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<b class="atom">'{'</b> <span id="Variable2242_S*"><i class="var"><a href="#VariableStem_S">S</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b>]] = <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2242_S*"><i class="var">S<sup class="sup">*</sup></i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable2280_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">')'</b> <span id="Variable2288_S1"><i class="var"><a href="#VariableStem_S">S</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable2296_S2"><i class="var"><a href="#VariableStem_S">S</a><sub class="sub">2</sub></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2280_E"><i class="var">E</i></a>]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2288_S1"><i class="var">S<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2296_S2"><i class="var">S<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable2370_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">')'</b> <span id="Variable2377_S"><i class="var"><a href="#VariableStem_S">S</a></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2370_E"><i class="var">E</i></a>]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2377_S"><i class="var">S</i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<b class="atom">'System'</b><b class="atom">'.'</b><b class="atom">'out'</b><b class="atom">'.'</b><b class="atom">'println'</b> <b class="atom">'('</b> <span id="Variable2442_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span> <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2442_E"><i class="var">E</i></a>]], "\n" )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<span id="Variable2495_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">'='</b> <span id="Variable2502_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">';'</b>]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable2495_ID"><i class="var">ID</i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2502_E"><i class="var">E</i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<span id="Variable2558_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">'['</b> <span id="Variable2566_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">']'</b> <b class="atom">'='</b> <span id="Variable2576_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> <b class="atom">';'</b>]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span> ( 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2566_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], 1 ), 
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable2558_ID"><i class="var">ID</i></a>]] ), 
      <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable2576_E2"><i class="var">E<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<span id="Variable2686_S"><i class="var"><a href="#VariableStem_S">S</a></i></span> <span id="Variable2692_S+"><i class="var"><a href="#VariableStem_S">S</a><sup class="sup">+</sup></i></span>]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span> ( <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2686_S"><i class="var">S</i></a>]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[<a href="#Variable2692_S+"><i class="var">S<sup class="sup">+</sup></i></a>]] )</code></pre></div>



# <span id="SectionNumber_4">4</span> Expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_E">E</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_expression">expression</span></span> ::= <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">']'</b>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'.'</b> <b class="atom">'length'</b>
               | <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expression-list">expression-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b>
               | <span class="syn-name"><a href="#SyntaxName_integer-literal">integer-literal</a></span>
               | <b class="atom">'true'</b>
               | <b class="atom">'false'</b>
               | <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span>
               | <b class="atom">'this'</b>
               | <b class="atom">'new'</b> <b class="atom">'int'</b> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">']'</b>
               | <b class="atom">'new'</b> <span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <b class="atom">')'</b>
               | <b class="atom">'!'</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>
               | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> <b class="atom">')'</b></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_minijava-values">minijava-values</span></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>) | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_pointers">pointers</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate">evaluate</span></i>[[<span id="Variable2953_E"><i class="var"><a href="#VariableStem_E">E</a></i></span>:<span class="syn-name"><a href="#SyntaxName_expression">expression</a></span>]] : => <span class="name"><a href="#Name_minijava-values">minijava-values</a></span></code></pre></div>

  <code><i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[_]]</code> is a well-typed funcon term only when <code>_</code> is a well-typed
  MiniJava expression.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3005_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable3013_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span>]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3005_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3013_E2"><i class="var">E<sub class="sub">2</sub></i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span> )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3070_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable3078_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-is-less">integer-is-less</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3070_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3078_E2"><i class="var">E<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3132_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable3140_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3132_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3140_E2"><i class="var">E<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3194_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable3202_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3194_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3202_E2"><i class="var">E<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3256_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable3264_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3256_E1"><i class="var">E<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3264_E2"><i class="var">E<sub class="sub">2</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3318_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'['</b> <span id="Variable3326_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> <b class="atom">']'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3326_E2"><i class="var">E<sub class="sub">2</sub></i></a>]], 1 ), 
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span> <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3318_E1"><i class="var">E<sub class="sub">1</sub></i></a>]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3398_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">'.'</b> <b class="atom">'length'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span> <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3398_E"><i class="var">E</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3437_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">'.'</b> <span id="Variable3444_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">'('</b> <span id="Variable3452_EL?"><i class="var"><a href="#VariableStem_EL">EL</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span> ( <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3437_E"><i class="var">E</i></a>]],
      <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span> (
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span> (
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Classes/index.html#Name_class-name-single-inheritance-feature-map">class-name-single-inheritance-feature-map</a></span> 
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-class-name">object-class-name</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/References/index.html#Name_dereference">dereference</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
          <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable3444_ID"><i class="var">ID</i></a>]] ),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <i class="sem-name"><a href="#SemanticsName_evaluate-actuals">evaluate-actuals</a></i>[[<a href="#Variable3452_EL?"><i class="var">EL<sup class="sup">?</sup></i></a>]] ) ) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3557_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span>]] = <i class="sem-name"><a href="#SemanticsName_integer-value">integer-value</a></i>[[<a href="#Variable3557_IL"><i class="var">IL</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'true'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'false'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<span id="Variable3618_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span>]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable3618_ID"><i class="var">ID</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'this'</b>]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> "this"
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'new'</b> <b class="atom">'int'</b> <b class="atom">'['</b> <span id="Variable3677_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">']'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span> ( 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-repeat">interleave-repeat</a></span>( 
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span> ( <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, 0 ), 1, <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3677_E"><i class="var">E</i></a>]] ) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'new'</b> <span id="Variable3744_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span> <b class="atom">'('</b> <b class="atom">')'</b>]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_force">force</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Classes/index.html#Name_class-instantiator">class-instantiator</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[<a href="#Variable3744_ID"><i class="var">ID</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'!'</b> <span id="Variable3788_E"><i class="var"><a href="#VariableStem_E">E</a></i></span>]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3788_E"><i class="var">E</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<b class="atom">'('</b> <span id="Variable3822_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">')'</b>]] = <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3822_E"><i class="var">E</i></a>]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_EL">EL</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_expression-list">expression-list</span></span> ::=
    <span class="syn-name"><a href="#SyntaxName_expression">expression</a></span> ( <b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_expression-list">expression-list</a></span> )<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate-actuals">evaluate-actuals</span></i>[[<span id="Variable3884_EL?"><i class="var"><a href="#VariableStem_EL">EL</a><sup class="sup">?</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_expression-list">expression-list</a></span><sup class="sup">?</sup>]] : (=> <span class="name"><a href="#Name_minijava-values">minijava-values</a></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-actuals">evaluate-actuals</a></i>[[<span id="Variable3907_E"><i class="var"><a href="#VariableStem_E">E</a></i></span>]] = <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3907_E"><i class="var">E</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-actuals">evaluate-actuals</a></i>[[<span id="Variable3936_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">','</b> <span id="Variable3943_EL"><i class="var"><a href="#VariableStem_EL">EL</a></i></span>]] = <i class="sem-name"><a href="#SemanticsName_evaluate">evaluate</a></i>[[<a href="#Variable3936_E"><i class="var">E</i></a>]], <i class="sem-name"><a href="#SemanticsName_evaluate-actuals">evaluate-actuals</a></i>[[<a href="#Variable3943_EL"><i class="var">EL</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-actuals">evaluate-actuals</a></i>[[ ]] = ( )</code></pre></div>



# <span id="SectionNumber_5">5</span> Lexemes

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ID">ID</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_identifier">identifier</span></span> ::= <span class="syn-name"><a href="#SyntaxName_letter">letter</a></span> ( <span class="syn-name"><a href="#SyntaxName_letter">letter</a></span> | <span class="syn-name"><a href="#SyntaxName_digit">digit</a></span> | <b class="atom">'_'</b> )<sup class="sup">*</sup></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[<span id="Variable4068_ID"><i class="var"><a href="#VariableStem_ID">ID</a></i></span>:<span class="syn-name"><a href="#SyntaxName_identifier">identifier</a></span>]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
    = \"<a href="#Variable4068_ID"><i class="var">ID</i></a>\"</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IL">IL</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_integer-literal">integer-literal</span></span> ::= <span class="syn-name"><a href="#SyntaxName_digit">digit</a></span><sup class="sup">+</sup>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_letter">letter</span></span> ::= <b class="atom">'a'</b>-<b class="atom">'z'</b> | <b class="atom">'A'</b>-<b class="atom">'Z'</b>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_digit">digit</span></span> ::= <b class="atom">'0'</b>-<b class="atom">'9'</b></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_integer-value">integer-value</span></i>[[<span id="Variable4133_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span>:<span class="syn-name"><a href="#SyntaxName_integer-literal">integer-literal</a></span>]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
    = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span> \"<a href="#Variable4133_IL"><i class="var">IL</i></a>\"</code></pre></div>



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
[MiniJava-Dynamics.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
