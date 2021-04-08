---
title: "IMP-1"
parent: IMP
ancestor: Languages-beta

---

[Languages-beta] : [IMP-1.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Arithmetic expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_AExp">AExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_aexp">aexp</span></span> ::= <span class="syn-name"><a href="#SyntaxName_num">num</a></span>
               |  <span class="syn-name"><a href="#SyntaxName_id">id</a></span> 
               |  <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> 
               |  <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span>
               |  <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">')'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>       
  <i class="sem-name"><span id="SemanticsName_eval-arith">eval-arith</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable71_N"><i class="var"><a href="#VariableStem_N">N</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <a href="#Variable71_N"><i class="var">N</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable100_I"><i class="var"><a href="#VariableStem_I">I</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <a href="#Variable100_I"><i class="var">I</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable144_AExp1"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable152_AExp2"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable144_AExp1"><i class="var">AExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable152_AExp2"><i class="var">AExp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable206_AExp1"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable214_AExp2"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable206_AExp1"><i class="var">AExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable214_AExp2"><i class="var">AExp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <b class="atom">'('</b> <span id="Variable271_AExp"><i class="var"><a href="#VariableStem_AExp">AExp</a></i></span> <b class="atom">')'</b> ]] = <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable271_AExp"><i class="var">AExp</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_N">N</span></i> :</i> <span class="syn-name"><span id="SyntaxName_num">num</span></span> ::= <b class="atom">'-'</b><sup class="sup">?</sup>_<span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_D">D</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decimal">decimal</span></span> ::= (<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">+</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_int-val">int-val</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_num">num</a></span> ]] : <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <span id="Variable361_D"><i class="var"><a href="#VariableStem_D">D</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(\"<a href="#Variable361_D"><i class="var">D</i></a>\")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <b class="atom">'-'</b> <span id="Variable393_D"><i class="var"><a href="#VariableStem_D">D</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <a href="#Variable393_D"><i class="var">D</i></a> ]])</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_I">I</span></i> :</i> <span class="syn-name"><span id="SyntaxName_id">id</span></span> ::= (<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'a'</b>-<b class="atom">'z'</b>)<sup class="sup">+</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_id">id</a></span> ]] : <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <span id="Variable468_I"><i class="var"><a href="#VariableStem_I">I</a></i></span> ]] = \"<a href="#Variable468_I"><i class="var">I</i></a>\"</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_keyword">keyword</span></span> ::= <b class="atom">'else'</b> | <b class="atom">'false'</b> | <b class="atom">'if'</b> | <b class="atom">'true'</b> | <b class="atom">'while'</b></code></pre></div>



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
[IMP-1.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/IMP-1.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-1
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-1
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/IMP-1.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-1/IMP-1.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
