---
title: "OC-L-03-Names"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-03-Names.cbs] \| [PRETTY] \| [PDF]

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
# <span id="SectionNumber_3">3</span> Names

## Naming objects

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_VN">VN</span></i> :</i> <span class="syn-name"><span id="SyntaxName_value-name">value-name</span></span>
  ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_lowercase-ident">lowercase-ident</a></span>  
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_operator-name">operator-name</a></span> <b class="atom">')'</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ON">ON</span></i> :</i> <span class="syn-name"><span id="SyntaxName_operator-name">operator-name</span></span> ::= <span class="syn-name"><a href="#SyntaxName_prefix-op">prefix-op</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op">infix-op</a></span>  
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_PO">PO</span></i> :</i> <span class="syn-name"><span id="SyntaxName_prefix-op">prefix-op</span></span> ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_prefix-symbol">prefix-symbol</a></span></code></pre></div>
 // added
 

    // infix-op ::= infix-symbol  
    //            | '*' | '+' | '-' | '-.' | '=' | '<' | '>' | '||' | '&' | '&&'  
    //            | '!=' | 'or' | ':=' | 'mod'  
    //            | 'land' | 'lor' | 'lxor' | 'lsl' | 'lsr' | 'asr'  



### Infix operator precedence


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO">IO</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op">infix-op</span></span>
  ::= <span class="syn-name"><a href="#SyntaxName_infix-op-1">infix-op-1</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-2">infix-op-2</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-3">infix-op-3</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-4">infix-op-4</a></span>
    | <span class="syn-name"><a href="#SyntaxName_infix-op-5">infix-op-5</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-6">infix-op-6</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-7">infix-op-7</a></span> | <span class="syn-name"><a href="#SyntaxName_infix-op-8">infix-op-8</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-1">IO-1</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-1">infix-op-1</span></span>
  ::= <b class="atom">'**'</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup> | <b class="atom">'lsl'</b> | <b class="atom">'lsr'</b> | <b class="atom">'asr'</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-2">IO-2</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-2">infix-op-2</span></span>
  ::= <b class="atom">'*'</b>
    | <b class="atom">'*'</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char-not-asterisk">operator-char-not-asterisk</a></span> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
    | ( <b class="atom">'/'</b> | <b class="atom">'%'</b> ) <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
    | <b class="atom">'mod'</b> | <b class="atom">'land'</b> | <b class="atom">'lor'</b> | <b class="atom">'lxor'</b> 
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-3">IO-3</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-3">infix-op-3</span></span>
  ::= ( <b class="atom">'+'</b> | <b class="atom">'-'</b> ) <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-4">IO-4</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-4">infix-op-4</span></span>
  ::= ( <b class="atom">'@'</b> | <b class="atom">'^'</b> ) <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-5">IO-5</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-5">infix-op-5</span></span>
  ::= ( <b class="atom">'='</b> | <b class="atom">'<'</b> | <b class="atom">'>'</b> | <b class="atom">'$'</b> ) <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
    | <b class="atom">'|'</b> ( <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char-not-bar">operator-char-not-bar</a></span> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup> )<sup class="sup">?</sup>
    | <b class="atom">'||'</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">+</sup>
    | <b class="atom">'&'</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char-not-ampersand">operator-char-not-ampersand</a></span> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">*</sup>
    | <b class="atom">'&&'</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_operator-char">operator-char</a></span><sup class="sup">+</sup>
    | <b class="atom">'!='</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-6">IO-6</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-6">infix-op-6</span></span>
  ::= <b class="atom">'&'</b> | <b class="atom">'&&'</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-7">IO-7</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-7">infix-op-7</span></span>
  ::= <b class="atom">'or'</b> | <b class="atom">'||'</b>
  
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IO-8">IO-8</span></i> :</i> <span class="syn-name"><span id="SyntaxName_infix-op-8">infix-op-8</span></span>
  ::= <b class="atom">':='</b>  
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CN">CN</span></i> :</i>  <span class="syn-name"><span id="SyntaxName_constr-name">constr-name</span></span>     ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_capitalized-ident">capitalized-ident</a></span>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TCN">TCN</span></i> :</i> <span class="syn-name"><span id="SyntaxName_typeconstr-name">typeconstr-name</span></span> ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_lowercase-ident">lowercase-ident</a></span>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FN">FN</span></i> :</i>  <span class="syn-name"><span id="SyntaxName_field-name">field-name</span></span>      ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_lowercase-ident">lowercase-ident</a></span>  

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_MN">MN</span></i> :</i>  <span class="syn-name"><span id="SyntaxName_module-name">module-name</span></span>     ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_capitalized-ident">capitalized-ident</a></span></code></pre></div>
  


## Referring to named objects

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_VP">VP</span></i> :</i>    <span class="syn-name"><span id="SyntaxName_value-path">value-path</span></span> ::= <span class="syn-name"><a href="#SyntaxName_value-name">value-name</a></span>
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CSTR">CSTR</span></i> :</i>  <span class="syn-name"><span id="SyntaxName_constr">constr</span></span>     ::= <span class="syn-name"><a href="#SyntaxName_constr-name">constr-name</a></span>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_TCSTR">TCSTR</span></i> :</i> <span class="syn-name"><span id="SyntaxName_typeconstr">typeconstr</span></span> ::= <span class="syn-name"><a href="#SyntaxName_typeconstr-name">typeconstr-name</a></span>  
 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_F">F</span></i> :</i>     <span class="syn-name"><span id="SyntaxName_field">field</span></span>      ::= <span class="syn-name"><a href="#SyntaxName_field-name">field-name</a></span></code></pre></div>
  
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_value-name">value-name</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_value-path">value-path</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <span id="Variable550_LI"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_LI">LI</a></i></span> ]] = \"<a href="#Variable550_LI"><i class="var">LI</i></a>\"
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable575_PS"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_PS">PS</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable575_PS"><i class="var">PS</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable617_IO-1"><i class="var"><a href="#VariableStem_IO-1">IO-1</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable617_IO-1"><i class="var">IO-1</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable659_IO-2"><i class="var"><a href="#VariableStem_IO-2">IO-2</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable659_IO-2"><i class="var">IO-2</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable701_IO-3"><i class="var"><a href="#VariableStem_IO-3">IO-3</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable701_IO-3"><i class="var">IO-3</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable743_IO-4"><i class="var"><a href="#VariableStem_IO-4">IO-4</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable743_IO-4"><i class="var">IO-4</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable785_IO-5"><i class="var"><a href="#VariableStem_IO-5">IO-5</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable785_IO-5"><i class="var">IO-5</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable827_IO-6"><i class="var"><a href="#VariableStem_IO-6">IO-6</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable827_IO-6"><i class="var">IO-6</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable869_IO-7"><i class="var"><a href="#VariableStem_IO-7">IO-7</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable869_IO-7"><i class="var">IO-7</i></a>\", ")")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value-name">value-name</a></i>[[ <b class="atom">'('</b> <span id="Variable911_IO-8"><i class="var"><a href="#VariableStem_IO-8">IO-8</a></i></span> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("(", \"<a href="#Variable911_IO-8"><i class="var">IO-8</i></a>\", ")")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_constr-name">constr-name</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_constr">constr</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_constr-name">constr-name</a></i>[[ <span id="Variable964_CN"><i class="var"><a href="#VariableStem_CN">CN</a></i></span> ]] = \"<a href="#Variable964_CN"><i class="var">CN</i></a>\"</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_typeconstr-name">typeconstr-name</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_typeconstr">typeconstr</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_typeconstr-name">typeconstr-name</a></i>[[ <span id="Variable1000_TCN"><i class="var"><a href="#VariableStem_TCN">TCN</a></i></span> ]] = \"<a href="#Variable1000_TCN"><i class="var">TCN</i></a>\"</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_field-name">field-name</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_field">field</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_field-name">field-name</a></i>[[ <span id="Variable1036_FN"><i class="var"><a href="#VariableStem_FN">FN</a></i></span> ]] = \"<a href="#Variable1036_FN"><i class="var">FN</i></a>\"</code></pre></div>



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
[OC-L-03-Names.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names/OC-L-03-Names.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names/OC-L-03-Names.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-03-Names/OC-L-03-Names.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
