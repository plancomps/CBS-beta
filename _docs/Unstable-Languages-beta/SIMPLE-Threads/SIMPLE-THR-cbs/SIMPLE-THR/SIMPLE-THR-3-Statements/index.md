---
title: "SIMPLE-THR-3-Statements"
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-3-Statements.cbs] \| [PRETTY] \| [PDF]


----
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
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable254_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable261_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'if'</b> <b class="atom">'('</b> <a href="#Variable254_Exp"><i class="var">Exp</i></a> <b class="atom">')'</b> <a href="#Variable261_Block"><i class="var">Block</i></a> <b class="atom">'else'</b> <b class="atom">'{'</b> <b class="atom">'}'</b> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'for'</b> <b class="atom">'('</b> <span id="Variable315_Stmt"><i class="var"><a href="#VariableStem_Stmt">Stmt</a></i></span> <span id="Variable321_Exp1"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable329_Exp2"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> <b class="atom">')'</b>
       <b class="atom">'{'</b> <span id="Variable338_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] : <span class="syn-name"><a href="#SyntaxName_stmt">stmt</a></span> =
  [[ <b class="atom">'{'</b> <a href="#Variable315_Stmt"><i class="var">Stmt</i></a>
         <b class="atom">'while'</b> <b class="atom">'('</b> <a href="#Variable321_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> <b class="atom">')'</b>
            <b class="atom">'{'</b> <b class="atom">'{'</b> <a href="#Variable338_Stmts"><i class="var">Stmts</i></a> <b class="atom">'}'</b> <a href="#Variable329_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> <b class="atom">';'</b> <b class="atom">'}'</b>
     <b class="atom">'}'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_exec">exec</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_stmts">stmts</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <b class="atom">'}'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'{'</b> <span id="Variable456_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> <b class="atom">'}'</b> ]] = <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable456_Stmts"><i class="var">Stmts</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable489_ImpStmt"><i class="var"><a href="#VariableStem_ImpStmt">ImpStmt</a></i></span> <span id="Variable494_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable489_ImpStmt"><i class="var">ImpStmt</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable494_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable544_VarsDecl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> <span id="Variable549_Stmts"><i class="var"><a href="#VariableStem_Stmts">Stmts</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable544_VarsDecl"><i class="var">VarsDecl</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable549_Stmts"><i class="var">Stmts</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable599_VarsDecl"><i class="var"><a href="../SIMPLE-THR-4-Declarations/index.html#VariableStem_VarsDecl">VarsDecl</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-4-Declarations/index.html#SemanticsName_declare">declare</a></i>[[ <a href="#Variable599_VarsDecl"><i class="var">VarsDecl</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <span id="Variable635_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable635_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'if'</b> <b class="atom">'('</b> <span id="Variable678_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable686_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'else'</b> <span id="Variable694_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable678_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable686_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable694_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'while'</b> <b class="atom">'('</b> <span id="Variable768_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> <span id="Variable775_Block"><i class="var"><a href="#VariableStem_Block">Block</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while">while</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable768_Exp"><i class="var">Exp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable775_Block"><i class="var">Block</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'print'</b> <b class="atom">'('</b> <span id="Variable832_Exps"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exps">Exps</a></i></span> <b class="atom">')'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable832_Exps"><i class="var">Exps</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <span id="Variable878_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable878_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'return'</b> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_return">return</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'try'</b> <span id="Variable947_Block1"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">1</sub></i></span> <b class="atom">'catch'</b> <b class="atom">'('</b> <span id="Variable956_Id"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">')'</b> <span id="Variable964_Block2"><i class="var"><a href="#VariableStem_Block">Block</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>(
      <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable947_Block1"><i class="var">Block<sub class="sub">1</sub></i></a> ]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable956_Id"><i class="var">Id</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
        <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <a href="#Variable964_Block2"><i class="var">Block<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'throw'</b> <span id="Variable1063_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1063_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>


SIMPLE uses natural numbers to identify threads; the use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>(_)</code>
below converts a natural number to the associated thread-id. 

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'join'</b> <span id="Variable1130_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_lookup-index">lookup-index</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1130_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>


The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="var">V</i>, <i class="var">SY</i>)</code> below associates <code><i class="var">V</i></code> with a lock.
When a thread requests a lock already held by another thread,
the requesting thread is suspended until the request is granted.
The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span>(_)</code> below automatically releases held locks
when the current thread terminates.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'acquire'</b> <span id="Variable1238_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1238_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-create">reentrant-lock-create</a></span>),
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone">postpone</a></span> 
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_is-exclusive-lock-holder">is-exclusive-lock-holder</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-release">reentrant-lock-release</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
            <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>),
        <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-sync-else-wait">reentrant-lock-sync-else-wait</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span>(<i class="var">V</i>)</code> below gives the lock associated with <code><i class="var">V</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'release'</b> <span id="Variable1363_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/index.html#Name_reentrant-lock-exit">reentrant-lock-exit</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value-recall">memo-value-recall</a></span> <i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1363_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>(<i class="var">V</i>, <i class="var">SY</i>)</code> below associates <code><i class="var">V</i></code> with a rendezvous.
When a thread requests a rendezvous on a particular value, and there
is no previous uncompleted request for a rendezvous on the same value,
the requesting thread is suspended until the request is granted.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_exec">exec</a></i>[[ <b class="atom">'rendezvous'</b> <span id="Variable1447_Exp"><i class="var"><a href="../SIMPLE-THR-2-Expressions/index.html#VariableStem_Exp">Exp</a></i></span> <b class="atom">';'</b> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-sync-else-wait">rendezvous-sync-else-wait</a></span>(
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_memo-value">memo-value</a></span>("rendezvous", <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/index.html#Name_rendezvous-create">rendezvous-create</a></span>(2)),
      <i class="sem-name"><a href="../SIMPLE-THR-2-Expressions/index.html#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1447_Exp"><i class="var">Exp</i></a> ]])</code></pre></div>

                


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
[SIMPLE-THR-3-Statements.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
