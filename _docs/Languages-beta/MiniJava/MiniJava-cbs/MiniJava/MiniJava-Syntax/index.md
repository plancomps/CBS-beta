---
title: "MiniJava-Syntax"
parent: MiniJava
ancestor: Languages-beta

---

[Languages-beta] : [MiniJava-Syntax.cbs] \| [PRETTY] \| [PDF]


----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword"></i>
Language <span id="Language_MiniJava">"MiniJava"</span></code></pre></div>

  \[The MiniJava Reference Manual]: 
    <http://www.cambridge.org/us/features/052182060X/mjreference/mjreference.html>
  
  \[Modern Compiler Implementation in Java: the MiniJava Project]:
    <http://www.cambridge.org/us/features/052182060X/>
  
  The grammar used here is mostly a transliteration of the one provided at:
  <http://www.cambridge.org/us/features/052182060X/grammar.html>
  (which differs in trivial ways from the one in the cited reference manual).
  
  The rest of this file gives an overview of the MiniJava syntax. It is mostly
  in the form of a comment with embedded productions. The nonterminal symbols
  are hyperlinks to their actual specifications; similarly, section numbers
  (such as <a href="../MiniJava-Dynamics/index.html#SectionNumber_#1">#1</a> below) link to the corresponding specification section.

<a href="../MiniJava-Dynamics/index.html#SectionNumber_#1">#1</a> Programs

Syntax
<code><i class="keyword"></i><i class="var"><i class="var">START</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Start/index.html#SyntaxName_start">start</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_program">program</a></span>
<i class="keyword"></i><i class="var"><i class="var">P</i>:</i>  
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_program">program</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_main-class">main-class</a></span> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_class-declaration">class-declaration</a></span><sup class="sup">*</sup>
<i class="keyword"></i><i class="var"><i class="var">MC</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_main-class">main-class</a></span> ::=
    <b class="atom">'class'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'{'</b> 
      <b class="atom">'public'</b> <b class="atom">'static'</b> <b class="atom">'void'</b> <b class="atom">'main'</b> <b class="atom">'('</b> <b class="atom">'String'</b> <b class="atom">'['</b> <b class="atom">']'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">')'</b> <b class="atom">'{'</b>
        <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span>
      <b class="atom">'}'</b> 
    <b class="atom">'}'</b></code>
<a href="../MiniJava-Dynamics/index.html#SectionNumber_#2">#2</a> Declarations
<code><i class="keyword"></i><i class="var"><i class="var">CD</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_class-declaration">class-declaration</a></span> ::=
    <b class="atom">'class'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> ( <b class="atom">'extends'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> )<sup class="sup">?</sup> <b class="atom">'{'</b> 
      <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_var-declaration">var-declaration</a></span><sup class="sup">*</sup>
      <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_method-declaration">method-declaration</a></span><sup class="sup">*</sup>
    <b class="atom">'}'</b>
<i class="keyword"></i><i class="var"><i class="var">VD</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_var-declaration">var-declaration</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_type">type</a></span> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">';'</b>
<i class="keyword"></i><i class="var"><i class="var">MD</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_method-declaration">method-declaration</a></span> ::=
    <b class="atom">'public'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_type">type</a></span> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_formal-list">formal-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b> <b class="atom">'{'</b> 
      <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_var-declaration">var-declaration</a></span><sup class="sup">*</sup> 
      <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span><sup class="sup">*</sup> 
      <b class="atom">'return'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">';'</b> 
    <b class="atom">'}'</b>
<i class="keyword"></i><i class="var"><i class="var">T</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_type">type</a></span> ::= <b class="atom">'int'</b> <b class="atom">'['</b> <b class="atom">']'</b>
         | <b class="atom">'boolean'</b>
         | <b class="atom">'int'</b>
         | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span>
<i class="keyword"></i><i class="var"><i class="var">FL</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_formal-list">formal-list</a></span> ::= 
    <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_type">type</a></span> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> ( <b class="atom">','</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_formal-list">formal-list</a></span> )<sup class="sup">?</sup></code>
<a href="../MiniJava-Dynamics/index.html#SectionNumber_#3">#3</a> Statements
<code><i class="keyword"></i><i class="var"><i class="var">S</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span> ::= <b class="atom">'{'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span><sup class="sup">*</sup> <b class="atom">'}'</b>
              | <b class="atom">'if'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span> <b class="atom">'else'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span>
              | <b class="atom">'while'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_statement">statement</a></span>
              | <b class="atom">'System'</b><b class="atom">'.'</b><b class="atom">'out'</b><b class="atom">'.'</b><b class="atom">'println'</b> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">')'</b> <b class="atom">';'</b>
              | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'='</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">';'</b>
              | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">']'</b> <b class="atom">'='</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">';'</b></code>
