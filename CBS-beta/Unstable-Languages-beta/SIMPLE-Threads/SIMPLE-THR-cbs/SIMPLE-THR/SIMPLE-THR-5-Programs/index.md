---
layout: default
title: "SIMPLE-THR-5-Programs"
parent: SIMPLE-THR
grand_parent: Unstable-Languages-beta
nav_order: SIMPLE-THR-5-Programs
---

[Unstable-Languages-beta] : [SIMPLE-THR-5-Programs.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE-THR">"SIMPLE-THR"</span></code></pre></div>
# <span id="SectionNumber_5">5</span> Programs

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Pgm">Pgm</span></i> :</i> <span class="syn-name"><span id="SyntaxName_pgm">pgm</span></span> ::= <span class="syn-name"><a href="#SyntaxName_decls">decls</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_run">run</span></i>[[ <span id="Variable25_Decls"><i class="var"><a href="#VariableStem_Decls">Decls</a></i></span>:<span class="syn-name"><a href="#SyntaxName_pgm">pgm</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
    = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<i class="sem-name"><a href="#SemanticsName_declarations">declarations</a></i>[[ <a href="#Variable25_Decls"><i class="var">Decls</i></a> ]]),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
          <i class="sem-name"><a href="#SemanticsName_initialisations">initialisations</a></i>[[ <a href="#Variable25_Decls"><i class="var">Decls</i></a> ]],
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>("main")), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ))))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Decls">Decls</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decls">decls</span></span> ::= <span class="syn-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SyntaxName_decl">decl</a></span> <span class="syn-name"><a href="#SyntaxName_decls">decls</a></span><sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declarations">declarations</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decls">decls</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declarations">declarations</a></i>[[ <span id="Variable157_Decl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_Decl">Decl</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable157_Decl"><i class="var">Decl</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declarations">declarations</a></i>[[ <span id="Variable186_Decl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_Decl">Decl</a></i></span> <span id="Variable191_Decls"><i class="var"><a href="#VariableStem_Decls">Decls</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable186_Decl"><i class="var">Decl</i></a> ]], <i class="sem-name"><a href="#SemanticsName_declarations">declarations</a></i>[[ <a href="#Variable191_Decls"><i class="var">Decls</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_initialisations">initialisations</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decls">decls</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialisations">initialisations</a></i>[[ <span id="Variable254_Decl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_Decl">Decl</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_initialise">initialise</a></i>[[ <a href="#Variable254_Decl"><i class="var">Decl</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialisations">initialisations</a></i>[[ <span id="Variable283_Decl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_Decl">Decl</a></i></span> <span id="Variable288_Decls"><i class="var"><a href="#VariableStem_Decls">Decls</a></i></span> ]] =
    <i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_initialise">initialise</a></i>[[ <a href="#Variable283_Decl"><i class="var">Decl</i></a> ]], <i class="sem-name"><a href="#SemanticsName_initialisations">initialisations</a></i>[[ <a href="#Variable288_Decls"><i class="var">Decls</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-THR-5-Programs.cbs]: SIMPLE-THR-5-Programs.cbs 
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
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-5-Programs/SIMPLE-THR-5-Programs.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
