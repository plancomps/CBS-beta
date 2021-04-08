---
title: "SL-4-Definitions"
parent: SL
ancestor: Languages-beta

---

[Languages-beta] : [SL-4-Definitions.cbs] \| [PRETTY] \| [PDF]

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
# <span id="SectionNumber_4">4</span> Function definitions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_FunDef">FunDef</span></i> :</i> <span class="syn-name"><span id="SyntaxName_fun-def">fun-def</span></span> ::= <b class="atom">'function'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_id-list">id-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b> <span class="syn-name"><a href="../SL-3-Statements/index.html#SyntaxName_block">block</a></span></code></pre></div>
   
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_declare">declare</span></i>[[ <span id="Variable46_FunDef*"><i class="var"><a href="#VariableStem_FunDef">FunDef</a><sup class="sup">*</sup></i></span>:<span class="syn-name"><a href="#SyntaxName_fun-def">fun-def</a></span><sup class="sup">*</sup> ]] : => <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <b class="atom">'function'</b> <span id="Variable64_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">'('</b> <span id="Variable72_IdList?"><i class="var"><a href="#VariableStem_IdList">IdList</a><sup class="sup">?</sup></i></span> <b class="atom">')'</b> <span id="Variable79_Block"><i class="var"><a href="../SL-3-Statements/index.html#VariableStem_Block">Block</a></i></span> ]] =
    { <i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable64_Id"><i class="var">Id</i></a>]] |->
      <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_scope">scope</a></span>(<span class="name"><a href="../SL-Funcons/index.html#Name_initialise-local-variables">initialise-local-variables</a></span>,
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
            <i class="sem-name"><a href="#SemanticsName_pass-list">pass-list</a></i>[[<a href="#Variable72_IdList?"><i class="var">IdList<sup class="sup">?</sup></i></a>]],
            <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Returning/index.html#Name_handle-return">handle-return</a></span>(<i class="sem-name"><a href="../SL-3-Statements/index.html#SemanticsName_exec">exec</a></i>[[<a href="#Variable79_Block"><i class="var">Block</i></a>]]))) }
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>( )
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[ <span id="Variable189_FunDef"><i class="var"><a href="#VariableStem_FunDef">FunDef</a></i></span> <span id="Variable195_FunDef+"><i class="var"><a href="#VariableStem_FunDef">FunDef</a><sup class="sup">+</sup></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_collateral">collateral</a></span>(<i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[<a href="#Variable189_FunDef"><i class="var">FunDef</i></a>]], <i class="sem-name"><a href="#SemanticsName_declare">declare</a></i>[[<a href="#Variable195_FunDef+"><i class="var">FunDef<sup class="sup">+</sup></i></a>]])</code></pre></div>


## Parameter lists

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_IdList">IdList</span></i> :</i> <span class="syn-name"><span id="SyntaxName_id-list">id-list</span></span> ::= <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_id-list">id-list</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_pass-list">pass-list</span></i>[[ <span id="Variable285_IdList"><i class="var"><a href="#VariableStem_IdList">IdList</a></i></span>:<span class="syn-name"><a href="#SyntaxName_id-list">id-list</a></span><sup class="sup">?</sup> ]] : <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) => <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_pass-list">pass-list</a></i>[[ ]] = <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_pass-list">pass-list</a></i>[[ <span id="Variable323_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> ]] =
    <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-initialise">local-variable-initialise</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable323_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_pass-list">pass-list</a></i>[[ <span id="Variable366_Id"><i class="var"><a href="../SL-1-Lexemes/index.html#VariableStem_Id">Id</a></i></span> <b class="atom">','</b> <span id="Variable373_IdList"><i class="var"><a href="#VariableStem_IdList">IdList</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
      <span class="name"><a href="../SL-Funcons/index.html#Name_local-variable-initialise">local-variable-initialise</a></span>(<i class="sem-name"><a href="../SL-1-Lexemes/index.html#SemanticsName_id">id</a></i>[[<a href="#Variable366_Id"><i class="var">Id</i></a>]], <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>, <i class="sem-name"><a href="#SemanticsName_pass-list">pass-list</a></i>[[<a href="#Variable373_IdList"><i class="var">IdList</i></a>]]))</code></pre></div>



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
[SL-4-Definitions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions/SL-4-Definitions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions/SL-4-Definitions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-4-Definitions/SL-4-Definitions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
