---
title: "SIMPLE-4-Declarations"
parent: SIMPLE
ancestor: Languages-beta

---

[Languages-beta] : [SIMPLE-4-Declarations.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE">"SIMPLE"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Decl">Decl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decl">decl</span></span> ::= <span class="syn-name"><a href="#SyntaxName_vars-decl">vars-decl</a></span> | <span class="syn-name"><a href="#SyntaxName_func-decl">func-decl</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare">declare</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decl">decl</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span></code></pre></div>
# <span id="SectionNumber_4.1">4.1</span> Variable Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_VarsDecl">VarsDecl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_vars-decl">vars-decl</span></span> ::= <b class="atom">'var'</b> <span class="syn-name"><a href="#SyntaxName_declarators">declarators</a></span> <b class="atom">';'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Declarators">Declarators</span></i> :</i> <span class="syn-name"><span id="SyntaxName_declarators">declarators</span></span> ::= <span class="syn-name"><a href="#SyntaxName_declarator">declarator</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_declarators">declarators</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'var'</b> <span id="Variable102_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">','</b>       <span id="Variable109_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> <span id="Variable117_Stmts?"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Stmts">Stmts</a><sup class="sup">?</sup></i></span> ]] : <span class="syn-name"><a href="../SIMPLE-3-Statements/index.html#SyntaxName_stmts">stmts</a></span> =
  [[ <b class="atom">'var'</b> <a href="#Variable102_Declarator"><i class="var">Declarator</i></a> <b class="atom">';'</b> <b class="atom">'var'</b> <a href="#Variable109_Declarators"><i class="var">Declarators</i></a> <b class="atom">';'</b> <a href="#Variable117_Stmts?"><i class="var">Stmts<sup class="sup">?</sup></i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'var'</b> <span id="Variable171_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">','</b>       <span id="Variable178_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> <span id="Variable186_Decls?"><i class="var"><a href="../SIMPLE-5-Programs/index.html#VariableStem_Decls">Decls</a><sup class="sup">?</sup></i></span> ]] : <span class="syn-name"><a href="../SIMPLE-5-Programs/index.html#SyntaxName_decls">decls</a></span> =
  [[ <b class="atom">'var'</b> <a href="#Variable171_Declarator"><i class="var">Declarator</i></a> <b class="atom">';'</b> <b class="atom">'var'</b> <a href="#Variable178_Declarators"><i class="var">Declarators</i></a> <b class="atom">';'</b> <a href="#Variable186_Decls?"><i class="var">Decls<sup class="sup">?</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <b class="atom">'var'</b> <span id="Variable241_Declarator"><i class="var"><a href="#VariableStem_Declarator">Declarator</a></i></span> <b class="atom">';'</b> ]] = <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <a href="#Variable241_Declarator"><i class="var">Declarator</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Declarator">Declarator</span></i> :</i> <span class="syn-name"><span id="SyntaxName_declarator">declarator</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span>
                           |  <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exp">exp</a></span>
                           |  <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_var-declare">var-declare</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_declarator">declarator</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable320_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable320_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable366_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable373_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable366_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable373_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_var-declare">var-declare</a></i>[[ <span id="Variable434_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <span id="Variable439_Ranks"><i class="var"><a href="#VariableStem_Ranks">Ranks</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable434_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <a href="#Variable439_Ranks"><i class="var">Ranks</i></a> ]]))</code></pre></div>



# <span id="SectionNumber_4.2">4.2</span> Arrays

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Ranks">Ranks</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ranks">ranks</span></span> ::= <b class="atom">'['</b> <span class="syn-name"><a href="../SIMPLE-2-Expressions/index.html#SyntaxName_exps">exps</a></span> <b class="atom">']'</b> <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span><sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'['</b> <span id="Variable544_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable551_Exps"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> <span id="Variable559_Ranks?"><i class="var"><a href="#VariableStem_Ranks">Ranks</a><sup class="sup">?</sup></i></span>     ]] : <span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span> =
  [[ <b class="atom">'['</b> <a href="#Variable544_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable551_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> <a href="#Variable559_Ranks?"><i class="var">Ranks<sup class="sup">?</sup></i></a> ]]</code></pre></div>


 Compare this with p28 of the K version. 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_ranks">ranks</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_ranks">ranks</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <b class="atom">'['</b> <span id="Variable640_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] = <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable640_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <b class="atom">'['</b> <span id="Variable675_Exp"><i class="var"><a href="../SIMPLE-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> <span id="Variable682_Ranks"><i class="var"><a href="#VariableStem_Ranks">Ranks</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable675_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_ranks">ranks</a></i>[[ <a href="#Variable682_Ranks"><i class="var">Ranks</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_allocate-nested-vectors">allocate-nested-vectors</span></span>(_:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span><sup class="sup">+</sup>) : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<span id="Variable749_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>),1,<a href="#Variable749_N"><i class="var">N</i></a>)))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<span id="Variable816_N"><i class="var">N</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span>,<span id="Variable825_N+"><i class="var">N<sup class="sup">+</sup></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nats">nats</a></span><sup class="sup">+</sup>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span class="name"><a href="#Name_allocate-nested-vectors">allocate-nested-vectors</a></span>(<a href="#Variable825_N+"><i class="var">N<sup class="sup">+</sup></i></a>),1,<a href="#Variable816_N"><i class="var">N</i></a>)))</code></pre></div>



# <span id="SectionNumber_4.3">4.3</span> Function Declarations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FuncDecl">FuncDecl</span></i> :</i> <span class="syn-name"><span id="SyntaxName_func-decl">func-decl</span></span> ::= <b class="atom">'function'</b> <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span><sup class="sup">?</sup> <b class="atom">')'</b> <span class="syn-name"><a href="../SIMPLE-3-Statements/index.html#SyntaxName_block">block</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <b class="atom">'function'</b> <span id="Variable954_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable962_Ids?"><i class="var"><a href="#VariableStem_Ids">Ids</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <span id="Variable969_Block"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable954_Id"><i class="var">Id</i></a> ]], 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-variable">allocate-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>),<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_initialise">initialise</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_decl">decl</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialise">initialise</a></i>[[ <b class="atom">'var'</b> <span id="Variable1054_Declarators"><i class="var"><a href="#VariableStem_Declarators">Declarators</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_initialise">initialise</a></i>[[ <b class="atom">'function'</b> <span id="Variable1079_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1087_Ids?"><i class="var"><a href="#VariableStem_Ids">Ids</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <span id="Variable1094_Block"><i class="var"><a href="../SIMPLE-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1079_Id"><i class="var">Id</i></a> ]]),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1087_Ids?"><i class="var">Ids<sup class="sup">?</sup></i></a> ]])),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_handle-return">handle-return</a></span>(<i class="sem-name"><a href="../SIMPLE-3-Statements/index.html#SemanticsName_exec">exec</a></i>[[ <a href="#Variable1094_Block"><i class="var">Block</i></a> ]]))))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Ids">Ids</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ids">ids</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_ids">ids</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_patts">patts</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_ids">ids</a></span><sup class="sup">?</sup> ]] : <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <span id="Variable1267_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1267_Id"><i class="var">Id</i></a> ]], 
                      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <span id="Variable1325_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">','</b> <span id="Variable1332_Ids"><i class="var"><a href="#VariableStem_Ids">Ids</a></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1325_Id"><i class="var">Id</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_patts">patts</a></i>[[ <a href="#Variable1332_Ids"><i class="var">Ids</i></a> ]]</code></pre></div>


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
[SIMPLE-4-Declarations.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
