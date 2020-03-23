---
layout: default
title: "SIMPLE-THR-3-Statements"
parent: SIMPLE-THR
grand_parent: Unstable-Languages-beta
nav_order: SIMPLE-THR-3-Statements
---

[Unstable-Languages-beta] : [SIMPLE-THR-3-Statements.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE-THR">"SIMPLE-THR"</span></code></pre></div>
# <span id="SectionNumber_3">3</span> Statements

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Block">Block</span></i> :</i> <span class="syn-name"><span id="SyntaxName_block">block</span></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span><sup class="sup">?</sup> <b class="atom">'}'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmts">Stmts</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmts">stmts</span></span> ::= <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span><sup class="sup">?</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Stmt">Stmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_stmt">stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_imp-stmt">imp-stmt</a></span> | <span class="syn-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SyntaxName_vars-decl">vars-decl</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ImpStmt">ImpStmt</span></i> :</i> <span class="syn-name"><span id="SyntaxName_imp-stmt">imp-stmt</span></span> ::= <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> (<b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>)<sup class="sup">?</sup>
               |  <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'for'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'print'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exps">exps</a></span> <b class="atom">')'</b> <b class="atom">';'</b>
               |  <b class="atom">'return'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span><sup class="sup">?</sup> <b class="atom">';'</b>
               |  <b class="atom">'try'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span> <b class="atom">'catch'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SyntaxName_id">id</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="#SyntaxName_block">block</a></span>
               |  <b class="atom">'throw'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'join'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'acquire'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'release'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b>
               |  <b class="atom">'rendezvous'</b> <span class="syn-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable242_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable249_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <a href="#Variable242_Exp"><i class="var">Exp</i></a> <b class="atom">')'</b> <a href="#Variable249_Block"><i class="var">Block</i></a> <b class="atom">'else'</b> <b class="atom">'{'</b> <b class="atom">'}'</b> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'for'</b> <b class="atom">'('</b> <span id="Variable303_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <span id="Variable309_Exp1"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable317_Exp2"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> <b class="atom">')'</b>
       <b class="atom">'{'</b> <span id="Variable326_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'{'</b> <a href="#Variable303_Stmt"><i class="var">Stmt</i></a>
         <b class="atom">'while'</b> <b class="atom">'('</b> <a href="#Variable309_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> <b class="atom">')'</b>
            <b class="atom">'{'</b> <b class="atom">'{'</b> <a href="#Variable326_Stmts"><i class="var">Stmts</i></a> <b class="atom">'}'</b> <a href="#Variable317_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> <b class="atom">';'</b> <b class="atom">'}'</b>
     <b class="atom">'}'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_exec">exec</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <b class="atom">'}'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <span id="Variable444_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable444_Stmts"><i class="var">Stmts</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable477_ImpStmt"><i class="var"><a href="#VariableStem_ImpStmt">ImpStmt</a></i></span> <span id="Variable482_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable477_ImpStmt"><i class="var">ImpStmt</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable482_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable532_VarsDecl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> <span id="Variable537_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable532_VarsDecl"><i class="var">VarsDecl</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable537_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable587_VarsDecl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable587_VarsDecl"><i class="var">VarsDecl</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable623_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable623_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable666_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable674_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable682_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable666_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable674_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable682_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable756_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable763_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while">while</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable756_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable763_Block"><i class="var">Block</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'print'</b> <b class="atom">'('</b> <span id="Variable820_Exps"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exps">Exps</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable820_Exps"><i class="var">Exps</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <span id="Variable866_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable866_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'try'</b> <span id="Variable935_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'catch'</b> <b class="atom">'('</b> <span id="Variable944_Id"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">')'</b> <span id="Variable952_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>(
      <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable935_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable944_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
        <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable952_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'throw'</b> <span id="Variable1051_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1051_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>


SIMPLE uses natural numbers to identify threads; the use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>(_)</code>
below converts a natural number to the associated thread-id. 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'join'</b> <span id="Variable1118_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1118_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>


The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="var">V</i>, <i class="var">SY</i>)</code> below associates <code><i class="var">V</i></code> with a lock.
When a thread requests a lock already held by another thread,
the requesting thread is suspended until the request is granted.
The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span>(_)</code> below automatically releases held locks
when the current thread terminates.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'acquire'</b> <span id="Variable1226_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1226_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-create">reentrant-lock-create</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span> 
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/index.html#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-release">reentrant-lock-release</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>),
        <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span>(<i class="var">V</i>)</code> below gives the lock associated with <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'release'</b> <span id="Variable1351_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-exit">reentrant-lock-exit</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span> <i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1351_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="var">V</i>, <i class="var">SY</i>)</code> below associates <code><i class="var">V</i></code> with a rendezvous.
When a thread requests a rendezvous on a particular value, and there
is no previous uncompleted request for a rendezvous on the same value,
the requesting thread is suspended until the request is granted.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'rendezvous'</b> <span id="Variable1435_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</a></span>(
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>("rendezvous", <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-create">rendezvous-create</a></span>(2)),
      <i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1435_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>

                


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-THR-3-Statements.cbs]: SIMPLE-THR-3-Statements.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
