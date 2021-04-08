---
title: "IMP-Disambiguation"
parent: IMP
ancestor: Languages-beta

---

[Languages-beta] : [IMP-Disambiguation.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_IMP">"IMP"</span></code></pre></div>
# <span id="SectionNumber_A">A</span> Disambiguation


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i> <i class="keyword">SDF</i>

lexical syntax 
  <code><span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_id">id</a></span></code> = <code><span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_keyword">keyword</a></span></code> {reject}
lexical restrictions
  <code><span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_id">id</a></span></code> -/- [A-Za-z0-9]
<i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_aexp">aexp</a></span> ::= <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_aexp">aexp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../IMP-1/index.html#SyntaxName_aexp">aexp</a></span></code>  {assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../IMP-2/index.html#SyntaxName_bexp">bexp</a></span> ::= <span class="syn-name"><a href="../IMP-2/index.html#SyntaxName_bexp">bexp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../IMP-2/index.html#SyntaxName_bexp">bexp</a></span></code> {assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../IMP-3/index.html#SyntaxName_stmt">stmt</a></span> ::= <span class="syn-name"><a href="../IMP-3/index.html#SyntaxName_stmt">stmt</a></span> <span class="syn-name"><a href="../IMP-3/index.html#SyntaxName_stmt">stmt</a></span></code>      {right}</code></pre></div>


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
[IMP-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation/IMP-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation/IMP-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-Disambiguation/IMP-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
