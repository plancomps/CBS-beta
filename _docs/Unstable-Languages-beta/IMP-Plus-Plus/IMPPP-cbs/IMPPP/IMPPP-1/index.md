---
title: "IMPPP-1"
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-1.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMPPP">"IMPPP"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Values

## Integers


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_N">N</span></i> :</i> <span class="syn-name"><span id="SyntaxName_int">int</span></span> ::= <b class="atom">'-'</b><sup class="sup">?</sup>_<span class="syn-name"><a href="#SyntaxName_decimal">decimal</a></span>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_D">D</span></i> :</i> <span class="syn-name"><span id="SyntaxName_decimal">decimal</span></span> ::= (<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">+</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_int-val">int-val</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_int">int</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <span id="Variable75_D"><i class="var"><a href="#VariableStem_D">D</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(\"<a href="#Variable75_D"><i class="var">D</i></a>\")
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <b class="atom">'-'</b> <span id="Variable107_D"><i class="var"><a href="#VariableStem_D">D</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<i class="sem-name"><a href="#SemanticsName_int-val">int-val</a></i>[[ <a href="#Variable107_D"><i class="var">D</i></a> ]])</code></pre></div>


## Strings


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_S">S</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string">string</span></span> ::= <b class="atom">'"'</b>_<span class="syn-name"><a href="#SyntaxName_string-chars">string-chars</a></span>_<b class="atom">'"'</b>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_SCS">SCS</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-chars">string-chars</span></span> ::= (~<b class="atom">'"'</b>)<sup class="sup">*</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_string-val">string-val</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_string">string</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_string-val">string-val</a></i>[[ <b class="atom">'"'</b> <span id="Variable220_SCS"><i class="var"><a href="#VariableStem_SCS">SCS</a></i></span> <b class="atom">'"'</b> ]] = \"<a href="#Variable220_SCS"><i class="var">SCS</i></a>\"</code></pre></div>


## Identifiers

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_I">I</span></i> :</i> <span class="syn-name"><span id="SyntaxName_id">id</span></span> ::= (<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'_'</b>) (<b class="atom">'0'</b>-<b class="atom">'9'</b>|<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'_'</b>)<sup class="sup">*</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_id">id</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <span id="Variable320_I"><i class="var"><a href="#VariableStem_I">I</a></i></span> ]] = \"<a href="#Variable320_I"><i class="var">I</i></a>\"</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_keyword">keyword</span></span> ::= <b class="atom">'else'</b>  | <b class="atom">'false'</b> | <b class="atom">'if'</b>    | <b class="atom">'halt'</b> | <b class="atom">'join'</b> 
            | <b class="atom">'print'</b> | <b class="atom">'read'</b>  | <b class="atom">'spawn'</b> | <b class="atom">'true'</b> | <b class="atom">'while'</b></code></pre></div>



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
[IMPPP-1.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1/IMPPP-1.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1/IMPPP-1.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-1/IMPPP-1.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
