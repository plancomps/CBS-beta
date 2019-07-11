---
layout: default
title: SIMPLE-2-Expressions
nav_exclude: true
---

[Languages-beta] : [SIMPLE-2-Expressions.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE">"SIMPLE"</span></code></pre></div>
# <span id="SectionNumber_2">2</span> Expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exp">Exp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exp">exp</span></span> ::= <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">')'</b>
             |  <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_value">value</a></span>
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
             |  <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> <b class="atom">'||'</b> <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'('</b> <span id="Variable217_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> = [[ <a href="#Variable217_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rval">rval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable257_V"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_V">V</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_val">val</a></i>[[ <a href="#Variable257_V"><i class="var">V</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable286_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable286_LExp"><i class="var">LExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable322_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'='</b> <span id="Variable329_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                             <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable329_Exp"><i class="var">Exp</i></a> ]],
                             <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable322_LExp"><i class="var">LExp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'++'</b> <span id="Variable402_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                          <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable402_LExp"><i class="var">LExp</i></a> ]],
                          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 1)),
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'-'</b> <span id="Variable488_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable488_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable525_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">'('</b> <span id="Variable533_Exps?"><i class="var"><a href="#VariableStem_Exps">Exps</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable525_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable533_Exps?"><i class="var">Exps<sup class="sup">?</sup></i></a> ]]) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'sizeOf'</b> <b class="atom">'('</b> <span id="Variable599_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable599_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable670_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable678_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable670_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable678_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable732_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable740_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable732_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable740_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable794_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable802_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable794_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable802_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable856_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable864_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable856_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable864_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable920_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'%'</b> <span id="Variable928_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable920_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable928_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable984_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable992_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable984_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable992_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1046_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable1054_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1046_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1054_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1108_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable1116_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1108_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1116_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1170_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable1178_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1170_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1178_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1232_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable1240_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1232_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1240_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1294_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable1302_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1294_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1302_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1364_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]]        = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1364_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1402_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1410_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1402_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1410_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1467_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1475_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1467_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1475_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exps">Exps</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exps">exps</span></span> ::= <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rvals">rvals</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exps">exps</a></span><sup class="sup">?</sup> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[  ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1593_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1593_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1622_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable1629_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1622_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable1629_Exps"><i class="var">Exps</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_LExp">LExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_lexp">lexp</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> | <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span> <b class="atom">']'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <span id="Variable1699_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1706_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b>     <span id="Variable1713_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> ]] : <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> =
  [[ <a href="#Variable1699_LExp"><i class="var">LExp</i></a> <b class="atom">'['</b> <a href="#Variable1706_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable1713_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_lval">lval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1780_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1780_Id"><i class="var">Id</i></a> ]])
<i class="keyword">Rule</i>
   <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1816_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1823_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] =
     <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(1,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1823_Exp"><i class="var">Exp</i></a> ]]),<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1816_LExp"><i class="var">LExp</i></a> ]]))</code></pre></div>




____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-2-Expressions.cbs]: SIMPLE-2-Expressions.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
