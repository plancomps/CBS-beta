---
layout: default
title: "SL-2-Expressions"
parent: SL
grand_parent: Languages-beta
nav_order: SL-2-Expressions
---

[Languages-beta] : [SL-2-Expressions.cbs]
-----------------------------

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
  [[ <b class="atom">'('</b> <span id="Variable228_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> = [[ <a href="#Variable228_Expr"><i class="var">Expr</i></a> ]]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_sl-values">sl-values</span></span> ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_objects">objects</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval">eval</span></i>[[ <span id="Variable277_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span>:<span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> ]] : => <span class="name"><a href="#Name_sl-values">sl-values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable291_Int"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Int">Int</a></i></span> ]] = <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_int-val">int-val</a></i>[[<a href="#Variable291_Int"><i class="var">Int</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable320_String"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_String">String</a></i></span> ]] = <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_string-val">string-val</a></i>[[<a href="#Variable320_String"><i class="var">String</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'true'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'false'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable382_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable390_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../SL-Funcons/index.html#Name_integer-add-else-string-append">integer-add-else-string-append</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable382_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable390_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable444_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable452_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable444_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable452_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable512_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'*'</b> <span id="Variable520_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable512_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable520_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable578_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'-'</b> <span id="Variable586_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable578_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable586_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable644_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'=='</b> <span id="Variable652_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable644_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable652_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable706_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'<='</b> <span id="Variable714_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable706_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable714_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable772_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'<'</b> <span id="Variable780_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable772_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable780_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable838_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'!='</b> <span id="Variable846_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable838_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable846_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable902_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'>='</b> <span id="Variable910_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable902_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable910_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable968_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'>'</b> <span id="Variable976_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable968_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_int">int</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable976_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1034_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'&&'</b> <span id="Variable1042_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1034_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1042_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1103_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'||'</b> <span id="Variable1111_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1103_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>, <span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1111_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'!'</b> <span id="Variable1173_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_bool">bool</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1173_Expr"><i class="var">Expr</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'new'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object">object</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Generating/index.html#Name_fresh-atom">fresh-atom</a></span>, "Object", <span class="name"><a href="../SL-Funcons/index.html#Name_initialise-local-variables">initialise-local-variables</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'println'</b> <b class="atom">'('</b> <span id="Variable1251_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../SL-Funcons/index.html#Name_print-line">print-line</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_sl-to-string">sl-to-string</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1251_Expr"><i class="var">Expr</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'readln'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = [ <span class="name"><a href="../SL-Funcons/index.html#Name_read-line">read-line</a></span> ]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'defineFunction'</b> <b class="atom">'('</b> <span id="Variable1320_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>//  
//    give(str eval[[Expr]],  
//      override-global-bindings(declare[[given]]))  
//  /CBS-beta// Dynamic parsing and translation to funcons not yet implemented
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'nanoTime'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <b class="atom">'stacktrace'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>
<i class="keyword">Otherwise</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1388_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1396_ExprList?"><i class="var"><a href="#VariableStem_ExprList">ExprList</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b>  ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_fun">fun</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_global-bound">global-bound</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1388_Id"><i class="var">Id</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1396_ExprList?"><i class="var">ExprList<sup class="sup">?</sup></i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1455_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable">local-variable</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1455_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../SL-Funcons/index.html#Name_str">str</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1455_Id"><i class="var">Id</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1510_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable1517_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1517_Expr"><i class="var">Expr</i></a>]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-assign">local-variable-assign</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1510_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1588_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">'.'</b> <span id="Variable1595_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> ]] =
    <span class="name"><a href="../SL-Funcons/index.html#Name_scope-closed">scope-closed</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_obj">obj</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1588_Expr"><i class="var">Expr</i></a>]], 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable">local-variable</a></span> <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1595_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1665_Expr1"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">1</sub></i></span> <b class="atom">'.'</b> <span id="Variable1672_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'='</b> <span id="Variable1680_Expr2"><i class="var"><a href="#VariableStem_Expr">Expr</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1680_Expr2"><i class="var">Expr<sub class="sub">2</sub></i></a>]],
      <span class="name"><a href="../SL-Funcons/index.html#Name_scope-closed">scope-closed</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Objects/index.html#Name_object-feature-map">object-feature-map</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_obj">obj</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1665_Expr1"><i class="var">Expr<sub class="sub">1</sub></i></a>]],
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-assign">local-variable-assign</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable1672_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[ <span id="Variable1779_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">'.'</b> <span id="Variable1786_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable1794_ExprList?"><i class="var"><a href="#VariableStem_ExprList">ExprList</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_fun">fun</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_global-bound">global-bound</a></span> <i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1779_Expr"><i class="var">Expr</i></a> <b class="atom">'.'</b> <a href="#Variable1786_Id"><i class="var">Id</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1794_ExprList?"><i class="var">ExprList<sup class="sup">?</sup></i></a>]])</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ExprList">ExprList</span></i> :</i> <span class="syn-name"><span id="SyntaxName_expr-list">expr-list</span></span> ::= <span class="syn-name"><a href="#SyntaxName_expr">expr</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval-list">eval-list</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_expr-list">expr-list</a></span><sup class="sup">?</sup> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_sl-values">sl-values</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ <span id="Variable1924_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1924_Expr"><i class="var">Expr</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[ <span id="Variable1963_Expr"><i class="var"><a href="#VariableStem_Expr">Expr</a></i></span> <b class="atom">','</b> <span id="Variable1970_ExprList"><i class="var"><a href="#VariableStem_ExprList">ExprList</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<i class="sem-name"><a href="#SemanticsName_eval">eval</a></i>[[<a href="#Variable1963_Expr"><i class="var">Expr</i></a>]], <i class="sem-name"><a href="#SemanticsName_eval-list">eval-list</a></i>[[<a href="#Variable1970_ExprList"><i class="var">ExprList</i></a>]])</code></pre></div>

          

____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SL-2-Expressions.cbs]: SL-2-Expressions.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-2-Expressions/SL-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
