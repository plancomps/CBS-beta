---
title: "Interacting"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Interacting.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Interacting

#### Output

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_standard-out">standard-out</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_print">print</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name"><span id="Name_standard-out">standard-out</span></span>!(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -> _</code></pre></div>


  This entity represents the sequence of values output by a particular
  transition, where the empty sequence <code>( )</code> represents the lack of output.
  Composition of transitions concatenates their output sequences.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_print">print</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_print">print</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> evaluates the arguments <code><i class="var">X<sup class="sup">*</sup></i></code> and emits the resulting sequence of
  values on the standard-out channel. <code><span class="name"><a href="#Name_print">print</a></span>( )</code> has no effect.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_print">print</a></span>(<span id="Variable139_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -- <span class="ent-name"><a href="#Name_standard-out">standard-out</a></span>!(<a href="#Variable139_V*"><i class="var">V<sup class="sup">*</sup></i></a>) -> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>



#### Input

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_standard-in">standard-in</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_read">read</a></span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ -- <span class="ent-name"><span id="Name_standard-in">standard-in</span></span>?(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>) -> _</code></pre></div>


  This entity represents the sequence of values input by a particular
  transition, where the empty sequence <code>( )</code> represents that no values are
  input. The value <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code> represents the end of the input.
  
  Composition of transitions concatenates their input sequences, except that
  when the first sequence ends with <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>, the second seqeunce has to be
  just <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_read">read</span></span> : =><span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_read">read</a></span></code> inputs a single value from the standard-in channel, and returns it.
  If the end of the input has been reached, <code><span class="name"><a href="#Name_read">read</a></span></code> fails.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_read">read</a></span> -- <span class="ent-name"><a href="#Name_standard-in">standard-in</a></span>?(<span id="Variable312_V"><i class="var">V</i></span>:~<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) -> <a href="#Variable312_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_read">read</a></span> -- <span class="ent-name"><a href="#Name_standard-in">standard-in</a></span>?(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) -> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>



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
[Interacting.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Interacting/Interacting.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Interacting
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Interacting
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Interacting/Interacting.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Interacting/Interacting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
