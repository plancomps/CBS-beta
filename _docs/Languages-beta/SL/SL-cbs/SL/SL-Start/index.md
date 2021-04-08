---
title: "SL-Start"
parent: SL
ancestor: Languages-beta
nav_order: SL
---

[Languages-beta] : [SL-Start.cbs] \| [PRETTY] \| [PDF]

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
<div class="highlighter-rouge"><pre class="highlight"><code>[
# <a href="../SL-1-Lexemes/index.html#SectionNumber_1">1</a> Lexemes
# <a href="../SL-2-Expressions/index.html#SectionNumber_2">2</a> Expressions
# <a href="../SL-3-Statements/index.html#SectionNumber_3">3</a> Statements
# <a href="../SL-4-Definitions/index.html#SectionNumber_4">4</a> Function definitions
# <a href="../SL-Disambiguation/index.html#SectionNumber_A">A</a> Disambiguation
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_START">START</span></i> :</i> <span class="syn-name"><span id="SyntaxName_start">start</span></span> ::= <span class="syn-name"><a href="#SyntaxName_program">program</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_start">start</span></i>[[ <span id="Variable56_START"><i class="var"><a href="#VariableStem_START">START</a></i></span>:<span class="syn-name"><a href="#SyntaxName_start">start</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_start">start</a></i>[[ <span id="Variable70_Program"><i class="var"><a href="#VariableStem_Program">Program</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_initialise-binding">initialise-binding</a></span> 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_initialise-storing">initialise-storing</a></span> 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_initialise-giving">initialise-giving</a></span>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Abrupting/index.html#Name_finalise-abrupting">finalise-abrupting</a></span>
      <i class="sem-name"><a href="#SemanticsName_run">run</a></i>[[<a href="#Variable70_Program"><i class="var">Program</i></a>]]</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_Program">Program</span></i> :</i> <span class="syn-name"><span id="SyntaxName_program">program</span></span> ::= <span class="syn-name"><a href="../SL-4-Definitions/index.html#SyntaxName_fun-def">fun-def</a></span><sup class="sup">*</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_run">run</span></i>[[ <span id="Variable127_Program"><i class="var"><a href="#VariableStem_Program">Program</a></i></span>:<span class="syn-name"><a href="#SyntaxName_program">program</a></span> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_run">run</a></i>[[ <span id="Variable142_FunDef*"><i class="var"><a href="../SL-4-Definitions/index.html#VariableStem_FunDef">FunDef</a><sup class="sup">*</sup></i></span> ]] =
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(
      <span class="name"><a href="../SL-Funcons/index.html#Name_initialise-global-bindings">initialise-global-bindings</a></span>,
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../SL-Funcons/index.html#Name_override-global-bindings">override-global-bindings</a></span>(<i class="sem-name"><a href="../SL-4-Definitions/index.html#SemanticsName_declare">declare</a></i>[[<a href="#Variable142_FunDef*"><i class="var">FunDef<sup class="sup">*</sup></i></a>]]),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_fun">fun</a></span> <span class="name"><a href="../SL-Funcons/index.html#Name_global-bound">global-bound</a></span> "main", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_nil">nil</a></span>)))</code></pre></div>



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
[SL-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Start/SL-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Start
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Start/SL-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-Start/SL-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
