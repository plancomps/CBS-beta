---
layout: default
title: "OC-L-11-Module-Implementations"
parent: OC-L

---

[Languages-beta] : [OC-L-11-Module-Implementations.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_11">11</span> Module implementations


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_UI">UI</span></i> :</i> <span class="syn-name"><span id="SyntaxName_unit-implementation">unit-implementation</span></span>
  ::= (<span class="syn-name"><a href="#SyntaxName_semicolon-pair">semicolon-pair</a></span><sup class="sup">*</sup> <span class="syn-name"><a href="#SyntaxName_module-items">module-items</a></span> <span class="syn-name"><a href="#SyntaxName_semicolon-pair">semicolon-pair</a></span><sup class="sup">*</sup>)<sup class="sup">?</sup>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_MIS">MIS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_module-items">module-items</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_definition">definition</a></span>
    | <span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span>
    | <span class="syn-name"><a href="#SyntaxName_module-items">module-items</a></span> <span class="syn-name"><a href="#SyntaxName_semicolon-pair">semicolon-pair</a></span><sup class="sup">*</sup> <span class="syn-name"><a href="#SyntaxName_module-item">module-item</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_MI">MI</span></i> :</i> <span class="syn-name"><span id="SyntaxName_module-item">module-item</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_definition">definition</a></span>
    | <span class="syn-name"><a href="#SyntaxName_semicolon-pair">semicolon-pair</a></span> <span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_D">D</span></i> :</i> <span class="syn-name"><span id="SyntaxName_definition">definition</span></span>
  ::= <span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_let-definition">let-definition</a></span>
    | <span class="syn-name"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SyntaxName_type-definition">type-definition</a></span>
    | <span class="syn-name"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SyntaxName_exception-definition">exception-definition</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SCP">SCP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_semicolon-pair">semicolon-pair</span></span> ::= <b class="atom">';;'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_interpret">interpret</span></i>[[ <span id="Variable116_UI"><i class="var"><a href="#VariableStem_UI">UI</a></i></span>:<span class="syn-name"><a href="#SyntaxName_unit-implementation">unit-implementation</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_interpret">interpret</a></i>[[  ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_interpret">interpret</a></i>[[ <span id="Variable149_SCP1*"><i class="var"><a href="#VariableStem_SCP">SCP</a><sub class="sub">1</sub><sup class="sup">*</sup></i></span> <span id="Variable154_MIS"><i class="var"><a href="#VariableStem_MIS">MIS</a></i></span> <span id="Variable161_SCP2*"><i class="var"><a href="#VariableStem_SCP">SCP</a><sub class="sub">2</sub><sup class="sup">*</sup></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_handle-thrown">handle-thrown</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
        <span class="name"><a href="../OC-L-12-Core-Library/index.html#Name_ocaml-light-core-library">ocaml-light-core-library</a></span>,
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_accumulate">accumulate</a></span>(<i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <a href="#Variable154_MIS"><i class="var">MIS</i></a> ]])),
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span> ("Uncaught exception: ", <span class="name"><a href="../OC-L-12-Core-Library/index.html#Name_ocaml-light-to-string">ocaml-light-to-string</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, "\n"),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>()))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_define-or-evaluate-items">define-or-evaluate-items</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_module-items">module-items</a></span> ]] : (=><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable268_LD"><i class="var"><a href="../OC-L-07-Expressions/index.html#VariableStem_LD">LD</a></i></span> ]] =
    <span class="name"><a href="../OC-L-12-Core-Library/index.html#Name_ocaml-light-define-and-display">ocaml-light-define-and-display</a></span> <i class="sem-name"><a href="../OC-L-07-Expressions/index.html#SemanticsName_define-values">define-values</a></i>[[ <a href="#Variable268_LD"><i class="var">LD</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable299_TDS"><i class="var"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#VariableStem_TDS">TDS</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SemanticsName_define-types">define-types</a></i>[[ <a href="#Variable299_TDS"><i class="var">TDS</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable328_ED"><i class="var"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#VariableStem_ED">ED</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SemanticsName_define-exception">define-exception</a></i>[[ <a href="#Variable328_ED"><i class="var">ED</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable357_E"><i class="var"><a href="../OC-L-07-Expressions/index.html#VariableStem_E">E</a></i></span> ]] =
    <span class="name"><a href="../OC-L-12-Core-Library/index.html#Name_ocaml-light-evaluate-and-display">ocaml-light-evaluate-and-display</a></span> <i class="sem-name"><a href="../OC-L-07-Expressions/index.html#SemanticsName_evaluate">evaluate</a></i>[[ <a href="#Variable357_E"><i class="var">E</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable388_MIS"><i class="var"><a href="#VariableStem_MIS">MIS</a></i></span> <span id="Variable394_SCP*"><i class="var"><a href="#VariableStem_SCP">SCP</a><sup class="sup">*</sup></i></span> <span id="Variable399_D"><i class="var"><a href="#VariableStem_D">D</a></i></span> ]] =
    ( <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <a href="#Variable388_MIS"><i class="var">MIS</i></a> ]], <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <a href="#Variable399_D"><i class="var">D</i></a> ]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <span id="Variable448_MIS"><i class="var"><a href="#VariableStem_MIS">MIS</a></i></span> <span id="Variable454_SCP*"><i class="var"><a href="#VariableStem_SCP">SCP</a><sup class="sup">*</sup></i></span> <span id="Variable459_SCP"><i class="var"><a href="#VariableStem_SCP">SCP</a></i></span> <span id="Variable464_E"><i class="var"><a href="../OC-L-07-Expressions/index.html#VariableStem_E">E</a></i></span> ]] =
    ( <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <a href="#Variable448_MIS"><i class="var">MIS</i></a> ]], <i class="sem-name"><a href="#SemanticsName_define-or-evaluate-items">define-or-evaluate-items</a></i>[[ <a href="#Variable464_E"><i class="var">E</i></a> ]] )</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[OC-L-11-Module-Implementations.cbs]: OC-L-11-Module-Implementations.cbs 
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
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-11-Module-Implementations/OC-L-11-Module-Implementations.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
