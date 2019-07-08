---
layout: default
title: SL-Disambiguation
nav_exclude: true
---

[Languages-beta] : [SL-Disambiguation.cbs]
-----------------------------

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_SL">"SL"</span></code></pre></div>
# <span id="SectionNumber_A">A</span> Disambiguation


  Specification of disambiguation for parsing currently requires direct use of
  the corresponding SDF3 notation in comments, along with embedded productions
  in CBS notation. The well-formedness of the SDF3 notation is not checked.
  A future version of CBS is to include appropriate constructs for specifying
  disambiguation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'/'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'=='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'!='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'>='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'>'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>          {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'||'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>         {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>            {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>   {right}

context-free priorities

  {left: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr-list">expr-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b></code>  
  }
  > 
  {right: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'!'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
  }
  > 
  {left: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'*'</b>  <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
  }
  > 
  {non-assoc: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'=='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'<='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'<'</b>  <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'!='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'>='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'>'</b>  <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
  }
  > 
  {left: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'+'</b>  <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'-'</b>  <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'||'</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
  }
  > 
  {right: 
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
    <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../SL-2-Expressions/index.html#SyntaxName_expr">expr</a></span></code>
  }
<i class="keyword">Lexis</i> <i class="keyword">SDF</i>

lexical syntax
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "function" {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "true"     {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "false"    {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "return"   {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "break"    {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "continue" {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "while"    {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "if"       {reject}
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code> = "else"     {reject}

lexical restrictions
// Ensure greedy matching for lexicals
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_nat">nat</a></span></code> -/- [0-9]
<code><span class="syn-name"><a href="../SL-1-Lexemes/index.html#SyntaxName_id">id</a></span></code>  -/- [a-zA-Z0-9\_]</code></pre></div>



____

From the [PLanCompS Project], 2019 | [CBS-beta issues...] | [Suggest an improvement...]

[SL-Disambiguation.cbs]: SL-Disambiguation.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
 "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: http://plancomps.org
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-Disambiguation/SL-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
