---
title: "IMPPP-2"
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-2.cbs] \| [PRETTY] \| [PDF]

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
# <span id="SectionNumber_2">2</span> Value expressions

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> 
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_AExp">AExp</span></i> :</i> <span class="syn-name"><span id="SyntaxName_aexp">aexp</span></span> ::= <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_int">int</a></span>
               |  <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_string">string</a></span>
               |  <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_id">id</a></span> 
               |  <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> 
               |  <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span>
               |  <b class="atom">'('</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> <b class="atom">')'</b>
               |  <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span>
               |  <b class="atom">'++'</b> <span class="syn-name"><a href="../IMPPP-1/index.html#SyntaxName_id">id</a></span>
               |  <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b>
               |  <b class="atom">'spawn'</b> <span class="syn-name"><a href="../IMPPP-4/index.html#SyntaxName_block">block</a></span></code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_aexp-values">aexp-values</span></span> ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span> | <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_integer-add-or-string-append">integer-add-or-string-append</span></span>(_:<span class="name"><a href="#Name_aexp-values">aexp-values</a></span>, _:<span class="name"><a href="#Name_aexp-values">aexp-values</a></span>) :
    => <span class="name"><a href="#Name_aexp-values">aexp-values</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_integer-add-or-string-append">integer-add-or-string-append</a></span>(<span id="Variable134_N1"><i class="var">N<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable143_N2"><i class="var">N<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<a href="#Variable134_N1"><i class="var">N<sub class="sub">1</sub></i></a>, <a href="#Variable143_N2"><i class="var">N<sub class="sub">2</sub></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_integer-add-or-string-append">integer-add-or-string-append</a></span>(<span id="Variable183_S1"><i class="var">S<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>, <span id="Variable192_S2"><i class="var">S<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<a href="#Variable183_S1"><i class="var">S<sub class="sub">1</sub></i></a>, <a href="#Variable192_S2"><i class="var">S<sub class="sub">2</sub></i></a>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>       
  <i class="sem-name"><span id="SemanticsName_eval-arith">eval-arith</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> ]] : =><span class="name"><a href="#Name_aexp-values">aexp-values</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable244_N"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_N">N</a></i></span> ]] = <i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_int-val">int-val</a></i>[[ <a href="#Variable244_N"><i class="var">N</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable273_S"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_S">S</a></i></span> ]] = <i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_string-val">string-val</a></i>[[ <a href="#Variable273_S"><i class="var">S</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable302_I"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_I">I</a></i></span> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable302_I"><i class="var">I</i></a> ]]))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable346_AExp1"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">1</sub></i></span> <b class="atom">'+'</b> <span id="Variable354_AExp2"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="#Name_integer-add-or-string-append">integer-add-or-string-append</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable346_AExp1"><i class="var">AExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable354_AExp2"><i class="var">AExp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable408_AExp1"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">1</sub></i></span> <b class="atom">'/'</b> <span id="Variable416_AExp2"><i class="var"><a href="#VariableStem_AExp">AExp</a><sub class="sub">2</sub></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable408_AExp1"><i class="var">AExp<sub class="sub">1</sub></i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable416_AExp2"><i class="var">AExp<sub class="sub">2</sub></i></a> ]])
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <b class="atom">'('</b> <span id="Variable473_AExp"><i class="var"><a href="#VariableStem_AExp">AExp</a></i></span> <b class="atom">')'</b> ]] = <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable473_AExp"><i class="var">AExp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <span id="Variable506_I"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_I">I</a></i></span> <b class="atom">'='</b> <span id="Variable513_AExp"><i class="var"><a href="#VariableStem_AExp">AExp</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable513_AExp"><i class="var">AExp</i></a> ]],
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable506_I"><i class="var">I</i></a> ]]), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                 <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <b class="atom">'++'</b> <span id="Variable593_I"><i class="var"><a href="../IMPPP-1/index.html#VariableStem_I">I</a></i></span> ]] = 
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_give">give</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable593_I"><i class="var">I</i></a> ]])), 1),
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_bound">bound</a></span>(<i class="sem-name"><a href="../IMPPP-1/index.html#SemanticsName_id">id</a></i>[[ <a href="#Variable593_I"><i class="var">I</i></a> ]]), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>),
                 <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <b class="atom">'read'</b> <b class="atom">'('</b> <b class="atom">')'</b> ]] = <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <b class="atom">'spawn'</b> <span id="Variable718_Block"><i class="var"><a href="../IMPPP-4/index.html#VariableStem_Block">Block</a></i></span> ]] =
    <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Normal/Indexing/index.html#Name_allocate-index">allocate-index</a></span>(
      <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-activate">thread-activate</a></span> <span class="name"><a href="../../../../../Unstable-Funcons-beta/Computations/Threads/Multithreading/index.html#Name_thread-joinable">thread-joinable</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Thunks/index.html#Name_thunk">thunk</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_closure">closure</a></span> <i class="sem-name"><a href="../IMPPP-4/index.html#SemanticsName_execute">execute</a></i>[[ <a href="#Variable718_Block"><i class="var">Block</i></a> ]])</code></pre></div>


## Value expression sequences

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i>
  <i class="keyword"></i><i class="var"><i class="var"><span id="VariableStem_AExps">AExps</span></i>:</i> <span class="syn-name"><span id="SyntaxName_aexps">aexps</span></span> ::= <span class="syn-name"><a href="#SyntaxName_aexp">aexp</a></span> (<b class="atom">','</b> <span class="syn-name"><a href="#SyntaxName_aexps">aexps</a></span>)<sup class="sup">?</sup></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Semantics</i>
  <i class="sem-name"><span id="SemanticsName_eval-arith-seq">eval-arith-seq</span></i>[[ _:<span class="syn-name"><a href="#SyntaxName_aexps">aexps</a></span> ]] : (=><span class="name"><a href="#Name_aexp-values">aexp-values</a></span>)<sup class="sup">+</sup>
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith-seq">eval-arith-seq</a></i>[[ <span id="Variable833_AExp"><i class="var"><a href="#VariableStem_AExp">AExp</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable833_AExp"><i class="var">AExp</i></a> ]]
<i class="keyword">Rule</i>
  <i class="sem-name"><a href="#SemanticsName_eval-arith-seq">eval-arith-seq</a></i>[[ <span id="Variable862_AExp"><i class="var"><a href="#VariableStem_AExp">AExp</a></i></span> <b class="atom">','</b> <span id="Variable869_AExps"><i class="var"><a href="#VariableStem_AExps">AExps</a></i></span> ]] = <i class="sem-name"><a href="#SemanticsName_eval-arith">eval-arith</a></i>[[ <a href="#Variable862_AExp"><i class="var">AExp</i></a> ]], <i class="sem-name"><a href="#SemanticsName_eval-arith-seq">eval-arith-seq</a></i>[[ <a href="#Variable862_AExp"><i class="var">AExp</i></a> ]]</code></pre></div>


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
[IMPPP-2.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2/IMPPP-2.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2/IMPPP-2.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-2/IMPPP-2.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
