---
layout: default
title: "IMP-4"
parent: IMP
grand_parent: Languages-beta
nav_order: IMP-4
---

[Languages-beta] : [IMP-4.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Programs and variable declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Pgm">Pgm</span></i> :</i> <span class="syn-name"><span id="SyntaxName_pgm">pgm</span></span> ::= <b class="atom">'int'</b> <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../IMP-3/index.html#SyntaxName_stmt">stmt</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_run">run</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_pgm">pgm</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_run">run</a></i>[[ <b class="atom">'int'</b> <span id="Variable49_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> <b class="atom">';'</b> <span id="Variable56_Stmt"><i class="var"><a href="../IMP-3/index.html#VariableStem_Stmt">Stmt</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable49_IL"><i class="var">IL</i></a> ]]), 
           <i class="sem-name"><a href="../IMP-3/index.html#SemanticsName_execute">execute</a></i>[[ <a href="#Variable56_Stmt"><i class="var">Stmt</i></a> ]] )</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IL">IL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_idlist">idlist</span></span> ::= <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-int-vars">declare-int-vars</span></i>[[ _: <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable160_I"><i class="var"><a href="../IMP-1/index.html#VariableStem_I">I</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../IMP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable160_I"><i class="var">I</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, 0))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable209_I"><i class="var"><a href="../IMP-1/index.html#VariableStem_I">I</a></i></span> <b class="atom">','</b> <span id="Variable216_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> ]] = 
    <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable209_I"><i class="var">I</i></a> ]], <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable216_IL"><i class="var">IL</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[IMP-4.cbs]: IMP-4.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]:  "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-4/IMP-4.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
