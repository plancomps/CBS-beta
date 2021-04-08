---
title: "OC-L-01-Lexical-Conventions"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-01-Lexical-Conventions.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Lexical conventions


## Identifiers

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_I">I</span></i> :</i> <span class="syn-name"><span id="SyntaxName_ident">ident</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_capitalized-ident">capitalized-ident</a></span> | <span class="syn-name"><a href="#SyntaxName_lowercase-ident">lowercase-ident</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CI">CI</span></i> :</i> <span class="syn-name"><span id="SyntaxName_capitalized-ident">capitalized-ident</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_uppercase">uppercase</a></span> ( <span class="syn-name"><a href="#SyntaxName_uppercase">uppercase</a></span> | <span class="syn-name"><a href="#SyntaxName_lowercase">lowercase</a></span> | <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> | <b class="atom">'_'</b> | <b class="atom">'\''</b> )<sup class="sup">*</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_LI">LI</span></i> :</i> <span class="syn-name"><span id="SyntaxName_lowercase-ident">lowercase-ident</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_lowercase">lowercase</a></span> ( <span class="syn-name"><a href="#SyntaxName_uppercase">uppercase</a></span> | <span class="syn-name"><a href="#SyntaxName_lowercase">lowercase</a></span> | <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> | <b class="atom">'_'</b> | <b class="atom">'\''</b> )<sup class="sup">*</sup>
    | <b class="atom">'_'</b>       ( <span class="syn-name"><a href="#SyntaxName_uppercase">uppercase</a></span> | <span class="syn-name"><a href="#SyntaxName_lowercase">lowercase</a></span> | <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> | <b class="atom">'_'</b> | <b class="atom">'\''</b> )<sup class="sup">+</sup>
    // restricted to exclude the keyword '_' used in patterns
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_uppercase">uppercase</span></span> ::= <b class="atom">'A'</b>-<b class="atom">'Z'</b>

  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_lowercase">lowercase</span></span> ::= <b class="atom">'a'</b>-<b class="atom">'z'</b>

  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_decimal">decimal</span></span>   ::= <b class="atom">'0'</b>-<b class="atom">'9'</b></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_ident">ident</a></span> ]] : <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <span id="Variable168_I"><i class="var"><a href="#VariableStem_I">I</a></i></span> ]] = \"<a href="#Variable168_I"><i class="var">I</i></a>\"</code></pre></div>



