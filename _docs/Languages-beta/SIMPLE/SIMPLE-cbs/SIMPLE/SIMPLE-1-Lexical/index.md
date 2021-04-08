---
title: "SIMPLE-1-Lexical"
parent: SIMPLE
ancestor: Languages-beta

---

[Languages-beta] : [SIMPLE-1-Lexical.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE">"SIMPLE"</span></code></pre></div>
# <span id="SectionNumber_1">1</span> Lexical Syntax


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_V">V</span></i> :</i> <span class="syn-name"><span id="SyntaxName_value">value</span></span> ::= <span class="syn-name"><a href="#SyntaxName_bool">bool</a></span> | <span class="syn-name"><a href="#SyntaxName_int">int</a></span> | <span class="syn-name"><a href="#SyntaxName_string">string</a></span>

      <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_bool">bool</span></span> ::= <b class="atom">'false'</b> | <b class="atom">'true'</b>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Z">Z</span></i> :</i> <span class="syn-name"><span id="SyntaxName_int">int</span></span> ::= (<b class="atom">'0'</b>-<b class="atom">'9'</b>)<sup class="sup">+</sup>
<i class="keyword">Syntax</i>
      <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_string">string</span></span> ::= <b class="atom">'"'</b>_<span class="syn-name"><a href="#SyntaxName_string-chars">string-chars</a></span>_<b class="atom">'"'</b>
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_S">S</span></i> :</i> <span class="syn-name"><span id="SyntaxName_string-chars">string-chars</span></span> ::= (~<b class="atom">'"'</b>)<sup class="sup">*</sup></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_val">val</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_value">value</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>
# <span id="SectionNumber_1.1">1.1</span> Booleans


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_val">val</a></i>[[ <b class="atom">'false'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_val">val</a></i>[[ <b class="atom">'true'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span></code></pre></div>


# <span id="SectionNumber_1.2">1.2</span> Integers

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_val">val</a></i>[[ <span id="Variable177_Z"><i class="var"><a href="#VariableStem_Z">Z</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(\"<a href="#Variable177_Z"><i class="var">Z</i></a>\")</code></pre></div>


# <span id="SectionNumber_1.3">1.3</span> Strings

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_val">val</a></i>[[ <b class="atom">'"'</b> <span id="Variable219_S"><i class="var"><a href="#VariableStem_S">S</a></i></span> <b class="atom">'"'</b> ]] = \"<a href="#Variable219_S"><i class="var">S</i></a>\"</code></pre></div>


# <span id="SectionNumber_1.4">1.4</span> Identifiers

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Id">Id</span></i> :</i> <span class="syn-name"><span id="SyntaxName_id">id</span></span> ::= (<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'_'</b>) (<b class="atom">'0'</b>-<b class="atom">'9'</b>|<b class="atom">'A'</b>-<b class="atom">'Z'</b>|<b class="atom">'a'</b>-<b class="atom">'z'</b>|<b class="atom">'_'</b>)<sup class="sup">*</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_id">id</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_id">id</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_ids">ids</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_id">id</a></i>[[ <span id="Variable316_Id"><i class="var"><a href="#VariableStem_Id">Id</a></i></span> ]] = \"<a href="#Variable316_Id"><i class="var">Id</i></a>\"</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_keyword">keyword</span></span> ::= <b class="atom">'false'</b> | <b class="atom">'true'</b> | <b class="atom">'var'</b> | <b class="atom">'function'</b> | <b class="atom">'sizeOf'</b> | <b class="atom">'read'</b>
           | <b class="atom">'spawn'</b> |  <b class="atom">'if'</b> | <b class="atom">'else'</b> | <b class="atom">'while'</b> | <b class="atom">'for'</b> | <b class="atom">'print'</b> | <b class="atom">'return'</b>
           | <b class="atom">'try'</b> | <b class="atom">'catch'</b> | <b class="atom">'throw'</b> | <b class="atom">'join'</b> | <b class="atom">'acquire'</b> | <b class="atom">'release'</b>
           | <b class="atom">'rendezvous'</b></code></pre></div>




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
[SIMPLE-1-Lexical.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical/SIMPLE-1-Lexical.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical/SIMPLE-1-Lexical.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-1-Lexical/SIMPLE-1-Lexical.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
