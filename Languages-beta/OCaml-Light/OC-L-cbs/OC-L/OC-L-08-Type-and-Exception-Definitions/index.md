---
layout: default
title: "OC-L-08-Type-and-Exception-Definitions"
parent: OC-L
# grand_parent: Languages-beta
nav_order: OC-L-08-Type-and-Exception-Definitions
---

[Languages-beta] : [OC-L-08-Type-and-Exception-Definitions.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_8">8</span> Type and exception definitions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TDS">TDS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-definition">type-definition</span></span> 
  ::= <b class="atom">'type'</b> <span class="syn-name"><a href="#SyntaxName_typedef">typedef</a></span> <span class="syn-name"><a href="#SyntaxName_and-typedef">and-typedef</a></span><sup class="sup">*</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ATD">ATD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_and-typedef">and-typedef</span></span> ::= <b class="atom">'and'</b> <span class="syn-name"><a href="#SyntaxName_typedef">typedef</a></span>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TD">TD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_typedef">typedef</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_type-params">type-params</a></span><sup class="sup">?</sup> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_typeconstr-name">typeconstr-name</a></span> <span class="syn-name"><a href="#SyntaxName_type-information">type-information</a></span>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TI">TI</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-information">type-information</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_type-equation">type-equation</a></span><sup class="sup">?</sup> <span class="syn-name"><a href="#SyntaxName_type-representation">type-representation</a></span><sup class="sup">?</sup> <span class="syn-name"><a href="#SyntaxName_type-constraint">type-constraint</a></span><sup class="sup">*</sup>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TE">TE</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-equation">type-equation</span></span> 
  ::= <b class="atom">'='</b> <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TR">TR</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-representation">type-representation</span></span>
  ::= <b class="atom">'='</b> <b class="atom">'|'</b><sup class="sup">?</sup> <span class="syn-name"><a href="#SyntaxName_constr-decl">constr-decl</a></span> <span class="syn-name"><a href="#SyntaxName_bar-constr-decl">bar-constr-decl</a></span><sup class="sup">*</sup>
    | <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_record-decl">record-decl</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_BCD">BCD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_bar-constr-decl">bar-constr-decl</span></span> ::= <b class="atom">'|'</b> <span class="syn-name"><a href="#SyntaxName_constr-decl">constr-decl</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TPS">TPS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-params">type-params</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_type-param">type-param</a></span>
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_type-param">type-param</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_type-param">type-param</a></span>)<sup class="sup">*</sup> <b class="atom">')'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TP">TP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-param">type-param</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_variance">variance</a></span><sup class="sup">?</sup> <b class="atom">'\''</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_variance">variance</span></span> ::= <b class="atom">'+'</b> | <b class="atom">'-'</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_RD">RD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_record-decl">record-decl</span></span> 
  ::= <b class="atom">'{'</b> <span class="syn-name"><a href="#SyntaxName_field-decl">field-decl</a></span>  ( <b class="atom">';'</b> <span class="syn-name"><a href="#SyntaxName_field-decl">field-decl</a></span> )<sup class="sup">*</sup>  <b class="atom">';'</b><sup class="sup">?</sup> <b class="atom">'}'</b>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CD">CD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_constr-decl">constr-decl</span></span> 
  ::= ( <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_constr-name">constr-name</a></span> | <b class="atom">'['</b> <b class="atom">']'</b> | <b class="atom">'(::)'</b> ) ( <b class="atom">'of'</b> <span class="syn-name"><a href="#SyntaxName_constr-args">constr-args</a></span> )<sup class="sup">?</sup>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CA">CA</span></i> :</i> <span class="syn-name"><span id="SyntaxName_constr-args">constr-args</span></span> 
  ::= <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_star-typexpr">star-typexpr</a></span><sup class="sup">*</sup> 
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FD">FD</span></i> :</i> <span class="syn-name"><span id="SyntaxName_field-decl">field-decl</span></span> 
  ::= <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_field-name">field-name</a></span> <b class="atom">':'</b> <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_poly-typexpr">poly-typexpr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ED">ED</span></i> :</i> <span class="syn-name"><span id="SyntaxName_exception-definition">exception-definition</span></span>
  ::= <b class="atom">'exception'</b> <span class="syn-name"><a href="#SyntaxName_constr-decl">constr-decl</a></span>
    | <b class="atom">'exception'</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_constr-name">constr-name</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_constr">constr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TC">TC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_type-constraint">type-constraint</span></span> 
  ::= <b class="atom">'constraint'</b> <b class="atom">'\''</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span></code></pre></div>


## Type definitions


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_define-types">define-types</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_type-definition">type-definition</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-types">define-types</a></i>[[ <b class="atom">'type'</b> <span id="Variable386_TD"><i class="var"><a href="#VariableStem_TD">TD</a></i></span> <span id="Variable392_ATD*"><i class="var"><a href="#VariableStem_ATD">ATD</a><sup class="sup">*</sup></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>( <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <a href="#Variable386_TD"><i class="var">TD</i></a> <a href="#Variable392_ATD*"><i class="var">ATD<sup class="sup">*</sup></i></a> ]] )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_define-typedefs">define-typedefs</span></i>[[ _:(<span class="syn-name"><a href="#SyntaxName_typedef">typedef</a></span> <span class="syn-name"><a href="#SyntaxName_and-typedef">and-typedef</a></span><sup class="sup">*</sup>)]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <span id="Variable465_TD1"><i class="var"><a href="#VariableStem_TD">TD</a><sub class="sub">1</sub></i></span> <b class="atom">'and'</b> <span id="Variable473_TD2"><i class="var"><a href="#VariableStem_TD">TD</a><sub class="sub">2</sub></i></span> <span id="Variable479_ATD*"><i class="var"><a href="#VariableStem_ATD">ATD</a><sup class="sup">*</sup></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <a href="#Variable473_TD2"><i class="var">TD<sub class="sub">2</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <a href="#Variable473_TD2"><i class="var">TD<sub class="sub">2</sub></i></a> <a href="#Variable479_ATD*"><i class="var">ATD<sup class="sup">*</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <span id="Variable534_TPS?"><i class="var"><a href="#VariableStem_TPS">TPS</a><sup class="sup">?</sup></i></span> <span id="Variable539_TCN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_TCN">TCN</a></i></span> <b class="atom">'='</b> <span id="Variable546_CD"><i class="var"><a href="#VariableStem_CD">CD</a></i></span> <span id="Variable552_BCD*"><i class="var"><a href="#VariableStem_BCD">BCD</a><sup class="sup">*</sup></i></span> ]] = 
    <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <a href="#Variable546_CD"><i class="var">CD</i></a> <a href="#Variable552_BCD*"><i class="var">BCD<sup class="sup">*</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <span id="Variable593_TPS?"><i class="var"><a href="#VariableStem_TPS">TPS</a><sup class="sup">?</sup></i></span> <span id="Variable598_TCN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_TCN">TCN</a></i></span> <b class="atom">'='</b> <span id="Variable605_RD"><i class="var"><a href="#VariableStem_RD">RD</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-typedefs">define-typedefs</a></i>[[ <span id="Variable632_TPS?"><i class="var"><a href="#VariableStem_TPS">TPS</a><sup class="sup">?</sup></i></span> <span id="Variable637_TCN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_TCN">TCN</a></i></span> <b class="atom">'='</b> <span id="Variable644_T"><i class="var"><a href="../OC-L-04-Type-Expressions/index.html#VariableStem_T">T</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_define-constrs">define-constrs</span></i>[[ _:(<span class="syn-name"><a href="#SyntaxName_constr-decl">constr-decl</a></span> <span class="syn-name"><a href="#SyntaxName_bar-constr-decl">bar-constr-decl</a></span><sup class="sup">*</sup>)]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <span id="Variable698_CD1"><i class="var"><a href="#VariableStem_CD">CD</a><sub class="sub">1</sub></i></span> <b class="atom">'|'</b> <span id="Variable706_CD2"><i class="var"><a href="#VariableStem_CD">CD</a><sub class="sub">2</sub></i></span> <span id="Variable712_BCD*"><i class="var"><a href="#VariableStem_BCD">BCD</a><sup class="sup">*</sup></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <a href="#Variable698_CD1"><i class="var">CD<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <a href="#Variable706_CD2"><i class="var">CD<sub class="sub">2</sub></i></a> <a href="#Variable712_BCD*"><i class="var">BCD<sup class="sup">*</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <span id="Variable766_CN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CN">CN</a></i></span> ]] =
    { <i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable766_CN"><i class="var">CN</i></a> ]] |-> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable766_CN"><i class="var">CN</i></a> ]],<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( )) } 
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <span id="Variable826_CN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CN">CN</a></i></span> <b class="atom">'of'</b> <span id="Variable833_CA"><i class="var"><a href="#VariableStem_CA">CA</a></i></span> ]] =
    { <i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable826_CN"><i class="var">CN</i></a> ]] |-> 
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable826_CN"><i class="var">CN</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)) }</code></pre></div>


## Exception definitions


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_define-exception">define-exception</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_exception-definition">exception-definition</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-exception">define-exception</a></i>[[ <b class="atom">'exception'</b> <span id="Variable934_CD"><i class="var"><a href="#VariableStem_CD">CD</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_define-constrs">define-constrs</a></i>[[ <a href="#Variable934_CD"><i class="var">CD</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-exception">define-exception</a></i>[[ <b class="atom">'exception'</b> <span id="Variable966_CN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CN">CN</a></i></span> <b class="atom">'='</b> <span id="Variable973_CSTR"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CSTR">CSTR</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )</code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[OC-L-08-Type-and-Exception-Definitions.cbs]: OC-L-08-Type-and-Exception-Definitions.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-08-Type-and-Exception-Definitions/OC-L-08-Type-and-Exception-Definitions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