## Integer literals


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IL">IL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_integer-literal">integer-literal</span></span>
  ::= <b class="atom">'-'</b><sup class="sup">?</sup> _ <span class="syn-name"><a href="#SyntaxName_natural-literal">natural-literal</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_NL">NL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_natural-literal">natural-literal</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> 
    | (<b class="atom">'0x'</b>|<b class="atom">'0X'</b>) <span class="syn-name"><a href="#SyntaxName_hexadecimal-plus">hexadecimal-plus</a></span>
    | (<b class="atom">'0o'</b>|<b class="atom">'0O'</b>) <span class="syn-name"><a href="#SyntaxName_octal-plus">octal-plus</a></span>
    | (<b class="atom">'0b'</b>|<b class="atom">'0B'</b>) <span class="syn-name"><a href="#SyntaxName_binary-plus">binary-plus</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_DP">DP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decimal-plus">decimal-plus</span></span> ::= <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span><sup class="sup">+</sup>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_HP">HP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_hexadecimal-plus">hexadecimal-plus</span></span> ::= ( <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> | <b class="atom">'A'</b>-<b class="atom">'F'</b> | <b class="atom">'a'</b>-<b class="atom">'f'</b> )<sup class="sup">+</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_OP">OP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_octal-plus">octal-plus</span></span> ::= ( <b class="atom">'0'</b>-<b class="atom">'7'</b> )<sup class="sup">+</sup>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_BP">BP</span></i> :</i> <span class="syn-name"><span id="SyntaxName_binary-plus">binary-plus</span></span> ::= ( <b class="atom">'0'</b>|<b class="atom">'1'</b> )<sup class="sup">+</sup></code></pre></div>
  
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_integer-value">integer-value</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_integer-literal">integer-literal</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integers">implemented-integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_integer-value">integer-value</a></i>[[ <b class="atom">'-'</b> <span id="Variable378_NL"><i class="var"><a href="#VariableStem_NL">NL</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_integer-value">integer-value</a></i>[[ <a href="#Variable378_NL"><i class="var">NL</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_integer-value">integer-value</a></i>[[ <span id="Variable415_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> ]] = <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(\"<a href="#Variable415_DP"><i class="var">DP</i></a>\")</code></pre></div>



## Floating-point literals

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FL">FL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_float-literal">float-literal</span></span>
  ::= <b class="atom">'-'</b><sup class="sup">?</sup> _ <span class="syn-name"><a href="#SyntaxName_non-negative-float-literal">non-negative-float-literal</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_NNFL">NNFL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_non-negative-float-literal">non-negative-float-literal</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <b class="atom">'.'</b> _ <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span>
    | <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <b class="atom">'.'</b>
    | <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <b class="atom">'.'</b> _ <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span>
    | <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <b class="atom">'.'</b> _ <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span>
    | <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span> _ <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FE">FE</span></i> :</i> <span class="syn-name"><span id="SyntaxName_float-exponent">float-exponent</span></span>
  ::= (<b class="atom">'e'</b>|<b class="atom">'E'</b>) _ (<b class="atom">'+'</b>|<b class="atom">'-'</b>)<sup class="sup">?</sup> _ <span class="syn-name"><a href="#SyntaxName_decimal-plus">decimal-plus</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  [[ <span id="Variable571_DP1"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">1</sub></i></span> <b class="atom">'.'</b> <span id="Variable579_DP2"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">2</sub></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_non-negative-float-literal">non-negative-float-literal</a></span> = [[ <a href="#Variable571_DP1"><i class="var">DP<sub class="sub">1</sub></i></a> <b class="atom">'.'</b> <a href="#Variable579_DP2"><i class="var">DP<sub class="sub">2</sub></i></a> <b class="atom">'e'</b> <b class="atom">'1'</b> ]]
<i class="keyword">Rule</i>
  [[ <span id="Variable620_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> <b class="atom">'.'</b>      ]] : <span class="syn-name"><a href="#SyntaxName_non-negative-float-literal">non-negative-float-literal</a></span> = [[ <a href="#Variable620_DP"><i class="var">DP</i></a> <b class="atom">'.'</b> <b class="atom">'0'</b> <b class="atom">'e'</b> <b class="atom">'1'</b> ]]
<i class="keyword">Rule</i>
  [[ <span id="Variable657_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> <b class="atom">'.'</b> <span id="Variable664_FE"><i class="var"><a href="#VariableStem_FE">FE</a></i></span>   ]] : <span class="syn-name"><a href="#SyntaxName_non-negative-float-literal">non-negative-float-literal</a></span> = [[ <a href="#Variable657_DP"><i class="var">DP</i></a> <b class="atom">'.'</b> <b class="atom">'0'</b> <a href="#Variable664_FE"><i class="var">FE</i></a>  ]]
<i class="keyword">Rule</i>
  [[ <span id="Variable700_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span>   <span id="Variable705_FE"><i class="var"><a href="#VariableStem_FE">FE</a></i></span>     ]] : <span class="syn-name"><a href="#SyntaxName_non-negative-float-literal">non-negative-float-literal</a></span> = [[ <a href="#Variable700_DP"><i class="var">DP</i></a> <b class="atom">'.'</b> <b class="atom">'0'</b> <a href="#Variable705_FE"><i class="var">FE</i></a>  ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'e'</b> <b class="atom">'+'</b> <span id="Variable744_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span> = [[ <b class="atom">'e'</b> <a href="#Variable744_DP"><i class="var">DP</i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'E'</b> <b class="atom">'+'</b> <span id="Variable775_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span> = [[ <b class="atom">'e'</b> <a href="#Variable775_DP"><i class="var">DP</i></a> ]]
<i class="keyword">Rule</i>
  [[ <b class="atom">'E'</b> <b class="atom">'-'</b> <span id="Variable806_DP"><i class="var"><a href="#VariableStem_DP">DP</a></i></span> ]] : <span class="syn-name"><a href="#SyntaxName_float-exponent">float-exponent</a></span> = [[ <b class="atom">'e'</b> <b class="atom">'-'</b> <a href="#Variable806_DP"><i class="var">DP</i></a> ]]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_float-value">float-value</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_float-literal">float-literal</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats">implemented-floats</a></span></code></pre></div>

  <code><i class="sem-name"><a href="#SemanticsName_float-value">float-value</a></i>[[ _ ]]</code> is unspecified if the literal value is not representable
  in <code><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_floats">floats</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_float-value">float-value</a></i>[[ <b class="atom">'-'</b> <span id="Variable894_NNFL"><i class="var"><a href="#VariableStem_NNFL">NNFL</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-negate">float-negate</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <i class="sem-name"><a href="#SemanticsName_float-value">float-value</a></i>[[ <a href="#Variable894_NNFL"><i class="var">NNFL</i></a>]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_float-value">float-value</a></i>[[ <span id="Variable935_DP1"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">1</sub></i></span> <b class="atom">'.'</b> <span id="Variable943_DP2"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">2</sub></i></span> <b class="atom">'e'</b> <span id="Variable951_DP3"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">3</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_decimal-float">decimal-float</a></span>(
      <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, \"<a href="#Variable935_DP1"><i class="var">DP<sub class="sub">1</sub></i></a>\", \"<a href="#Variable943_DP2"><i class="var">DP<sub class="sub">2</sub></i></a>\", \"<a href="#Variable951_DP3"><i class="var">DP<sub class="sub">3</sub></i></a>\") 
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_float-value">float-value</a></i>[[ <span id="Variable1006_DP1"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">1</sub></i></span> <b class="atom">'.'</b> <span id="Variable1014_DP2"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">2</sub></i></span> <b class="atom">'e'</b> <b class="atom">'-'</b> <span id="Variable1024_DP3"><i class="var"><a href="#VariableStem_DP">DP</a><sub class="sub">3</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_decimal-float">decimal-float</a></span>(
      <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, \"<a href="#Variable1006_DP1"><i class="var">DP<sub class="sub">1</sub></i></a>\", \"<a href="#Variable1014_DP2"><i class="var">DP<sub class="sub">2</sub></i></a>\", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<b class="atom">'-'</b>, \"<a href="#Variable1024_DP3"><i class="var">DP<sub class="sub">3</sub></i></a>\"))</code></pre></div>



## Character literals


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CL">CL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_char-literal">char-literal</span></span> 
  ::= <b class="atom">'\''</b> _ <span class="syn-name"><a href="#SyntaxName_regular-char">regular-char</a></span> _ <b class="atom">'\''</b>
    | <b class="atom">'\''</b> _ <span class="syn-name"><a href="#SyntaxName_escape-sequence">escape-sequence</a></span> _ <b class="atom">'\''</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ES">ES</span></i> :</i> <span class="syn-name"><span id="SyntaxName_escape-sequence">escape-sequence</span></span> 
  ::= <b class="atom">'\\'</b> _ <span class="syn-name"><a href="#SyntaxName_escaped-char">escaped-char</a></span>
    | <b class="atom">'\\'</b> _ <span class="syn-name"><a href="#SyntaxName_escaped-char-code">escaped-char-code</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_RC">RC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_regular-char">regular-char</span></span> 
  ::= ~ ( <b class="atom">'\''</b> | <b class="atom">'\\'</b> )

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_EC">EC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_escaped-char">escaped-char</span></span> 
  ::= <b class="atom">'\\'</b> | <b class="atom">'"'</b> | <b class="atom">'\''</b> | <b class="atom">'n'</b> | <b class="atom">'t'</b> | <b class="atom">'b'</b> | <b class="atom">'r'</b> | <b class="atom">' '</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ECC">ECC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_escaped-char-code">escaped-char-code</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span> <span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_character-value">character-value</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_char-literal">char-literal</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_character-value">character-value</a></i>[[ <b class="atom">'\''</b> <span id="Variable1264_RC"><i class="var"><a href="#VariableStem_RC">RC</a></i></span> <b class="atom">'\''</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_ascii-character">ascii-character</a></span>(\"<a href="#Variable1264_RC"><i class="var">RC</i></a>\")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_character-value">character-value</a></i>[[ <b class="atom">'\''</b> <span id="Variable1300_ES"><i class="var"><a href="#VariableStem_ES">ES</a></i></span> <b class="atom">'\''</b> ]] = <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <a href="#Variable1300_ES"><i class="var">ES</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_capture">capture</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_escape-sequence">escape-sequence</a></span> ]] : <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'\'</b> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_backslash">backslash</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'\''</b> ]] = <b class="atom">'\''</b>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'n'</b> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_line-feed">line-feed</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'t'</b> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_horizontal-tab">horizontal-tab</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'b'</b> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_backspace">backspace</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <b class="atom">'r'</b> ]]  = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_carriage-return">carriage-return</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <b class="atom">'\'</b> <span id="Variable1460_ECC"><i class="var"><a href="#VariableStem_ECC">ECC</a></i></span> ]]  = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-character">implemented-character</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_unicode-character">unicode-character</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(\"<a href="#Variable1460_ECC"><i class="var">ECC</i></a>\")</code></pre></div>



## String literals


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SL">SL</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-literal">string-literal</span></span> 
  ::= <b class="atom">'"'</b> _ <span class="syn-name"><a href="#SyntaxName_string-character-star">string-character-star</a></span> _ <b class="atom">'"'</b>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SCS">SCS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-character-star">string-character-star</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_string-character">string-character</a></span> _ <span class="syn-name"><a href="#SyntaxName_string-character-star">string-character-star</a></span>
    | ( )
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SC">SC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-character">string-character</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_regular-string-char">regular-string-char</a></span>
    | <span class="syn-name"><a href="#SyntaxName_escape-sequence">escape-sequence</a></span>//  | '\\' _ '\n' _ (' '|'\t')*
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_RSC">RSC</span></i> :</i> <span class="syn-name"><span id="SyntaxName_regular-string-char">regular-string-char</span></span>
  ::= ~ (<b class="atom">'"'</b> | <b class="atom">'\\'</b>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_string-value">string-value</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_string-literal">string-literal</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-strings">implemented-strings</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-value">string-value</a></i>[[ <b class="atom">'"'</b> <span id="Variable1621_SCS"><i class="var"><a href="#VariableStem_SCS">SCS</a></i></span> <b class="atom">'"'</b> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-string">implemented-string</a></span> [ <i class="sem-name"><a href="#SemanticsName_string-chars">string-chars</a></i>[[ <a href="#Variable1621_SCS"><i class="var">SCS</i></a> ]] ]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_string-chars">string-chars</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_string-character-star">string-character-star</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span><sup class="sup">*</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-chars">string-chars</a></i>[[  ]] =
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-chars">string-chars</a></i>[[ <span id="Variable1688_SC"><i class="var"><a href="#VariableStem_SC">SC</a></i></span> <span id="Variable1693_SCS"><i class="var"><a href="#VariableStem_SCS">SCS</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_string-capture">string-capture</a></i>[[ <a href="#Variable1688_SC"><i class="var">SC</i></a> ]], <i class="sem-name"><a href="#SemanticsName_string-chars">string-chars</a></i>[[ <a href="#Variable1693_SCS"><i class="var">SCS</i></a> ]]</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_string-capture">string-capture</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_string-character">string-character</a></span> ]] : <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-capture">string-capture</a></i>[[ <span id="Variable1747_RSC"><i class="var"><a href="#VariableStem_RSC">RSC</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_ascii-character">ascii-character</a></span>(\"<a href="#Variable1747_RSC"><i class="var">RSC</i></a>\")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-capture">string-capture</a></i>[[ <span id="Variable1777_ES"><i class="var"><a href="#VariableStem_ES">ES</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_capture">capture</a></i>[[ <a href="#Variable1777_ES"><i class="var">ES</i></a> ]]</code></pre></div>
## Prefix and infix symbols

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
//  infix-symbol
//  ::= ( '=' | '<' | '>' | '@' | '^' | '|'
//      | '&' | '+' | '-' | '*' | '/' | '$' | '%' ) operator-char*
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_PS">PS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_prefix-symbol">prefix-symbol</span></span>    
  ::= <b class="atom">'!'</b>       <span class="syn-name"><a href="#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
    | (<b class="atom">'?'</b>|<b class="atom">'~'</b>) <span class="syn-name"><a href="#SyntaxName_operator-char">operator-char</a></span><sup class="sup">+</sup>  
 
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_operator-char">operator-char</span></span>
  ::= <b class="atom">'!'</b> | <b class="atom">'$'</b> | <b class="atom">'%'</b> | <b class="atom">'&'</b> | <b class="atom">'*'</b> | <b class="atom">'+'</b> | <b class="atom">'-'</b> | <b class="atom">'.'</b> | <b class="atom">'/'</b>
    | <b class="atom">':'</b> | <b class="atom">'<'</b> | <b class="atom">'='</b> | <b class="atom">'>'</b> | <b class="atom">'?'</b> | <b class="atom">'@'</b> | <b class="atom">'^'</b> | <b class="atom">'|'</b> | <b class="atom">'~'</b>

  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_operator-char-not-asterisk">operator-char-not-asterisk</span></span>
  ::= <b class="atom">'!'</b> | <b class="atom">'$'</b> | <b class="atom">'%'</b> | <b class="atom">'&'</b>       | <b class="atom">'+'</b> | <b class="atom">'-'</b> | <b class="atom">'.'</b> | <b class="atom">'/'</b>
    | <b class="atom">':'</b> | <b class="atom">'<'</b> | <b class="atom">'='</b> | <b class="atom">'>'</b> | <b class="atom">'?'</b> | <b class="atom">'@'</b> | <b class="atom">'^'</b> | <b class="atom">'|'</b> | <b class="atom">'~'</b>

  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_operator-char-not-bar">operator-char-not-bar</span></span>
  ::= <b class="atom">'!'</b> | <b class="atom">'$'</b> | <b class="atom">'%'</b> | <b class="atom">'&'</b> | <b class="atom">'*'</b> | <b class="atom">'+'</b> | <b class="atom">'-'</b> | <b class="atom">'.'</b> | <b class="atom">'/'</b>
    | <b class="atom">':'</b> | <b class="atom">'<'</b> | <b class="atom">'='</b> | <b class="atom">'>'</b> | <b class="atom">'?'</b> | <b class="atom">'@'</b> | <b class="atom">'^'</b>       | <b class="atom">'~'</b>

  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_operator-char-not-ampersand">operator-char-not-ampersand</span></span>
  ::= <b class="atom">'!'</b> | <b class="atom">'$'</b> | <b class="atom">'%'</b>       | <b class="atom">'*'</b> | <b class="atom">'+'</b> | <b class="atom">'-'</b> | <b class="atom">'.'</b> | <b class="atom">'/'</b>
    | <b class="atom">':'</b> | <b class="atom">'<'</b> | <b class="atom">'='</b> | <b class="atom">'>'</b> | <b class="atom">'?'</b> | <b class="atom">'@'</b> | <b class="atom">'^'</b> | <b class="atom">'|'</b> | <b class="atom">'~'</b></code></pre></div>



## Keywords

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_keyword">keyword</span></span> 
  ::= <b class="atom">'and'</b>        | <b class="atom">'as'</b>       | <b class="atom">'assert'</b> | <b class="atom">'asr'</b>     | <b class="atom">'begin'</b>   | <b class="atom">'class'</b>
    | <b class="atom">'constraint'</b> | <b class="atom">'do'</b>       | <b class="atom">'done'</b>   | <b class="atom">'downto'</b>  | <b class="atom">'else'</b>    | <b class="atom">'end'</b>
    | <b class="atom">'exception'</b>  | <b class="atom">'external'</b> | <b class="atom">'false'</b>  | <b class="atom">'for'</b>     | <b class="atom">'fun'</b>     | <b class="atom">'function'</b>
    | <b class="atom">'functor'</b>    | <b class="atom">'if'</b>       | <b class="atom">'in'</b>     | <b class="atom">'include'</b> | <b class="atom">'inherit'</b> | <b class="atom">'initializer'</b>
    | <b class="atom">'land'</b>       | <b class="atom">'lazy'</b>     | <b class="atom">'let'</b>    | <b class="atom">'lor'</b>     | <b class="atom">'lsl'</b>     | <b class="atom">'lsr'</b>
    | <b class="atom">'lxor'</b>       | <b class="atom">'match'</b>    | <b class="atom">'method'</b> | <b class="atom">'mod'</b>     | <b class="atom">'module'</b>  | <b class="atom">'mutable'</b> 
    | <b class="atom">'new'</b>        | <b class="atom">'nonrec'</b>   | <b class="atom">'object'</b> | <b class="atom">'of'</b>      | <b class="atom">'open'</b>    | <b class="atom">'or'</b>     
    | <b class="atom">'private'</b>    | <b class="atom">'rec'</b>      | <b class="atom">'sig'</b>    | <b class="atom">'struct'</b>  | <b class="atom">'then'</b>    | <b class="atom">'to'</b>
    | <b class="atom">'true'</b>       | <b class="atom">'try'</b>      | <b class="atom">'type'</b>   | <b class="atom">'val'</b>     | <b class="atom">'virtual'</b> | <b class="atom">'when'</b> 
    | <b class="atom">'while'</b>      | <b class="atom">'with'</b></code></pre></div>



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
[OC-L-01-Lexical-Conventions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-01-Lexical-Conventions/OC-L-01-Lexical-Conventions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-01-Lexical-Conventions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-01-Lexical-Conventions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-01-Lexical-Conventions/OC-L-01-Lexical-Conventions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-01-Lexical-Conventions/OC-L-01-Lexical-Conventions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
