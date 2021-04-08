---
title: "SL-3-Statements"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-3-Statements.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SL">"SL"</span></code></pre></div>
# <span id="SectionNumber_3">3</span> Statements

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmt">Stmt</span></i>  :</i> <span class="syn-name"><span id="SyntaxName_stmt">stmt</span></span>  ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">';'</b>
                  | <b class="atom">'return'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">';'</b>
                  | <b class="atom">'return'</b> <b class="atom">';'</b>
                  | <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
                  | <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>  
                  | <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
                  | <b class="atom">'break'</b> <b class="atom">';'</b>
                  | <b class="atom">'continue'</b> <b class="atom">';'</b>
                  | <span class="syn-name"><a href="#SyntaxName_block">block</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Block">Block</span></i> :</i> <span class="syn-name"><span id="SyntaxName_block">block</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">*</sup> <b class="atom">'}'</b></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable138_Expr"><i class="var"><a href="../SL-2-Expressions/index.html#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> <span id="Variable145_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> = 
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <a href="#Variable138_Expr"><i class="var">Expr</i></a> <b class="atom">')'</b> <a href="#Variable145_Block"><i class="var">Block</i></a> <b class="atom">'else'</b> <b class="atom">'{'</b> <b class="atom">'}'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_exec">exec</span></i>[[ <span id="Variable197_Stmt*"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span><sup class="sup">*</sup> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable213_Expr"><i class="var"><a href="../SL-2-Expressions/index.html#VariableStem_Expr">Expr</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SL-2-Expressions/index.html#SemanticsName_eval">eval</a></i>[[<a href="#Variable213_Expr"><i class="var">Expr</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <span id="Variable254_Expr"><i class="var"><a href="../SL-2-Expressions/index.html#VariableStem_Expr">Expr</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<i class="sem-name"><a href="../SL-2-Expressions/index.html#SemanticsName_eval">eval</a></i>[[<a href="#Variable254_Expr"><i class="var">Expr</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable324_Expr"><i class="var"><a href="../SL-2-Expressions/index.html#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> <span id="Variable332_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable340_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="../SL-2-Expressions/index.html#SemanticsName_eval">eval</a></i>[[<a href="#Variable324_Expr"><i class="var">Expr</i></a>]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable332_Block1"><i class="var">Block<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable340_Block2"><i class="var">Block<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable416_Expr"><i class="var"><a href="../SL-2-Expressions/index.html#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> <span id="Variable423_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Breaking/index.html#Name_handle-break">handle-break</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="../SL-2-Expressions/index.html#SemanticsName_eval">eval</a></i>[[<a href="#Variable416_Expr"><i class="var">Expr</i></a>]], 
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Continuing/index.html#Name_handle-continue">handle-continue</a></span>(<i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable423_Block"><i class="var">Block</i></a>]])))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'break'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Breaking/index.html#Name_break">break</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'continue'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Continuing/index.html#Name_continue">continue</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <span id="Variable533_Stmt*"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable533_Stmt*"><i class="var">Stmt<sup class="sup">*</sup></i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[  ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable580_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <span id="Variable586_Stmt+"><i class="var"><a href="#VariableStem_Stmt">Stmt</a><sup class="sup">+</sup></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable580_Stmt"><i class="var">Stmt</i></a>]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[<a href="#Variable586_Stmt+"><i class="var">Stmt<sup class="sup">+</sup></i></a>]])</code></pre></div>

  

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
[SL-3-Statements.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-3-Statements/SL-3-Statements.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-3-Statements
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-3-Statements
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-3-Statements/SL-3-Statements.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-3-Statements/SL-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
