---
title: "IMPPP-3"
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-3.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMPPP">"IMPPP"</span></code></pre></div>
# <span id="SectionNumber_3">3</span> Boolean expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_BExp">BExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_bexp">bexp</span></span> ::= <b class="atom">'false'</b>
               |  <b class="atom">'true'</b>
               |  <span class="syn-name"><a href="../IMPPP-2/index.html#SyntaxName_aexp">aexp</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="../IMPPP-2/index.html#SyntaxName_aexp">aexp</a></span>
               |  <b class="atom">'!'</b> <span class="syn-name"><a href="#SyntaxName_bexp">bexp</a></span>
               |  <span class="syn-name"><a href="#SyntaxName_bexp">bexp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="#SyntaxName_bexp">bexp</a></span>
               |  <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_bexp">bexp</a></span> <b class="atom">')'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval-bool">eval-bool</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_bexp">bexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <b class="atom">'false'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span> 
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <b class="atom">'true'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span> 
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <span id="Variable110_AExp1"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable118_AExp2"><i class="var"><a href="../IMPPP-2/index.html#VariableStem_AExp">AExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<i class="sem-name"><a href="../IMPPP-2/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable110_AExp1"><i class="var">AExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="../IMPPP-2/index.html#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable118_AExp2"><i class="var">AExp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <b class="atom">'!'</b> <span id="Variable175_BExp"><i class="var"><a href="#VariableStem_BExp">BExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable175_BExp"><i class="var">BExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <span id="Variable213_BExp1"><i class="var"><a href="#VariableStem_BExp">BExp</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable221_BExp2"><i class="var"><a href="#VariableStem_BExp">BExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable213_BExp1"><i class="var">BExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable221_BExp2"><i class="var">BExp<sub class="sub">2</sub></i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <b class="atom">'('</b> <span id="Variable279_BExp"><i class="var"><a href="#VariableStem_BExp">BExp</a></i></span> <b class="atom">')'</b> ]] = <i class="sem-name"><a href="#SemanticsName_eval-bool">eval-bool</a></i>[[ <a href="#Variable279_BExp"><i class="var">BExp</i></a> ]]</code></pre></div>


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
[IMPPP-3.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3/IMPPP-3.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3/IMPPP-3.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-3/IMPPP-3.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
