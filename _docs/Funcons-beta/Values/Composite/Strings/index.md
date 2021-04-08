---
title: "Strings"
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Strings.cbs] \| [PRETTY] \| [PDF]


----
### Strings

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>   <span class="name"><a href="#Name_strings">strings</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_string">string</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_string-append">string-append</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_to-string">to-string</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_strings">strings</span></span> ~> <span class="name"><a href="../Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="../../Primitive/Characters/index.html#Name_characters">characters</a></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_string">string</span></span>(<span id="Variable48_C*"><i class="var">C<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../Primitive/Characters/index.html#Name_characters">characters</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_strings">strings</a></span>
    ~> [<a href="#Variable48_C*"><i class="var">C<sup class="sup">*</sup></i></a>]</code></pre></div>


  Literal strings are written <code>"C_1...C_n"</code>.
  A double-quote or backslash needs to be escaped: <code>"...\\\"..."</code>, <code>"...\\\\..."</code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_string-append">string-append</span></span>(<span id="Variable120_S*"><i class="var">S<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_strings">strings</a></span><sup class="sup">*</sup>) : =><span class="name"><a href="#Name_strings">strings</a></span>
    ~> <span class="name"><a href="../Lists/index.html#Name_list-append">list-append</a></span>(<a href="#Variable120_S*"><i class="var">S<sup class="sup">*</sup></i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_to-string">to-string</span></span>(_:<span class="name"><a href="../../Value-Types/index.html#Name_ground-values">ground-values</a></span>) : =><span class="name"><a href="#Name_strings">strings</a></span></code></pre></div>

  The strings returned by <code><span class="name"><a href="#Name_to-string">to-string</a></span>(<i class="var">GV</i>)</code> are unspecified, except that when
  <code><i class="var">GV</i></code> is already a string, it is returned unchanged.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Assert</i>
  <span class="name"><a href="#Name_to-string">to-string</a></span>(<i class="var">S</i>:<span class="name"><a href="#Name_strings">strings</a></span>) == <i class="var">S</i></code></pre></div>



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
[Strings.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Strings/Strings.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Strings
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Strings
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Strings/Strings.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Strings/Strings.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
