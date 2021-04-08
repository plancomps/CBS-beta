---
title: "SIMPLE-2-Expressions"
parent: SIMPLE
ancestor: Languages-beta

---

[Languages-beta] : [SIMPLE-2-Expressions.cbs] \| [PRETTY] \| [PDF]


----
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
  [[ <b class="atom">'('</b> <span id="Variable220_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> = [[ <a href="#Variable220_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rval">rval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable260_V"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_V">V</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_val">val</a></i>[[ <a href="#Variable260_V"><i class="var">V</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable289_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable289_LExp"><i class="var">LExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable325_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'='</b> <span id="Variable332_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                             <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable332_Exp"><i class="var">Exp</i></a> ]],
                             <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable325_LExp"><i class="var">LExp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'++'</b> <span id="Variable405_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                          <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable405_LExp"><i class="var">LExp</i></a> ]],
                          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 1)),
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'-'</b> <span id="Variable491_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable491_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable528_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">'('</b> <span id="Variable536_Exps?"><i class="var"><a href="#VariableStem_Exps">Exps</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable528_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable536_Exps?"><i class="var">Exps<sup class="sup">?</sup></i></a> ]]) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'sizeOf'</b> <b class="atom">'('</b> <span id="Variable602_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable602_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable673_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable681_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable673_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable681_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable735_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable743_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable735_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable743_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable797_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable805_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable797_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable805_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable859_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable867_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable859_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable867_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable923_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'%'</b> <span id="Variable931_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable923_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable931_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable987_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable995_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable987_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable995_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1049_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable1057_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1049_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1057_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1111_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable1119_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1111_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1119_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1173_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable1181_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1173_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1181_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1235_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable1243_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1235_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1243_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1297_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable1305_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1297_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1305_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1367_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]]        = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1367_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1405_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1413_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1405_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1413_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1470_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1478_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1470_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1478_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exps">Exps</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exps">exps</span></span> ::= <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rvals">rvals</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exps">exps</a></span><sup class="sup">?</sup> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[  ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1599_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1599_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1628_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable1635_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1628_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable1635_Exps"><i class="var">Exps</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_LExp">LExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_lexp">lexp</span></span> ::= <span class="syn-name"><a href="../SIMPLE-1-Lexical/index.html#SyntaxName_id">id</a></span> | <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span> <b class="atom">']'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <span id="Variable1708_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1715_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b>     <span id="Variable1722_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> ]] : <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> =
  [[ <a href="#Variable1708_LExp"><i class="var">LExp</i></a> <b class="atom">'['</b> <a href="#Variable1715_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable1722_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_lval">lval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1789_Id"><i class="var"><a href="../SIMPLE-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1789_Id"><i class="var">Id</i></a> ]])
<i class="keyword">Rule</i>
   <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1825_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1832_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] =
     <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(1,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1832_Exp"><i class="var">Exp</i></a> ]]),<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1825_LExp"><i class="var">LExp</i></a> ]]))</code></pre></div>




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
[SIMPLE-2-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
