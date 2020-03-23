---
layout: default
title: "SIMPLE-3-Statements"
parent: SIMPLE
grand_parent: Languages-beta
nav_order: SIMPLE-3-Statements
---

[Languages-beta] : [SIMPLE-3-Statements.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE">"SIMPLE"</span></code></pre></div>
# <span id="SectionNumber_3">3</span> Statements

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Block">Block</span></i> :</i> <span class="syn-name"><span id="SyntaxName_block">block</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span><sup class="sup">?</sup> <b class="atom">'}'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmts">Stmts</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmts">stmts</span></span> ::= <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span><sup class="sup">?</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmt">Stmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmt">stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_imp-stmt">imp-stmt</a></span> | <span class="syn-name"><a href="../SIMPLE-4-Declarations/index.html#SyntaxName_vars-decl">vars-decl</a></span>
    
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ImpStmt">ImpStmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_imp-stmt">imp-stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> (<b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>)<sup class="sup">?</sup>
               |  <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'for'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'print'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exps">exps</a></span> <b class="atom">')'</b> <b class="atom">';'</b>
               |  <b class="atom">'return'</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span><sup class="sup">?</sup> <b class="atom">';'</b>
               |  <b class="atom">'try'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> <b class="atom">'catch'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'throw'</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable206_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable213_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <a href="#Variable206_Exp"><i class="var">Exp</i></a> <b class="atom">')'</b> <a href="#Variable213_Block"><i class="var">Block</i></a> <b class="atom">'else'</b> <b class="atom">'{'</b> <b class="atom">'}'</b> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'for'</b> <b class="atom">'('</b> <span id="Variable267_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <span id="Variable273_Exp1"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable281_Exp2"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> <b class="atom">')'</b> 
       <b class="atom">'{'</b> <span id="Variable290_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'{'</b> <a href="#Variable267_Stmt"><i class="var">Stmt</i></a> 
         <b class="atom">'while'</b> <b class="atom">'('</b> <a href="#Variable273_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> <b class="atom">')'</b> 
            <b class="atom">'{'</b> <b class="atom">'{'</b> <a href="#Variable290_Stmts"><i class="var">Stmts</i></a> <b class="atom">'}'</b> <a href="#Variable281_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> <b class="atom">';'</b> <b class="atom">'}'</b>
     <b class="atom">'}'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_exec">exec</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <b class="atom">'}'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <span id="Variable408_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable408_Stmts"><i class="var">Stmts</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable441_ImpStmt"><i class="var"><a href="#VariableStem_ImpStmt">ImpStmt</a></i></span> <span id="Variable446_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable441_ImpStmt"><i class="var">ImpStmt</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable446_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable496_VarsDecl"><i class="var"><a href="../SIMPLE-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> <span id="Variable501_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<i class="sem-name"><a href="../SIMPLE-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable496_VarsDecl"><i class="var">VarsDecl</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable501_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable551_VarsDecl"><i class="var"><a href="../SIMPLE-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable551_VarsDecl"><i class="var">VarsDecl</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable587_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable587_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable630_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable638_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable646_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable630_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable638_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable646_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable720_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable727_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while">while</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable720_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable727_Block"><i class="var">Block</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'print'</b> <b class="atom">'('</b> <span id="Variable784_Exps"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exps">Exps</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable784_Exps"><i class="var">Exps</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <span id="Variable830_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable830_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'try'</b> <span id="Variable899_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'catch'</b> <b class="atom">'('</b> <span id="Variable908_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">')'</b> <span id="Variable916_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>(
      <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable899_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable908_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
        <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable916_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'throw'</b> <span id="Variable1015_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1015_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>




____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-3-Statements.cbs]: SIMPLE-3-Statements.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-3-Statements/SIMPLE-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
