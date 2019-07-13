---
layout: default
title: IMPPP-4
nav_exclude: true
---

[Unstable-Languages-beta] : [IMPPP-4.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMPPP">"IMPPP"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Statements and blocks

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmt">Stmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmt">stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'int'</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span> <b class="atom">';'</b>
               |  <span class="syn-name"><a href="../IMPPP-2/index.html#SyntaxName_aexp">aexp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../IMPPP-3/index.html#SyntaxName_bexp">bexp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../IMPPP-3/index.html#SyntaxName_bexp">bexp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'print'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../IMPPP-2/index.html#SyntaxName_aexps">aexps</a></span> <b class="atom">')'</b> <b class="atom">';'</b>
               |  <b class="atom">'halt'</b> <b class="atom">';'</b>
               |  <b class="atom">'join'</b> <span class="syn-name"><a href="../IMPPP-2/index.html#SyntaxName_aexp">aexp</a></span> <b class="atom">';'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Block">Block</span></i> :</i> <span class="syn-name"><span id="SyntaxName_block">block</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">*</sup> <b class="atom">'}'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_execute">execute</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">*</sup> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'int'</b> <span id="Variable156_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> <b class="atom">';'</b> <span id="Variable164_Stmt*"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">*</sup></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable156_IL"><i class="var">IL</i></a> ]]), 
          <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable164_Stmt*"><i class="var">Stmt<sup class="sup">*</sup></i></a> ]])
<i class="keyword">Otherwise</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <span id="Variable224_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <span id="Variable230_Stmt+"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">+</sup></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable224_Stmt"><i class="var">Stmt</i></a> ]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable230_Stmt+"><i class="var">Stmt<sup class="sup">+</sup></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <span id="Variable281_AExp"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a></i></span> <b class="atom">';'</b> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../IMPPP-2/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable281_AExp"><i class="var">AExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable324_BExp"><i class="var"><a href="../IMPPP-3/index.html#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> <span id="Variable332_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable340_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<i class="sem-name"><a href="../IMPPP-3/index.html#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable324_BExp"><i class="var">BExp</i></a> ]], 
                 <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable332_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]],
                 <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable340_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable414_BExp"><i class="var"><a href="../IMPPP-3/index.html#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> <span id="Variable421_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>(<i class="sem-name"><a href="../IMPPP-3/index.html#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable414_BExp"><i class="var">BExp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable421_Block"><i class="var">Block</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'print'</b> <b class="atom">'('</b> <span id="Variable478_AExp"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<i class="sem-name"><a href="../IMPPP-2/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable478_AExp"><i class="var">AExp</i></a> ]])
<i class="keyword">Rule</i>
  [[ <b class="atom">'print'</b> <b class="atom">'('</b> <span id="Variable525_AExp"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a></i></span> <b class="atom">','</b> <span id="Variable532_AExps"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExps">AExps</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">+</sup> =
  [[ <b class="atom">'print'</b> <b class="atom">'('</b> <a href="#Variable525_AExp"><i class="var">AExp</i></a> <b class="atom">')'</b> <b class="atom">';'</b> <b class="atom">'print'</b> <b class="atom">'('</b> <a href="#Variable532_AExps"><i class="var">AExps</i></a> <b class="atom">')'</b> <b class="atom">';'</b> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'halt'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_thread-terminate">thread-terminate</a></span>(<span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_current-thread">current-thread</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'join'</b> <span id="Variable625_AExp"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span>(<span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>(<i class="sem-name"><a href="../IMPPP-2/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable625_AExp"><i class="var">AExp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <b class="atom">'{'</b> <span id="Variable675_Stmt*"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_execute">execute</a></i>[[ <a href="#Variable675_Stmt*"><i class="var">Stmt<sup class="sup">*</sup></i></a> ]]</code></pre></div>
## Variable declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IL">IL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ids">ids</span></span> ::= <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare-int-vars">declare-int-vars</span></i>[[ _: <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable772_I"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_I">I</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable772_I"><i class="var">I</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, 0))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <span id="Variable821_I"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_I">I</a></i></span> <b class="atom">','</b> <span id="Variable828_IL"><i class="var"><a href="#VariableStem_IL">IL</a></i></span> ]] = 
    <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable821_I"><i class="var">I</i></a> ]], <i class="sem-name"><a href="#SemanticsName_declare-int-vars">declare-int-vars</a></i>[[ <a href="#Variable828_IL"><i class="var">IL</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[IMPPP-4.cbs]: IMPPP-4.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-4/IMPPP-4.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"