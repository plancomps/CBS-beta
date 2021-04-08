---
title: "OC-L-05-Constants"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-05-Constants.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_5">5</span> Constants

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CNST">CNST</span></i> :</i> <span class="syn-name"><span id="SyntaxName_constant">constant</span></span> 
  ::= <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_integer-literal">integer-literal</a></span> 
    | <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_float-literal">float-literal</a></span> 
    | <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_char-literal">char-literal</a></span> 
    | <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_string-literal">string-literal</a></span> 
    | <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_constr">constr</a></span>
    | <b class="atom">'false'</b>  
    | <b class="atom">'true'</b>  
    | <b class="atom">'('</b> <b class="atom">')'</b>  
    | <b class="atom">'begin'</b> <b class="atom">'end'</b>  
    | <b class="atom">'['</b> <b class="atom">']'</b>  
    | <b class="atom">'[|'</b> <b class="atom">'|]'</b></code></pre></div>
  
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_value">value</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_constant">constant</a></span> ]] : =><span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-values">implemented-values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <span id="Variable83_IL"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_IL">IL</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SemanticsName_integer-value">integer-value</a></i>[[ <a href="#Variable83_IL"><i class="var">IL</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <span id="Variable112_FL"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_FL">FL</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SemanticsName_float-value">float-value</a></i>[[ <a href="#Variable112_FL"><i class="var">FL</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <span id="Variable141_CL"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_CL">CL</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SemanticsName_character-value">character-value</a></i>[[ <a href="#Variable141_CL"><i class="var">CL</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <span id="Variable170_SL"><i class="var"><a href="../OC-L-01-Lexical-Conventions/index.html#VariableStem_SL">SL</a></i></span> ]] = <i class="sem-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SemanticsName_string-value">string-value</a></i>[[ <a href="#Variable170_SL"><i class="var">SL</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <span id="Variable199_CSTR"><i class="var"><a href="../OC-L-03-Names/index.html#VariableStem_CSTR">CSTR</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../OC-L-03-Names/index.html#SemanticsName_constr-name">constr-name</a></i>[[ <a href="#Variable199_CSTR"><i class="var">CSTR</i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'false'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'true'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'begin'</b> <b class="atom">'end'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'['</b> <b class="atom">']'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_value">value</a></i>[[ <b class="atom">'[|'</b> <b class="atom">'|]'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>( )</code></pre></div>

  

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
[OC-L-05-Constants.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-05-Constants/OC-L-05-Constants.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-05-Constants
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-05-Constants
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-05-Constants/OC-L-05-Constants.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-05-Constants/OC-L-05-Constants.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
