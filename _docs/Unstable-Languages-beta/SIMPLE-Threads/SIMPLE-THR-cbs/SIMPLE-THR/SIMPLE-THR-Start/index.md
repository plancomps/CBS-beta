---
title: "SIMPLE-THR-Start"
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta
nav_order: SIMPLE-THR
---

[Unstable-Languages-beta] : [SIMPLE-THR-Start.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SIMPLE-THR">"SIMPLE-THR"</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i> :</i> <span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="../SIMPLE-THR-5-Programs/index.html#SyntaxName_pgm">pgm</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[_:<span class="syn-name"><a href="#SyntaxName_start">start</a></span>]] : =><span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable38_Pgm"><i class="var"><a href="../SIMPLE-THR-5-Programs/index.html#VariableStem_Pgm">Pgm</a></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Memos/index.html#Name_initialise-memos">initialise-memos</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_finalise-failing">finalise-failing</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_finalise-throwing">finalise-throwing</a></span>
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_multithread">multithread</a></span> 
        <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Abnormal/Postponing/index.html#Name_postpone-after-effect">postpone-after-effect</a></span> <i class="sem-name"><a href="../SIMPLE-THR-5-Programs/index.html#SemanticsName_run">run</a></i>[[ <a href="#Variable38_Pgm"><i class="var">Pgm</i></a> ]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code>[
  # <a href="../SIMPLE-THR-1-Lexical/index.html#SectionNumber_1">1</a> Lexical Syntax
  # <a href="../SIMPLE-THR-2-Expressions/index.html#SectionNumber_2">2</a> Expressions
  # <a href="../SIMPLE-THR-3-Statements/index.html#SectionNumber_3">3</a> Statements
  # <a href="../SIMPLE-THR-4-Declarations/index.html#SectionNumber_4">4</a> Declarations
  # <a href="../SIMPLE-THR-5-Programs/index.html#SectionNumber_5">5</a> Programs
  # <a href="../SIMPLE-THR-A-Disambiguation/index.html#SectionNumber_A">A</a> Disambiguation
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
[SIMPLE-THR-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start/SIMPLE-THR-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start/SIMPLE-THR-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-Start/SIMPLE-THR-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
