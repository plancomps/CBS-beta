---
title: "OC-L-04-Type-Expressions"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-04-Type-Expressions.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_4">4</span> Type expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_T">T</span></i> :</i> <span class="syn-name"><span id="SyntaxName_typexpr">typexpr</span></span>
  ::= <b class="atom">'\''</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span>
    | <b class="atom">'_'</b>
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span> <b class="atom">')'</b>
    | <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span> <b class="atom">'->'</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span>
    | <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span> <span class="syn-name"><a href="#SyntaxName_star-typexpr">star-typexpr</a></span><sup class="sup">+</sup>
    | <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_typeconstr">typeconstr</a></span>
    | <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_typeconstr">typeconstr</a></span>
    | <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span> <span class="syn-name"><a href="#SyntaxName_comma-typexpr">comma-typexpr</a></span><sup class="sup">+</sup> <b class="atom">')'</b> <span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_typeconstr">typeconstr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_ST">ST</span></i> :</i> <span class="syn-name"><span id="SyntaxName_star-typexpr">star-typexpr</span></span> ::= <b class="atom">'*'</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_CT">CT</span></i> :</i> <span class="syn-name"><span id="SyntaxName_comma-typexpr">comma-typexpr</span></span> ::= <b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span>

  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_PT">PT</span></i> :</i> <span class="syn-name"><span id="SyntaxName_poly-typexpr">poly-typexpr</span></span> 
  ::= <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span>  
    | ( <b class="atom">'\''</b> <span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span> )<sup class="sup">+</sup> <b class="atom">'.'</b> <span class="syn-name"><a href="#SyntaxName_typexpr">typexpr</a></span></code></pre></div>
 



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
[OC-L-04-Type-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
