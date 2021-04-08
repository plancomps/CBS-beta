---
title: "OC-L-Start"
parent: OC-L
ancestor: Languages-beta
nav_order: OC-L
---

[Languages-beta] : [OC-L-Start.cbs] \| [PRETTY] \| [PDF]

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
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i>:</i> <span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="../OC-L-11-Module-Implementations/index.html#SyntaxName_unit-implementation">unit-implementation</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_start">start</a></span> ]] : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>|<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable41_UI"><i class="var"><a href="../OC-L-11-Module-Implementations/index.html#VariableStem_UI">UI</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_finalise-throwing">finalise-throwing</a></span>
      <i class="sem-name"><a href="../OC-L-11-Module-Implementations/index.html#SemanticsName_interpret">interpret</a></i>[[ <a href="#Variable41_UI"><i class="var">UI</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code>[
# <a href="../OC-L-01-Lexical-Conventions/index.html#SectionNumber_1">1</a>  Lexical conventions
# <a href="../OC-L-02-Values/index.html#SectionNumber_2">2</a>  Values
# <a href="../OC-L-03-Names/index.html#SectionNumber_3">3</a>  Names
# <a href="../OC-L-04-Type-Expressions/index.html#SectionNumber_4">4</a>  Type expressions
# <a href="../OC-L-05-Constants/index.html#SectionNumber_5">5</a>  Constants
# <a href="../OC-L-06-Patterns/index.html#SectionNumber_6">6</a>  Patterns
# <a href="../OC-L-07-Expressions/index.html#SectionNumber_7">7</a>  Expressions
# <a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SectionNumber_8">8</a>  Type and exception definitions
# <a href="../OC-L-09-Classes/index.html#SectionNumber_9">9</a>  Classes
# <a href="../OC-L-10-Module-Types/index.html#SectionNumber_10">10</a> Module interfaces
# <a href="../OC-L-11-Module-Implementations/index.html#SectionNumber_11">11</a> Module implementations
# <a href="../OC-L-12-Core-Library/index.html#SectionNumber_12">12</a> Core library
# <a href="../OC-L-A-Disambiguation/index.html#SectionNumber_A">A</a>  Disambiguation
]</code></pre></div>



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
[OC-L-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start/OC-L-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start/OC-L-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-Start/OC-L-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
