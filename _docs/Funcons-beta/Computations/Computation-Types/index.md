---
title: "Computation-Types"
parent: Computations
ancestor: Funcons-beta

---

[Funcons-beta] : [Computation-Types.cbs] \| [PRETTY] \| [PDF]


----
## Computation Types

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_computation-types">computation-types</span></span> : <span class="name"><a href="../../Values/Value-Types/index.html#Name_types">types</a></span></code></pre></div>

  For any value type <code><i class="var">T</i></code>, the term <code>=><i class="var">T</i></code> is the type of computations that
  compute values of type <code><i class="var">T</i></code> whenever they terminate normally.
  
  For any subtypes <code><i class="var">S</i></code>, <code><i class="var">T</i></code> of <code><span class="name"><a href="../../Values/Value-Types/index.html#Name_values">values</a></span></code>, <code><i class="var">S</i>=><i class="var">T</i></code> is the type of computations
  that compute values of type <code><i class="var">T</i></code> whenever they terminate normally, and
  either do not refer at all to the <code><span class="name"><a href="../Normal/Giving/index.html#Name_given">given</a></span></code> entity, or require the <code><span class="name"><a href="../Normal/Giving/index.html#Name_given">given</a></span></code>
  entity to have type <code><i class="var">S</i></code>.



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
[Computation-Types.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Computation-Types/Computation-Types.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Computation-Types
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Computation-Types
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Computation-Types/Computation-Types.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Computation-Types/Computation-Types.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
