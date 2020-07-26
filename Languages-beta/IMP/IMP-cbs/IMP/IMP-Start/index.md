---
layout: default
title: "IMP-Start"
parent: IMP
# grand_parent: Languages-beta

---

[Languages-beta] : [IMP-Start.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code>[ # <a href="../IMP-1/index.html#SectionNumber_1">1</a> Arithmetic expressions
  # <a href="../IMP-2/index.html#SectionNumber_2">2</a> Boolean expressions
  # <a href="../IMP-3/index.html#SectionNumber_3">3</a> Statements and blocks
  # <a href="../IMP-4/index.html#SectionNumber_4">4</a> Programs and variable declarations
  # <a href="../IMP-Disambiguation/index.html#SectionNumber_A">A</a> Disambiguation
]</code></pre></div>


# Top level

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i>:</i> <span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="../IMP-4/index.html#SyntaxName_pgm">pgm</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[_:<span class="syn-name"><a href="#SyntaxName_start">start</a></span>]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable71_Pgm"><i class="var"><a href="../IMP-4/index.html#VariableStem_Pgm">Pgm</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span> 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span> 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
      <i class="sem-name"><a href="../IMP-4/index.html#SemanticsName_run">run</a></i>[[ <a href="#Variable71_Pgm"><i class="var">Pgm</i></a> ]]</code></pre></div>


____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[IMP-Start.cbs]: IMP-Start.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-Start/IMP-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
