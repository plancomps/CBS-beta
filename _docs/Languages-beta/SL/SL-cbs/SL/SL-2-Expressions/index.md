---
title: "SL-2-Expressions"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-2-Expressions.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SL">"SL"</span></code></pre></div>
# <span id="SectionNumber_2">2</span> Expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Expr">Expr</span></i> :</i> <span class="syn-name"><span id="SyntaxName_expr">expr</span></span> ::= <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_int">int</a></span>
                | <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_string">string</a></span>
                | <b class="atom">'true'</b>
                | <b class="atom">'false'</b>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'+'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'/'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'*'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'-'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'=='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'<'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'!='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'>='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'>'</b>  <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'||'</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <b class="atom">'!'</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b>
                | <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span>
                | <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span>
                | <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b>
                | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> <b class="atom">')'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'('</b> <span id="Variable231_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> = [[ <a href="#Variable231_Expr"><i class="var">Expr</i></a> ]]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_sl-values">sl-values</span></span> ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval">eval</span></i>[[ <span id="Variable280_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span>:<span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> ]] : => <span class="name"><a href="#Name_sl-values">sl-values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable294_Int"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Int">Int</a></i></span> ]] = <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_int-val">int-val</a></i>[[<a href="#Variable294_Int"><i class="var">Int</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable323_String"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_String">String</a></i></span> ]] = <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_string-val">string-val</a></i>[[<a href="#Variable323_String"><i class="var">String</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'true'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'false'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable385_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable393_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../SL-Funcons/index.html#Name_integer-add-else-string-append">integer-add-else-string-append</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable385_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable393_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable447_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable455_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable447_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable455_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable515_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable523_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable515_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable523_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable581_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable589_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable581_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable589_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable647_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable655_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable647_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable655_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable709_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable717_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable709_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable717_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable775_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable783_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable775_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable783_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable841_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable849_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable841_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable849_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable905_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable913_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable905_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable913_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable971_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable979_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable971_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable979_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1037_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1045_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1037_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1045_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1106_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1114_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1106_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>, <span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1114_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1176_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1176_Expr"><i class="var">Expr</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'new'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object">object</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>, "Object", <span class="name"><a href="../SL-Funcons/index.html#Name_initialise-local-variables">initialise-local-variables</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'println'</b> <b class="atom">'('</b> <span id="Variable1254_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../SL-Funcons/index.html#Name_print-line">print-line</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_sl-to-string">sl-to-string</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1254_Expr"><i class="var">Expr</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'readln'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = [ <span class="name"><a href="../SL-Funcons/index.html#Name_read-line">read-line</a></span> ]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'defineFunction'</b> <b class="atom">'('</b> <span id="Variable1323_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>//  
//    give(str eval[[Expr]],  
//      override-global-bindings(declare[[given]]))  
//  // Dynamic parsing and translation to funcons not yet implemented
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'nanoTime'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'stacktrace'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
<i class="keyword">Otherwise</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1391_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1399_ExprList?"><i class="var"><a href="#VariableStem_ExprList">ExprList</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b>  ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_fun">fun</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_global-bound">global-bound</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1391_Id"><i class="var">Id</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1399_ExprList?"><i class="var">ExprList<sup class="sup">?</sup></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1458_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable">local-variable</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1458_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_str">str</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1458_Id"><i class="var">Id</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1513_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable1520_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1520_Expr"><i class="var">Expr</i></a>]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-assign">local-variable-assign</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1513_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1591_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">'.'</b> <span id="Variable1598_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> ]] =
    <span class="name"><a href="../SL-Funcons/index.html#Name_scope-closed">scope-closed</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_obj">obj</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1591_Expr"><i class="var">Expr</i></a>]], 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable">local-variable</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1598_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1668_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'.'</b> <span id="Variable1675_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable1683_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1683_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]],
      <span class="name"><a href="../SL-Funcons/index.html#Name_scope-closed">scope-closed</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_obj">obj</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1668_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]],
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-assign">local-variable-assign</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1675_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1782_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">'.'</b> <span id="Variable1789_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1797_ExprList?"><i class="var"><a href="#VariableStem_ExprList">ExprList</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_fun">fun</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_global-bound">global-bound</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1782_Expr"><i class="var">Expr</i></a> <b class="atom">'.'</b> <a href="#Variable1789_Id"><i class="var">Id</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1797_ExprList?"><i class="var">ExprList<sup class="sup">?</sup></i></a>]])</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ExprList">ExprList</span></i> :</i> <span class="syn-name"><span id="SyntaxName_expr-list">expr-list</span></span> ::= <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval-list">eval-list</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span><sup class="sup">?</sup> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_sl-values">sl-values</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ <span id="Variable1930_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1930_Expr"><i class="var">Expr</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ <span id="Variable1969_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">','</b> <span id="Variable1976_ExprList"><i class="var"><a href="#VariableStem_ExprList">ExprList</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1969_Expr"><i class="var">Expr</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1976_ExprList"><i class="var">ExprList</i></a>]])</code></pre></div>

          

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
[SL-2-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions/SL-2-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions/SL-2-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-2-Expressions/SL-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
