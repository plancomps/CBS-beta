---
title: "LD-Disambiguation"
parent: LD
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [LD-Disambiguation.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_LD">"LD"</span></code></pre></div>
# A Disambiguation {#SectionNumber_A}
# A.1 Lexical constructs {#SectionNumber_A.1}

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i> <i class="keyword">SDF</i>

lexical syntax
  <code><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span></code> = <code><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_keyword">keyword</a></span></code> {reject}

lexical restrictions
  <code><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span></code>  -/- [a-z0-9]
  <code><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_int">int</a></span></code> -/- [0-9]
<i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_start">start</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {prefer}</code></pre></div>


# A.2 Call-by-value lambda-calculus {#SectionNumber_A.2}
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'lambda'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {longest-match}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {left}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'let'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'in'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {longest-match}

context-free priorities
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
> {
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'lambda'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'let'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'in'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
}</code></pre></div>


# A.3 Arithmetic and Boolean expressions {#SectionNumber_A.3}
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {left}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {left}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {left}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {non-assoc}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {right}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'if'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'then'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {longest-match}

context-free priorities
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
>
{left:
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
} >
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
> {
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'lambda'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'let'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'in'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
}</code></pre></div>


# A.4 References and imperatives {#SectionNumber_A.4}
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">':='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {non-assoc}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {right}
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'while'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'do'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> {longest-match}

context-free priorities
{
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'ref'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'!'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
}>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>

context-free priorities
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">':='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
> {
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'lambda'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'while'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'do'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
} >
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'let'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">'in'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span></code></pre></div>


# A.5 Multithreading {#SectionNumber_A.5}
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free priorities
{
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'spawn'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <b class="atom">'join'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span>
}
>
<i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> ::= <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span> <b class="atom">';'</b> <span class="syn-name"><a href="../LD-Start/index.html#SyntaxName_exp">exp</a></span></code></pre></div>



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
[LD-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation/LD-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation/LD-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Disambiguation/LD-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
