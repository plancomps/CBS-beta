---
layout: default
title: "OC-L-06-Patterns"
parent: OC-L
grand_parent: Languages-beta
nav_order: OC-L-06-Patterns
---

[Languages-beta] : [OC-L-06-Patterns.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_6">6</span> Patterns

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_P">P</span></i> :</i> <span class="syn-name"><span id="SyntaxName_pattern">pattern</span></span> 
  ::= <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_value-name">value-name</a></span> 
    |  <b class="atom">'_'</b>
    | <span class="syn-name"><a href="../OC-L-05-Constants/index.html#SyntaxName_constant">constant</a></span>
    | <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <b class="atom">'as'</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_value-name">value-name</a></span>
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <b class="atom">')'</b>
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <b class="atom">':'</b> <span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> <b class="atom">')'</b>
    | <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <b class="atom">'|'</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span>
    | <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_constr">constr</a></span> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span>
    | <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_comma-pattern">comma-pattern</a></span><sup class="sup">+</sup>
    | <b class="atom">'{'</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_field">field</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_semic-field-pattern">semic-field-pattern</a></span><sup class="sup">*</sup> <b class="atom">';'</b><sup class="sup">?</sup> <b class="atom">'}'</b>
    | <b class="atom">'['</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_semic-pattern">semic-pattern</a></span><sup class="sup">*</sup> <b class="atom">';'</b><sup class="sup">?</sup> <b class="atom">']'</b>
    | <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <b class="atom">'::'</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CP">CP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_comma-pattern">comma-pattern</span></span> ::= <b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SP">SP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_semic-pattern">semic-pattern</span></span> ::= <b class="atom">';'</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SFP">SFP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_semic-field-pattern">semic-field-pattern</span></span> ::= <b class="atom">';'</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_field">field</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <b class="atom">'('</b> <span id="Variable192_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> = [[ <a href="#Variable192_P"><i class="var">P</i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'('</b> <span id="Variable220_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <b class="atom">':'</b> <span id="Variable227_T"><i class="var"><a href="../OC-L-04-Type-Expressions/index.html#VariableStem_T">T</a></i></span> <b class="atom">')'</b> ]] : <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> = [[ <a href="#Variable220_P"><i class="var">P</i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'{'</b> <span id="Variable257_F"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_F">F</a></i></span> <b class="atom">'='</b> <span id="Variable264_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <span id="Variable270_SFP*"><i class="var"><a href="#VariableStem_SFP">SFP</a><sup class="sup">*</sup></i></span> <b class="atom">';'</b> <b class="atom">'}'</b> ]] : <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> = [[ <b class="atom">'{'</b> <a href="#Variable257_F"><i class="var">F</i></a> <b class="atom">'='</b> <a href="#Variable264_P"><i class="var">P</i></a> <a href="#Variable270_SFP*"><i class="var">SFP<sup class="sup">*</sup></i></a> <b class="atom">'}'</b> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'['</b> <span id="Variable326_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <span id="Variable332_SP*"><i class="var"><a href="#VariableStem_SP">SP</a><sup class="sup">*</sup></i></span> <b class="atom">';'</b> <b class="atom">']'</b> ]] : <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> = [[ <b class="atom">'['</b> <a href="#Variable326_P"><i class="var">P</i></a> <a href="#Variable332_SP*"><i class="var">SP<sup class="sup">*</sup></i></a> <b class="atom">']'</b> ]]</code></pre></div>


## Pattern evaluation


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate-pattern">evaluate-pattern</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable399_VN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_VN">VN</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-bind">pattern-bind</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_value-name">value-name</a></i>[[ <a href="#Variable399_VN"><i class="var">VN</i></a> ]]) 
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <b class="atom">'_'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-any">pattern-any</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable451_CNST"><i class="var"><a href="../OC-L-05-Constants/index.html#VariableStem_CNST">CNST</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-05-Constants/index.html#SemanticsName_value">value</a></i>[[ <a href="#Variable451_CNST"><i class="var">CNST</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable480_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <b class="atom">'as'</b> <span id="Variable487_VN"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_VN">VN</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-unite">pattern-unite</a></span>(<i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable480_P"><i class="var">P</i></a> ]], <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-bind">pattern-bind</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_value-name">value-name</a></i>[[ <a href="#Variable487_VN"><i class="var">VN</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable546_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">'|'</b> <span id="Variable554_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern-else">pattern-else</a></span>(<i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable546_P1"><i class="var">P<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable554_P2"><i class="var">P<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable607_CSTR"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CSTR">CSTR</a></i></span> <span id="Variable612_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable607_CSTR"><i class="var">CSTR</i></a> ]], <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable612_P"><i class="var">P</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable663_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">','</b> <span id="Variable671_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> <span id="Variable677_CP*"><i class="var"><a href="#VariableStem_CP">CP</a><sup class="sup">*</sup></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( <i class="sem-name"><a href="#SemanticsName_evaluate-comma-pattern-sequence">evaluate-comma-pattern-sequence</a></i>[[ <a href="#Variable663_P1"><i class="var">P<sub class="sub">1</sub></i></a> <b class="atom">','</b> <a href="#Variable671_P2"><i class="var">P<sub class="sub">2</sub></i></a> <a href="#Variable677_CP*"><i class="var">CP<sup class="sup">*</sup></i></a> ]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <b class="atom">'{'</b> <span id="Variable736_F"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_F">F</a></i></span> <b class="atom">'='</b> <span id="Variable743_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <span id="Variable749_SFP*"><i class="var"><a href="#VariableStem_SFP">SFP</a><sup class="sup">*</sup></i></span> <b class="atom">'}'</b> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match-loosely">match-loosely</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record">record</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-unite">map-unite</a></span>(<i class="sem-name"><a href="#SemanticsName_evaluate-field-pattern-sequence">evaluate-field-pattern-sequence</a></i>[[ <a href="#Variable736_F"><i class="var">F</i></a> <b class="atom">'='</b> <a href="#Variable743_P"><i class="var">P</i></a> <a href="#Variable749_SFP*"><i class="var">SFP<sup class="sup">*</sup></i></a> ]]))))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <b class="atom">'['</b> <span id="Variable836_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> <span id="Variable842_SP*"><i class="var"><a href="#VariableStem_SP">SP</a><sup class="sup">*</sup></i></span> <b class="atom">']'</b> ]] =
    [ <i class="sem-name"><a href="#SemanticsName_evaluate-semic-pattern-sequence">evaluate-semic-pattern-sequence</a></i>[[ <a href="#Variable836_P"><i class="var">P</i></a> <a href="#Variable842_SP*"><i class="var">SP<sup class="sup">*</sup></i></a> ]] ]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <span id="Variable889_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">'::'</b> <span id="Variable897_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_pattern">pattern</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>,[]),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_fail">fail</a></span>,
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable889_P1"><i class="var">P<sub class="sub">1</sub></i></a> ]]),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_match">match</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable897_P2"><i class="var">P<sub class="sub">2</sub></i></a> ]]))))</code></pre></div>


## Pattern sequence evaluation


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate-comma-pattern-sequence">evaluate-comma-pattern-sequence</span></i>[[ _:(<span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_comma-pattern">comma-pattern</a></span><sup class="sup">*</sup>) ]] : 
                                                   (=><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-comma-pattern-sequence">evaluate-comma-pattern-sequence</a></i>[[ <span id="Variable1065_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">','</b> <span id="Variable1073_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> <span id="Variable1079_CP*"><i class="var"><a href="#VariableStem_CP">CP</a><sup class="sup">*</sup></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1065_P1"><i class="var">P<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_evaluate-comma-pattern-sequence">evaluate-comma-pattern-sequence</a></i>[[ <a href="#Variable1073_P2"><i class="var">P<sub class="sub">2</sub></i></a> <a href="#Variable1079_CP*"><i class="var">CP<sup class="sup">*</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-comma-pattern-sequence">evaluate-comma-pattern-sequence</a></i>[[ <span id="Variable1133_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1133_P"><i class="var">P</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate-semic-pattern-sequence">evaluate-semic-pattern-sequence</span></i>[[ _:(<span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_semic-pattern">semic-pattern</a></span><sup class="sup">*</sup>) ]] :
                                                    (=><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-semic-pattern-sequence">evaluate-semic-pattern-sequence</a></i>[[ <span id="Variable1190_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable1198_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> <span id="Variable1204_SP*"><i class="var"><a href="#VariableStem_SP">SP</a><sup class="sup">*</sup></i></span> ]] =
    <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1190_P1"><i class="var">P<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_evaluate-semic-pattern-sequence">evaluate-semic-pattern-sequence</a></i>[[ <a href="#Variable1198_P2"><i class="var">P<sub class="sub">2</sub></i></a> <a href="#Variable1204_SP*"><i class="var">SP<sup class="sup">*</sup></i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-semic-pattern-sequence">evaluate-semic-pattern-sequence</a></i>[[ <span id="Variable1258_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1258_P"><i class="var">P</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_evaluate-field-pattern-sequence">evaluate-field-pattern-sequence</span></i>[[ _:(<span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_field">field</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="#SyntaxName_semic-field-pattern">semic-field-pattern</a></span><sup class="sup">*</sup>) ]] : 
                                          =>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>,<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Patterns/index.html#Name_patterns">patterns</a></span>))<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-field-pattern-sequence">evaluate-field-pattern-sequence</a></i>[[ <span id="Variable1331_F1"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_F">F</a><sub class="sub">1</sub></i></span> <b class="atom">'='</b> <span id="Variable1339_P1"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">1</sub></i></span> <b class="atom">';'</b> <span id="Variable1347_F2"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_F">F</a><sub class="sub">2</sub></i></span> <b class="atom">'='</b> <span id="Variable1355_P2"><i class="var"><a href="#VariableStem_P">P</a><sub class="sub">2</sub></i></span> <span id="Variable1361_SFP*"><i class="var"><a href="#VariableStem_SFP">SFP</a><sup class="sup">*</sup></i></span> ]] =
    ( { <i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_field-name">field-name</a></i>[[ <a href="#Variable1331_F1"><i class="var">F<sub class="sub">1</sub></i></a> ]] |-> <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1339_P1"><i class="var">P<sub class="sub">1</sub></i></a> ]] },
      <i class="sem-name"><a href="#SemanticsName_evaluate-field-pattern-sequence">evaluate-field-pattern-sequence</a></i>[[ <a href="#Variable1347_F2"><i class="var">F<sub class="sub">2</sub></i></a> <b class="atom">'='</b> <a href="#Variable1355_P2"><i class="var">P<sub class="sub">2</sub></i></a> <a href="#Variable1361_SFP*"><i class="var">SFP<sup class="sup">*</sup></i></a> ]] )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_evaluate-field-pattern-sequence">evaluate-field-pattern-sequence</a></i>[[ <span id="Variable1452_F"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_F">F</a></i></span> <b class="atom">'='</b> <span id="Variable1459_P"><i class="var"><a href="#VariableStem_P">P</a></i></span> ]] =
    { <i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_field-name">field-name</a></i>[[ <a href="#Variable1452_F"><i class="var">F</i></a> ]] |-> <i class="sem-name"><a href="#SemanticsName_evaluate-pattern">evaluate-pattern</a></i>[[ <a href="#Variable1459_P"><i class="var">P</i></a> ]] }</code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[OC-L-06-Patterns.cbs]: OC-L-06-Patterns.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-06-Patterns/OC-L-06-Patterns.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
