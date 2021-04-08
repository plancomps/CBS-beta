---
title: "LD-Start"
parent: LD
ancestor: Unstable-Languages-beta
nav_order: LD
---

[Unstable-Languages-beta] : [LD-Start.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_LD">"LD"</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code>[
# <a href="SectionNumber_1">1</a> Lexical constructs
# <a href="SectionNumber_2">2</a> Call-by-value lambda-calculus
# <a href="SectionNumber_3">3</a> Arithmetic and Boolean expressions
# <a href="SectionNumber_4">4</a> References and imperatives
# <a href="SectionNumber_5">5</a> Multithreading
# <a href="SectionNumber_6">6</a> Programs
# <a href="../LD-Disambiguation/index.html#SectionNumber_A">A</a> Disambiguation
]</code></pre></div>


 
  Lexical syntax: 


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_X">X</span></i>:</i><span class="syn-name"><span id="SyntaxName_id">id</span></span>  ::= (<b class="atom">'a'</b>-<b class="atom">'z'</b>) (<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">*</sup>
     
       <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_N">N</span></i>:</i><span class="syn-name"><span id="SyntaxName_int">int</span></span> ::= (<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">+</sup>
       
       <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_keyword">keyword</span></span> ::= <b class="atom">'do'</b>  | <b class="atom">'else'</b>  | <b class="atom">'fork'</b>   | <b class="atom">'if'</b>
                 | <b class="atom">'in'</b>  | <b class="atom">'join'</b>  | <b class="atom">'lambda'</b> | <b class="atom">'let'</b>
                 | <b class="atom">'ref'</b> | <b class="atom">'spawn'</b> | <b class="atom">'then'</b>   | <b class="atom">'while'</b></code></pre></div>



  Context-free syntax:


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_E">E</span></i>:</i><span class="syn-name"><span id="SyntaxName_exp">exp</span></span> ::= <span class="syn-name"><a href="#SyntaxName_int">int</a></span>
               | <span class="syn-name"><a href="#SyntaxName_id">id</a></span>
// Call-by-value lambda-calculus:
               | <b class="atom">'lambda'</b> <span class="syn-name"><a href="#SyntaxName_id">id</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'let'</b> <span class="syn-name"><a href="#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'in'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">')'</b>
// Arithmetic and Boolean expressions:
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'if'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'then'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
// References and imperatives:
               | <b class="atom">'ref'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">':='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'!'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'('</b> <b class="atom">')'</b>
               | <b class="atom">'while'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'do'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
// Multithreading:
               | <b class="atom">'spawn'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
               | <b class="atom">'join'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span></code></pre></div>




  Expression evaluation:


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i> <span class="name"><span id="Name_ld-values">ld-values</span></span> ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)
                | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
                | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
                | <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
                | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
                | <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-ids">thread-ids</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i> <i class="sem-name"><span id="SemanticsName_eval">eval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> ]] : => <span class="name"><a href="#Name_ld-values">ld-values</a></span></code></pre></div>
# <span id="SectionNumber_1">1</span> Lexical constructs


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable411_N"><i class="var"><a href="#VariableStem_N">N</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal">decimal</a></span> \"<a href="#Variable411_N"><i class="var">N</i></a>\"
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable436_X"><i class="var"><a href="#VariableStem_X">X</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span> \"<a href="#Variable436_X"><i class="var">X</i></a>\"</code></pre></div>



# <span id="SectionNumber_2">2</span> Call-by-value lambda-calculus


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'lambda'</b> <span id="Variable474_X"><i class="var"><a href="#VariableStem_X">X</a></i></span> <b class="atom">'.'</b> <span id="Variable481_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>( \"<a href="#Variable474_X"><i class="var">X</i></a>\", <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span> ), 
           <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable481_E"><i class="var">E</i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable542_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <span id="Variable548_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable542_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable548_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'let'</b> <span id="Variable602_X"><i class="var"><a href="#VariableStem_X">X</a></i></span> <b class="atom">'='</b> <span id="Variable610_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'in'</b> <span id="Variable618_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bind">bind</a></span>( \"<a href="#Variable602_X"><i class="var">X</i></a>\", <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable610_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]] ), 
           <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable618_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )</code></pre></div>


Desugaring (alternative to the above rule):

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> [[ <b class="atom">'let'</b> <span id="Variable691_X"><i class="var"><a href="#VariableStem_X">X</a></i></span> <b class="atom">'='</b> <span id="Variable699_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'in'</b> <span id="Variable707_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> =
     [[ <b class="atom">'('</b> <b class="atom">'lambda'</b> <a href="#Variable691_X"><i class="var">X</i></a> <b class="atom">'.'</b> <a href="#Variable707_E2"><i class="var">E<sub class="sub">2</sub></i></a> <b class="atom">')'</b> <b class="atom">'('</b> <a href="#Variable699_E1"><i class="var">E<sub class="sub">1</sub></i></a> <b class="atom">')'</b> ]]</code></pre></div>




<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'('</b> <span id="Variable778_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> <b class="atom">')'</b> ]] = <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable778_E"><i class="var">E</i></a> ]]</code></pre></div>
# <span id="SectionNumber_3">3</span> Arithmetic and Boolean expressions


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable826_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable834_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable826_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable834_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable888_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable896_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-mul">int-mul</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable888_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable896_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable950_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable958_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_int-div">int-div</a></span> ( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable950_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable958_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1014_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable1022_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_l-to-r">l-to-r</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1014_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1022_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1078_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1086_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1078_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1086_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span> )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'if'</b> <span id="Variable1145_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'then'</b> <span id="Variable1153_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> <b class="atom">'else'</b> <span id="Variable1161_E3"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">3</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1145_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1153_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1161_E3"><i class="var">E<sub class="sub">3</sub></i></a> ]] )</code></pre></div>



# <span id="SectionNumber_4">4</span> References and imperatives


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'ref'</b> <span id="Variable1248_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>( <span class="name"><a href="#Name_ld-values">ld-values</a></span>, <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1248_E"><i class="var">E</i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1289_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">':='</b> <span id="Variable1297_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1289_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1297_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1352_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1352_E"><i class="var">E</i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1390_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable1398_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>( <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1390_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]] ), <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1398_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] )
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'while'</b> <span id="Variable1480_E1"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">1</sub></i></span> <b class="atom">'do'</b> <span id="Variable1488_E2"><i class="var"><a href="#VariableStem_E">E</a><sub class="sub">2</sub></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_while-true">while-true</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1480_E1"><i class="var">E<sub class="sub">1</sub></i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1488_E2"><i class="var">E<sub class="sub">2</sub></i></a> ]] ) )</code></pre></div>



# <span id="SectionNumber_5">5</span> Multithreading


N.B. The funcons for multithreading have not yet been fully validated,
so they are defined in Unstable-Funcons-beta instead of Funcons-beta.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'spawn'</b> <span id="Variable1572_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] =
  <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1572_E"><i class="var">E</i></a> ]]
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'join'</b> <span id="Variable1612_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] = <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-join">thread-join</a></span>( <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1612_E"><i class="var">E</i></a> ]] )</code></pre></div>



# <span id="SectionNumber_6">6</span> Programs

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i>:</i><span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i> <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_start">start</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i> <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable1692_E"><i class="var"><a href="#VariableStem_E">E</a></i></span> ]] =
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span> 
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
  <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
  <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_multithread">multithread</a></span>
    <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <a href="#Variable1692_E"><i class="var">E</i></a> ]]</code></pre></div>


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
[LD-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start/LD-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start/LD-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Start/LD-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