<a href="../MiniJava-Dynamics/index.html#SectionNumber_#4">#4</a> Expressions
<code><i class="keyword"></i><i class="var"><i class="var">E</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">']'</b>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'.'</b> <b class="atom">'length'</b>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression-list">expression-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_integer-literal">integer-literal</a></span>
               | <b class="atom">'true'</b>
               | <b class="atom">'false'</b>
               | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span>
               | <b class="atom">'this'</b>
               | <b class="atom">'new'</b> <b class="atom">'int'</b> <b class="atom">'['</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">']'</b>
               | <b class="atom">'new'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <b class="atom">')'</b>
               | <b class="atom">'!'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span>
               | <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">')'</b>
<i class="keyword"></i><i class="var"><i class="var">EL</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression-list">expression-list</a></span> ::=
    <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ( <b class="atom">','</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression-list">expression-list</a></span> )<sup class="sup">?</sup></code>
<a href="../MiniJava-Dynamics/index.html#SectionNumber_#5">#5</a> Lexemes

Lexis
<code><i class="keyword"></i><i class="var"><i class="var">ID</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_letter">letter</a></span> ( <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_letter">letter</a></span> | <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_digit">digit</a></span> | <b class="atom">'_'</b> )<sup class="sup">*</sup>
<i class="keyword"></i><i class="var"><i class="var">IL</i>:</i>
  <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_integer-literal">integer-literal</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_digit">digit</a></span><sup class="sup">+</sup>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_letter">letter</a></span> ::= <b class="atom">'a'</b>-<b class="atom">'z'</b> | <b class="atom">'A'</b>-<b class="atom">'Z'</b>
  
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_digit">digit</a></span> ::= <b class="atom">'0'</b>-<b class="atom">'9'</b></code>


# <span id="SectionNumber_6">6</span> Disambiguation


  The mixture of CBS and SDF below specifies how MiniJava texts are to
  be disambiguated by parsers generated from the above grammar.
  
  The specified rules are adequate to disambiguate all the example programs
  provided at http://www.cambridge.org/us/features/052182060X/#progs

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Syntax</i> <i class="keyword">SDF</i>

context-free syntax
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code> {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code> {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code> {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code> {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code> {left}

context-free priorities
{
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'.'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span> <b class="atom">'('</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression-list">expression-list</a></span><sup class="sup">?</sup> <b class="atom">')'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'['</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">']'</b></code>
} <0> >
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <b class="atom">'!'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'*'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
> {
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'+'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'-'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
} >
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'<'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> ::= <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span> <b class="atom">'&&'</b> <span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_expression">expression</a></span></code>
<i class="keyword">Lexis</i> <i class="keyword">SDF</i>

lexical restrictions
<code><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span></code>      -/- [a-zA-Z0-9\_]
<code><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_integer-literal">integer-literal</a></span></code> -/- [0-9]

lexical syntax
<code><span class="syn-name"><a href="../MiniJava-Dynamics/index.html#SyntaxName_identifier">identifier</a></span></code> = <code><span class="syn-name"><a href="#SyntaxName_reserved-id">reserved-id</a></span></code> {reject}
<i class="keyword">Lexis</i>
  <i class="keyword"></i><i class="var"></i><span class="syn-name"><span id="SyntaxName_reserved-id">reserved-id</span></span>::= <b class="atom">'String'</b>
               | <b class="atom">'System'</b>
               | <b class="atom">'boolean'</b>
               | <b class="atom">'class'</b>
               | <b class="atom">'else'</b>
               | <b class="atom">'extends'</b>
               | <b class="atom">'false'</b>
               | <b class="atom">'if'</b>
               | <b class="atom">'int'</b>
               | <b class="atom">'length'</b>
               | <b class="atom">'main'</b>
               | <b class="atom">'new'</b>
               | <b class="atom">'out'</b>
               | <b class="atom">'println'</b>
               | <b class="atom">'public'</b>
               | <b class="atom">'return'</b>
               | <b class="atom">'static'</b>
               | <b class="atom">'this'</b>
               | <b class="atom">'true'</b>
               | <b class="atom">'void'</b></code></pre></div>



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
[MiniJava-Syntax.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax/MiniJava-Syntax.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax/MiniJava-Syntax.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Syntax/MiniJava-Syntax.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
