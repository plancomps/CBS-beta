---
title: "MiniJava-Start"
parent: MiniJava
ancestor: Languages-beta
nav_order: MiniJava
---

[Languages-beta] : [MiniJava-Start.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_MiniJava">"MiniJava"</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
<i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i>:</i>
  <span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_program">program</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[ <span id="Variable25_START"><i class="var"><a href="#VariableStem_START">START</a></i></span>:<span class="syn-name"><a href="#SyntaxName_start">start</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable39_P"><i class="var"><a href="../MiniJava-Dynamics/index.html#VariableStem_P">P</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
      <i class="sem-name"><a href="../MiniJava-Dynamics/index.html#SemanticsName_run">run</a></i>[[<a href="#Variable39_P"><i class="var">P</i></a>]]</code></pre></div>

Contents:
<div class="highlighter-rouge"><pre class="highlight"><code>[
# <a href="../MiniJava-Dynamics/index.html#SectionNumber_1">1</a> Programs
# <a href="../MiniJava-Dynamics/index.html#SectionNumber_2">2</a> Declarations
# <a href="../MiniJava-Dynamics/index.html#SectionNumber_3">3</a> Statements
# <a href="../MiniJava-Dynamics/index.html#SectionNumber_4">4</a> Expressions
# <a href="../MiniJava-Dynamics/index.html#SectionNumber_5">5</a> Lexemes
# <a href="../MiniJava-Syntax/index.html#SectionNumber_6">6</a> Disambiguation
]</code></pre></div>


The section numbers above are links into other files.



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
[MiniJava-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start/MiniJava-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start/MiniJava-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Start/MiniJava-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
