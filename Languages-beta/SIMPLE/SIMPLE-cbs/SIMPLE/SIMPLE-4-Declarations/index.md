---
layout: default
title: "SIMPLE-4-Declarations"
parent: SIMPLE
grand_parent: Languages-beta
nav_order: SIMPLE-4-Declarations
---

[Languages-beta] : [SIMPLE-4-Declarations.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE">"SIMPLE"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Decl">Decl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decl">decl</span></span> ::= <span class="syn-name"><a href="#SyntaxName_vars-decl">vars-decl</a></span> | <span class="syn-name"><a href="#SyntaxName_func-decl">func-decl</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare">declare</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decl">decl</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span></code></pre></div>
## 4.1 Variable Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_VarsDecl">VarsDecl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_vars-decl">vars-decl</span></span> ::= <b class="atom">'var'</b> <span class="syn-name"><a href="#SyntaxName_declarators">declarators</a></span> <b class="atom">';'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Declarators">Declarators</span></i> :</i> <span class="syn-name"><span id="SyntaxName_declarators">declarators</span></span> ::= <span class="syn-name"><a href="#SyntaxName_declarator">declarator</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_declarators">declarators</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'var'</b> <span id="Variable92_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">','</b>       <span id="Variable99_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> <span id="Variable107_Stmts?"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Stmts">Stmts</a><sup class="sup">?</sup></i></span> ]] : <span class="syn-name"><a href="../SIMPLE-3-Statements/index.html#SyntaxName_stmts">stmts</a></span> =
  [[ <b class="atom">'var'</b> <a href="#Variable92_Declarator"><i class="var">Declarator</i></a> <b class="atom">';'</b> <b class="atom">'var'</b> <a href="#Variable99_Declarators"><i class="var">Declarators</i></a> <b class="atom">';'</b> <a href="#Variable107_Stmts?"><i class="var">Stmts<sup class="sup">?</sup></i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'var'</b> <span id="Variable161_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">','</b>       <span id="Variable168_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> <span id="Variable176_Decls?"><i class="var"><a href="../SIMPLE-5-Programs/index.html#VariableStem_Decls">Decls</a><sup class="sup">?</sup></i></span> ]] : <span class="syn-name"><a href="../SIMPLE-5-Programs/index.html#SyntaxName_decls">decls</a></span> =
  [[ <b class="atom">'var'</b> <a href="#Variable161_Declarator"><i class="var">Declarator</i></a> <b class="atom">';'</b> <b class="atom">'var'</b> <a href="#Variable168_Declarators"><i class="var">Declarators</i></a> <b class="atom">';'</b> <a href="#Variable176_Decls?"><i class="var">Decls<sup class="sup">?</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <b class="atom">'var'</b> <span id="Variable231_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">';'</b> ]] = <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <a href="#Variable231_Declarator"><i class="var">Declarator</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Declarator">Declarator</span></i> :</i> <span class="syn-name"><span id="SyntaxName_declarator">declarator</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span>
                           |  <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span>
                           |  <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_var-declare">var-declare</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_declarator">declarator</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable307_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable307_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable353_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable360_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable353_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable360_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable421_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <span id="Variable426_Ranks"><i class="var"><a href="#VariableStem_Ranks">Ranks</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable421_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <a href="#Variable426_Ranks"><i class="var">Ranks</i></a> ]]))</code></pre></div>



## 4.2 Arrays

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Ranks">Ranks</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ranks">ranks</span></span> ::= <b class="atom">'['</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exps">exps</a></span> <b class="atom">']'</b> <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span><sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'['</b> <span id="Variable527_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable534_Exps"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> <span id="Variable542_Ranks?"><i class="var"><a href="#VariableStem_Ranks">Ranks</a><sup class="sup">?</sup></i></span>     ]] : <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span> =
  [[ <b class="atom">'['</b> <a href="#Variable527_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable534_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> <a href="#Variable542_Ranks?"><i class="var">Ranks<sup class="sup">?</sup></i></a> ]]</code></pre></div>


 Compare this with p28 of the K version. 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_ranks">ranks</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <b class="atom">'['</b> <span id="Variable623_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] = <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable623_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <b class="atom">'['</b> <span id="Variable658_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> <span id="Variable665_Ranks"><i class="var"><a href="#VariableStem_Ranks">Ranks</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable658_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <a href="#Variable665_Ranks"><i class="var">Ranks</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_allocate-nested-vectors">allocate-nested-vectors</span></span>(_:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span><sup class="sup">+</sup>) : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<span id="Variable732_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>),1,<a href="#Variable732_N"><i class="var">N</i></a>)))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<span id="Variable799_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>,<span id="Variable808_N+"><i class="var">N<sup class="sup">+</sup></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span><sup class="sup">+</sup>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<a href="#Variable808_N+"><i class="var">N<sup class="sup">+</sup></i></a>),1,<a href="#Variable799_N"><i class="var">N</i></a>)))</code></pre></div>



## 4.3 Function Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FuncDecl">FuncDecl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_func-decl">func-decl</span></span> ::= <b class="atom">'function'</b> <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span><sup class="sup">?</sup> <b class="atom">')'</b> <span class="syn-name"><a href="../SIMPLE-3-Statements/index.html#SyntaxName_block">block</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <b class="atom">'function'</b> <span id="Variable933_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable941_Ids?"><i class="var"><a href="#VariableStem_Ids">Ids</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <span id="Variable948_Block"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable933_Id"><i class="var">Id</i></a> ]], 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>),<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_initialise">initialise</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decl">decl</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialise">initialise</a></i>[[ <b class="atom">'var'</b> <span id="Variable1033_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialise">initialise</a></i>[[ <b class="atom">'function'</b> <span id="Variable1058_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1066_Ids?"><i class="var"><a href="#VariableStem_Ids">Ids</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <span id="Variable1073_Block"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1058_Id"><i class="var">Id</i></a> ]]),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1066_Ids?"><i class="var">Ids<sup class="sup">?</sup></i></a> ]])),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_handle-return">handle-return</a></span>(<i class="sem-name"><a href="../SIMPLE-3-Statements/index.html#SemanticsName_exec">exec</a></i>[[ <a href="#Variable1073_Block"><i class="var">Block</i></a> ]]))))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Ids">Ids</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ids">ids</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_patts">patts</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_ids">ids</a></span><sup class="sup">?</sup> ]] : <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <span id="Variable1243_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1243_Id"><i class="var">Id</i></a> ]], 
                      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <span id="Variable1301_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">','</b> <span id="Variable1308_Ids"><i class="var"><a href="#VariableStem_Ids">Ids</a></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1301_Id"><i class="var">Id</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1308_Ids"><i class="var">Ids</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-4-Declarations.cbs]: SIMPLE-4-Declarations.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]:  "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
