---
title: "SL-1-Lexemes"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-1-Lexemes.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SL">"SL"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Lexemes

## Identifiers

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Id">Id</span></i> :</i> <span class="syn-name"><span id="SyntaxName_id">id</span></span> ::= (<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'A'</b>-<b class="atom">'Z'</b>) (<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">*</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[ <span id="Variable57_Id"><i class="var"><a href="#VariableStem_Id">Id</a></i></span>:<span class="syn-name"><a href="#SyntaxName_id">id</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <span id="Variable71_Id"><i class="var"><a href="#VariableStem_Id">Id</a></i></span> ]] = \"<a href="#Variable71_Id"><i class="var">Id</i></a>\"</code></pre></div>


## Numerals


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Int">Int</span></i> :</i> <span class="syn-name"><span id="SyntaxName_int">int</span></span> ::= <b class="atom">'-'</b><sup class="sup">?</sup> _ <span class="syn-name"><a href="#SyntaxName_nat">nat</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Nat">Nat</span></i> :</i> <span class="syn-name"><span id="SyntaxName_nat">nat</span></span> ::= (<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">+</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_int-val">int-val</span></i>[[ <span id="Variable152_Int"><i class="var"><a href="#VariableStem_Int">Int</a></i></span>:<span class="syn-name"><a href="#SyntaxName_int">int</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <b class="atom">'-'</b> <span id="Variable168_Nat"><i class="var"><a href="#VariableStem_Nat">Nat</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span> <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[<a href="#Variable168_Nat"><i class="var">Nat</i></a>]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <span id="Variable200_Nat"><i class="var"><a href="#VariableStem_Nat">Nat</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span> \"<a href="#Variable200_Nat"><i class="var">Nat</i></a>\"</code></pre></div>


## Strings


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_String">String</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string">string</span></span> ::= <b class="atom">'"'</b> _ <span class="syn-name"><a href="#SyntaxName_string-chars">string-chars</a></span> _ <b class="atom">'"'</b>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_StringChars">StringChars</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-chars">string-chars</span></span> ::= <span class="syn-name"><a href="#SyntaxName_string-char">string-char</a></span><sup class="sup">*</sup>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_string-char">string-char</span></span> ::= ~( <b class="atom">'"'</b> | <b class="atom">'\n'</b> )</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_string-val">string-val</span></i>[[ <span id="Variable298_String"><i class="var"><a href="#VariableStem_String">String</a></i></span>:<span class="syn-name"><a href="#SyntaxName_string">string</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-val">string-val</a></i>[[ <b class="atom">'"'</b> <span id="Variable314_StringChars"><i class="var"><a href="#VariableStem_StringChars">StringChars</a></i></span> <b class="atom">'"'</b> ]] = \"<a href="#Variable314_StringChars"><i class="var">StringChars</i></a>\"</code></pre></div>



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
[SL-1-Lexemes.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes/SL-1-Lexemes.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes/SL-1-Lexemes.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-1-Lexemes/SL-1-Lexemes.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
