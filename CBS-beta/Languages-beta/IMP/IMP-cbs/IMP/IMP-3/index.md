---
layout: default
title: IMP-3
nav_exclude: true
---

[Languages-beta] : [IMP-3.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
# <span id="SectionNumber_3">3</span> Statements and blocks


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmt">Stmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmt">stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_aexp">aexp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../IMP-2/index.html#SyntaxName_bexp">bexp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> (<b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>)<sup class="sup">?</sup>
               |  <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../IMP-2/index.html#SyntaxName_bexp">bexp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span>
<i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Block">Block</span></i> :</i> <span class="syn-name"><span id="SyntaxName_block">block</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">?</sup> <b class="atom">'}'</b></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable109_BExp"><i class="var"><a href="../IMP-2/index.html#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> <span id="Variable116_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> = 
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <a href="#Variable109_BExp"><i class="var">BExp</i></a> <b class="atom">')'</b> <a href="#Variable116_Block"><i class="var">Block</i></a> <b class="atom">'else'</b> <b class="atom">'{'</b> <b class="atom">'}'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_execute">execute</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <span id="Variable180_I"><i class="var"><a href="../IMP-1/index.html#VariableStem_I">I</a></i></span> <b class="atom">'='</b> <span id="Variable187_AExp"><i class="var"><a href="../IMP-1/index.html#VariableStem_AExp">AExp</a></i></span> <b class="atom">';'</b> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../IMP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable180_I"><i class="var">I</i></a> ]]), <i class="sem-name"><a href="../IMP-1/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable187_AExp"><i class="var">AExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable252_BExp"><i class="var"><a href="../IMP-2/index.html#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> <span id="Variable260_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable268_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<i class="sem-name"><a href="../IMP-2/index.html#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable252_BExp"><i class="var">BExp</i></a> ]], 
                 <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable260_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]],
                 <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable268_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable342_BExp"><i class="var"><a href="../IMP-2/index.html#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> <span id="Variable349_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>(<i class="sem-name"><a href="../IMP-2/index.html#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable342_BExp"><i class="var">BExp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable349_Block"><i class="var">Block</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <span id="Variable403_Stmt1"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sub class="sub">1</sub></i></span> <span id="Variable409_Stmt2"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable403_Stmt1"><i class="var">Stmt<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable409_Stmt2"><i class="var">Stmt<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'{'</b> <b class="atom">'}'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'{'</b> <span id="Variable482_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable482_Stmt"><i class="var">Stmt</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[IMP-3.cbs]: IMP-3.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-3/IMP-3.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
