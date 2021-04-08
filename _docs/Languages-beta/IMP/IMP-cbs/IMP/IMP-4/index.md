---
title: "IMP-4"
parent: IMP
ancestor: Languages-beta

---

[Languages-beta] : [IMP-4.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Programs and variable declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Pgm">Pgm</span></i> :</i> <span class="syn-name"><span id="SyntaxName_pgm">pgm</span></span> ::= <b class="atom">'int'</b> <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../IMP-3/index.html#SyntaxName_stmt">stmt</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_run">run</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_pgm">pgm</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_run">run</a></i>[[ <b class="atom">'int'</b> <span id="Variable52_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> <b class="atom">';'</b> <span id="Variable59_Stmt"><i class="var"><a href="../IMP-3/index.html#VariableStem_Stmt">Stmt</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable52_IL"><i class="var">IL</i></a> ]]), 
           <i class="sem-name"><a href="../IMP-3/index.html#SemanticsName_execute">execute</a></i>[[ <a href="#Variable59_Stmt"><i class="var">Stmt</i></a> ]] )</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IL">IL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_idlist">idlist</span></span> ::= <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-int-vars">declare-int-vars</span></i>[[ _: <span class="syn-name"><a href="#SyntaxName_idlist">idlist</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable166_I"><i class="var"><a href="../IMP-1/index.html#VariableStem_I">I</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../IMP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable166_I"><i class="var">I</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, 0))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable215_I"><i class="var"><a href="../IMP-1/index.html#VariableStem_I">I</a></i></span> <b class="atom">','</b> <span id="Variable222_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> ]] = 
    <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable215_I"><i class="var">I</i></a> ]], <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable222_IL"><i class="var">IL</i></a> ]]</code></pre></div>


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
[IMP-4.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-4/IMP-4.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-4
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-4
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-4/IMP-4.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-4/IMP-4.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
