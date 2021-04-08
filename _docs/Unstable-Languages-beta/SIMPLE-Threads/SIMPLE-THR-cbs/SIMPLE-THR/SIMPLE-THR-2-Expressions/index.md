---
title: "SIMPLE-THR-2-Expressions"
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-2-Expressions.cbs] \| [PRETTY] \| [PDF]


----
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
  [[ <b class="atom">'('</b> <span id="Variable226_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> = [[ <a href="#Variable226_Exp"><i class="var">Exp</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rval">rval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable266_V"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_V">V</a></i></span> ]] = <i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_val">val</a></i>[[ <a href="#Variable266_V"><i class="var">V</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable295_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable295_LExp"><i class="var">LExp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable331_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'='</b> <span id="Variable338_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                             <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable338_Exp"><i class="var">Exp</i></a> ]],
                             <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable331_LExp"><i class="var">LExp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'++'</b> <span id="Variable411_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(
                          <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <a href="#Variable411_LExp"><i class="var">LExp</i></a> ]],
                          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 1)),
                            <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'-'</b> <span id="Variable497_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable497_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable534_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">'('</b> <span id="Variable542_Exps?"><i class="var"><a href="#VariableStem_Exps">Exps</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable534_Exp"><i class="var">Exp</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable542_Exps?"><i class="var">Exps<sup class="sup">?</sup></i></a> ]]) )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'sizeOf'</b> <b class="atom">'('</b> <span id="Variable608_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable608_Exp"><i class="var">Exp</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable679_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable687_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable679_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable687_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable741_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable749_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable741_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable749_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable803_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable811_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable803_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable811_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable865_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable873_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable865_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable873_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable929_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'%'</b> <span id="Variable937_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable929_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable937_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable993_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable1001_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable993_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1001_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1055_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable1063_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1055_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1063_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1117_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable1125_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1117_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1125_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1179_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable1187_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1179_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1187_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1241_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable1249_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1241_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1249_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1303_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable1311_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1303_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1311_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1373_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]]        = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1373_Exp"><i class="var">Exp</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1411_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1419_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1411_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1419_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <span id="Variable1476_Exp1"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1484_Exp2"><i class="var"><a href="#VariableStem_Exp">Exp</a><sub class="sub">2</sub></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-else">if-else</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1476_Exp1"><i class="var">Exp<sub class="sub">1</sub></i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1484_Exp2"><i class="var">Exp<sub class="sub">2</sub></i></a> ]])</code></pre></div>


SIMPLE uses natural numbers to identify threads; the use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>(_)</code>
below associates a natural number with the thread-id given by thread-activate. 
The use of <code><span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>(_)</code> supports automatic release of locks
when threads terminate.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <b class="atom">'spawn'</b> <span id="Variable1586_Block"><i class="var"><a href="../SIMPLE-THR-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
          <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span>
            <i class="sem-name"><a href="../SIMPLE-THR-3-Statements/index.html#SemanticsName_exec">exec</a></i>[[ <a href="#Variable1586_Block"><i class="var">Block</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Exps">Exps</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exps">exps</span></span> ::= <span class="syn-name"><a href="#SyntaxName_exp">exp</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_rvals">rvals</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exps">exps</a></span><sup class="sup">?</sup> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)<sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[  ]] = ( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1693_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1693_Exp"><i class="var">Exp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <span id="Variable1722_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b> <span id="Variable1729_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1722_Exp"><i class="var">Exp</i></a> ]] , <i class="sem-name"><a href="#SemanticsName_rvals">rvals</a></i>[[ <a href="#Variable1729_Exps"><i class="var">Exps</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_LExp">LExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_lexp">lexp</span></span> ::= <span class="syn-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SyntaxName_id">id</a></span> | <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_exps">exps</a></span> <b class="atom">']'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <span id="Variable1802_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1809_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">','</b>     <span id="Variable1816_Exps"><i class="var"><a href="#VariableStem_Exps">Exps</a></i></span> <b class="atom">']'</b> ]] : <span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> =
  [[ <a href="#Variable1802_LExp"><i class="var">LExp</i></a> <b class="atom">'['</b> <a href="#Variable1809_Exp"><i class="var">Exp</i></a> <b class="atom">']'</b> <b class="atom">'['</b> <a href="#Variable1816_Exps"><i class="var">Exps</i></a> <b class="atom">']'</b> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_lval">lval</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_lexp">lexp</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1883_Id"><i class="var"><a href="../SIMPLE-THR-1-Lexical/index.html#VariableStem_Id">Id</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../SIMPLE-THR-1-Lexical/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable1883_Id"><i class="var">Id</i></a> ]])
<i class="keyword">Rule</i>
   <i class="sem-name"><a href="#SemanticsName_lval">lval</a></i>[[ <span id="Variable1919_LExp"><i class="var"><a href="#VariableStem_LExp">LExp</a></i></span> <b class="atom">'['</b> <span id="Variable1926_Exp"><i class="var"><a href="#VariableStem_Exp">Exp</a></i></span> <b class="atom">']'</b> ]] =
     <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(1,<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1926_Exp"><i class="var">Exp</i></a> ]]),<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<i class="sem-name"><a href="#SemanticsName_rval">rval</a></i>[[ <a href="#Variable1919_LExp"><i class="var">LExp</i></a> ]]))</code></pre></div>



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
[SIMPLE-THR-2-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-2-Expressions/SIMPLE-THR-2-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-2-Expressions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-2-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-2-Expressions/SIMPLE-THR-2-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-2-Expressions/SIMPLE-THR-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
