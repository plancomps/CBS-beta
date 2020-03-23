---
layout: default
title: "SIMPLE-THR-2-Expressions"
parent: SIMPLE-THR
grand_parent: Unstable-Languages-beta
nav_order: SIMPLE-THR-2-Expressions
---

[Unstable-Languages-beta] : [SIMPLE-THR-2-Expressions.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE-THR">"SIMPLE-THR"</span></code></pre></div>
# <span id="SectionNumber_2">2</span> Expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exp">Exp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exp">exp</span></span> ::= <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">')'</b>
             |  <span class="syn-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SyntaxName_value">value</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <b class="atom">'++'</b> <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span>
             |  <b class="atom">'-'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span><sup class="sup">?</sup> <b class="atom">')'</b>
             |  <b class="atom">'sizeOf'</b> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">')'</b>
             |  <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'%'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'>'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'>='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'=='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'!='</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <b class="atom">'!'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'||'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span>
             |  <b class="atom">'spawn'</b> <span class="syn-name"><a href="../SIMPLE-THR-3-Statements/index.html#SyntaxName_block">block</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'('</b> <span id="Variable223_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> = [[ <a href="#Variable223_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rval">rval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable263_V"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_V">V</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_val">val</a></i>[[ <a href="#Variable263_V"><i class="var">V</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable292_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable292_LExp"><i class="var">LExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable328_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'='</b> <span id="Variable335_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                             <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable335_Exp"><i class="var">Exp</i></a> ]],
                             <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable328_LExp"><i class="var">LExp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'++'</b> <span id="Variable408_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                          <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable408_LExp"><i class="var">LExp</i></a> ]],
                          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 1)),
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'-'</b> <span id="Variable494_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable494_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable531_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">'('</b> <span id="Variable539_Exps?"><i class="var"><a href="#VariableStem_Exps">Exps</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable531_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable539_Exps?"><i class="var">Exps<sup class="sup">?</sup></i></a> ]]) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'sizeOf'</b> <b class="atom">'('</b> <span id="Variable605_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable605_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable676_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable684_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable676_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable684_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable738_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable746_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable738_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable746_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable800_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable808_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable800_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable808_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable862_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable870_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable862_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable870_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable926_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'%'</b> <span id="Variable934_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable926_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable934_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable990_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable998_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable990_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable998_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1052_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable1060_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1052_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1060_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1114_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable1122_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1114_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1122_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1176_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable1184_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1176_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1184_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1238_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable1246_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1238_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1246_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1300_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable1308_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1300_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1308_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1370_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]]        = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1370_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1408_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1416_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1408_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1416_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1473_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1481_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1473_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1481_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])</code></pre></div>


SIMPLE uses natural numbers to identify threads; the use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>(_)</code>
below associates a natural number with the thread-id given by thread-activate. 
The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>(_)</code> supports automatic release of locks
when threads terminate.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'spawn'</b> <span id="Variable1583_Block"><i class="var"><a href="../SIMPLE-THR-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
          <span class="name"><a href="../../../../../Unstable-Funcons-beta/Unstable-Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>
            <i class="sem-name"><a href="../SIMPLE-THR-3-Statements/index.html#SemanticsName_exec">exec</a></i>[[ <a href="#Variable1583_Block"><i class="var">Block</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exps">Exps</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exps">exps</span></span> ::= <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rvals">rvals</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exps">exps</a></span><sup class="sup">?</sup> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[  ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1687_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1687_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1716_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable1723_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1716_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable1723_Exps"><i class="var">Exps</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_LExp">LExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_lexp">lexp</span></span> ::= <span class="syn-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SyntaxName_id">id</a></span> | <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span> <b class="atom">']'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <span id="Variable1793_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1800_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b>     <span id="Variable1807_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> ]] : <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> =
  [[ <a href="#Variable1793_LExp"><i class="var">LExp</i></a> <b class="atom">'['</b> <a href="#Variable1800_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable1807_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_lval">lval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1874_Id"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1874_Id"><i class="var">Id</i></a> ]])
<i class="keyword">Rule</i>
   <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1910_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1917_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] =
     <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(1,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1917_Exp"><i class="var">Exp</i></a> ]]),<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1910_LExp"><i class="var">LExp</i></a> ]]))</code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-THR-2-Expressions.cbs]: SIMPLE-THR-2-Expressions.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-2-Expressions/SIMPLE-THR-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
