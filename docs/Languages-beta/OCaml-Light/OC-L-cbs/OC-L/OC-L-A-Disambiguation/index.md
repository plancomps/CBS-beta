---
layout: default
title: "OC-L-A-Disambiguation"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-A-Disambiguation.cbs]

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_A">A</span> Disambiguation


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Lexis</i> <i class="keyword">SDF</i>

// 1 Lexical conventions
  
// Comments

lexical syntax

  LAYOUT = LEX-block-comment
  LEX-block-comment = "(*" LEX-comment-part* "*)" 
  
  LEX-comment-part = ~[\(\)\*]
  LEX-comment-part = LEX-asterisk
  LEX-comment-part = LEX-left-paren
  LEX-comment-part = LEX-right-paren
  LEX-comment-part = LEX-block-comment
  
  LEX-asterisk    = [\*]
  LEX-left-paren  = [\(] 
  LEX-right-paren = [\)]
 
lexical restrictions

  LEX-asterisk   -/- [\)]
  LEX-left-paren -/- [\*]

context-free restrictions

  LAYOUT? -/- [\(].[\*]

// Identifiers

lexical syntax
       
  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span></code> =             <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_keyword">keyword</a></span></code>    {reject}
  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_lowercase-ident">lowercase-ident</a></span></code> =   <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_keyword">keyword</a></span></code>    {reject}
  
lexical restrictions

  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_ident">ident</a></span></code> 
  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_lowercase-ident">lowercase-ident</a></span></code> 
  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_capitalized-ident">capitalized-ident</a></span></code> -/- [A-Za-z0-9\_\']
<i class="keyword">Syntax</i> <i class="keyword">SDF</i>

// Integer literals

context-free restrictions

  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_integer-literal">integer-literal</a></span></code>     -/- [0-9eE]
<i class="keyword">Syntax</i> <i class="keyword">SDF</i>

// Floating-point literals

context-free restrictions

  <code><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_float-literal">float-literal</a></span></code>       -/- [0-9eE]

// String literals

syntax

  <code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-01-Lexical-Conventions/index.html#SyntaxName_string-character-star">string-character-star</a></span> ::= <span class="syn-name">string-character</span> _ <span class="syn-name">string-character-star</span></code>    {avoid}
<i class="keyword">Lexis</i> <i class="keyword">SDF</i>

// Keywords

lexical restrictions

      "and"          "as"         "assert"   "asr"       "begin"     "class"
      "constraint"   "do"         "done"     "downto"    "else"      "end"
      "exception"    "external"   "false"    "for"       "fun"       "function"
      "functor"      "if"         "in"       "include"   "inherit"   "initializer"
      "land"         "lazy"       "let"      "lor"       "lsl"       "lsr"
      "lxor"         "match"      "method"   "mod"       "module"    "mutable" 
      "new"          "nonrec"     "object"   "of"        "open"      "or"     
      "private"      "rec"        "sig"      "struct"    "then"      "to"
      "true"         "try"        "type"     "val"       "virtual"   "when" 
      "while"        "with"
  -/- [A-Za-z0-9\_] 

// Key symbols

<code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-1">infix-op-1</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-2">infix-op-2</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-3">infix-op-3</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-4">infix-op-4</a></span></code> 
<code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-5">infix-op-5</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-6">infix-op-6</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-7">infix-op-7</a></span></code> <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-8">infix-op-8</a></span></code> 
       -/- [\!\$\%\&\*\+\-\.\/\:\<\=\>\?\@\^\|\~]
  "["  -/- [\|]
  "|"  -/- [\]]
  ":"  -/- [\:]
  ";"  -/- [\;]

lexical syntax

  <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-3">infix-op-3</a></span></code> = "->" {reject}

  <code><span class="syn-name"><a href="../OC-L-03-Names/index.html#SyntaxName_infix-op-5">infix-op-5</a></span></code> = "<-" {reject}
<i class="keyword">Syntax</i> <i class="keyword">SDF</i>


// 4 Type expressions

context-free syntax

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <b class="atom">'->'</b> <span class="syn-name">typexpr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <span class="syn-name">star-typexpr</span><sup class="sup">+</sup></code>   {non-assoc}

context-free priorities

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <span class="syn-name">typeconstr</span></code>  
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-08-Type-and-Exception-Definitions/index.html#SyntaxName_constr-args">constr-args</a></span> ::= <span class="syn-name">typexpr</span> <span class="syn-name">star-typexpr</span><sup class="sup">*</sup></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <span class="syn-name">star-typexpr</span><sup class="sup">+</sup></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <b class="atom">'->'</b> <span class="syn-name">typexpr</span></code>

context-free priorities

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_star-typexpr">star-typexpr</a></span> ::= <b class="atom">'*'</b> <span class="syn-name">typexpr</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-04-Type-Expressions/index.html#SyntaxName_typexpr">typexpr</a></span> ::= <span class="syn-name">typexpr</span> <span class="syn-name">star-typexpr</span><sup class="sup">+</sup></code>


// 6 Patterns

context-free syntax

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <b class="atom">'|'</b> <span class="syn-name">pattern</span></code>    {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <span class="syn-name">comma-pattern</span><sup class="sup">+</sup></code> {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <b class="atom">'::'</b> <span class="syn-name">pattern</span></code>   {right}

context-free priorities

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">constr</span> <span class="syn-name">pattern</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <b class="atom">'::'</b> <span class="syn-name">pattern</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <span class="syn-name">comma-pattern</span><sup class="sup">+</sup></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <b class="atom">'|'</b> <span class="syn-name">pattern</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <b class="atom">'as'</b> <span class="syn-name">value-name</span></code>

context-free priorities
{
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_comma-pattern">comma-pattern</a></span> ::= <b class="atom">','</b> <span class="syn-name">pattern</span></code>
<code>(<span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> <span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_comma-pattern">comma-pattern</a></span><sup class="sup">*</sup>)</code>
} >
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-06-Patterns/index.html#SyntaxName_pattern">pattern</a></span> ::= <span class="syn-name">pattern</span> <span class="syn-name">comma-pattern</span><sup class="sup">+</sup></code>


// 7 Expressions      

context-free syntax
  
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">argument</span><sup class="sup">+</sup></code>          {non-assoc,avoid}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'-'</b> <span class="syn-name">expr</span></code>                {avoid}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-1</span> <span class="syn-name">expr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-2</span> <span class="syn-name">expr</span></code>    {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-3</span> <span class="syn-name">expr</span></code>    {left,prefer}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'::'</b> <span class="syn-name">expr</span></code>          {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-4</span> <span class="syn-name">expr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-5</span> <span class="syn-name">expr</span></code>    {left}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-6</span> <span class="syn-name">expr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-7</span> <span class="syn-name">expr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">comma-expr</span><sup class="sup">+</sup></code>        {non-assoc}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-8</span> <span class="syn-name">expr</span></code>    {right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.'</b> <span class="syn-name">field</span> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>{right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.('</b> <span class="syn-name">expr</span> <b class="atom">')'</b> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>{right}
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">';'</b> <span class="syn-name">expr</span></code>           {right}

context-free priorities

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_argument">argument</a></span> ::= <span class="syn-name">expr</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">prefix-symbol</span> <span class="syn-name">expr</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.'</b> <span class="syn-name">field</span></code>
> {
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">argument</span><sup class="sup">+</sup></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'assert'</b> <span class="syn-name">expr</span></code>
} > {
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'-'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'-.'</b> <span class="syn-name">expr</span></code>
} > 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-1</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-2</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-3</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'::'</b> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-4</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-5</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-6</span> <span class="syn-name">expr</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-7</span> <span class="syn-name">expr</span></code>
> 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">comma-expr</span><sup class="sup">+</sup></code>
> {
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.'</b> <span class="syn-name">field</span> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.('</b> <span class="syn-name">expr</span> <b class="atom">')'</b> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-8</span> <span class="syn-name">expr</span></code>
} > 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">';'</b> <span class="syn-name">expr</span></code>

context-free priorities

<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">prefix-symbol</span> <span class="syn-name">expr</span></code>
>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.('</b> <span class="syn-name">expr</span> <b class="atom">')'</b></code>
<0> >
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">argument</span><sup class="sup">+</sup></code>

context-free priorities
{
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_argument">argument</a></span> ::= <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.'</b> <span class="syn-name">field</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.('</b> <span class="syn-name">expr</span> <b class="atom">')'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">argument</span><sup class="sup">+</sup></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'assert'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-1</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-2</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-3</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'::'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-4</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-5</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-6</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-7</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">comma-expr</span><sup class="sup">+</sup></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.'</b> <span class="syn-name">field</span> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">'.('</b> <span class="syn-name">expr</span> <b class="atom">')'</b> <b class="atom">'<-'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">infix-op-8</span> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">';'</b> <span class="syn-name">expr</span></code>
} <0>. > {
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'if'</b> <span class="syn-name">expr</span> <b class="atom">'then'</b> <span class="syn-name">expr</span> (<b class="atom">'else'</b> <span class="syn-name">expr</span>)<sup class="sup">?</sup></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'match'</b> <span class="syn-name">expr</span> <b class="atom">'with'</b> <span class="syn-name">pattern-matching</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'function'</b> <span class="syn-name">pattern-matching</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'fun'</b> <span class="syn-name">pattern</span><sup class="sup">+</sup> <b class="atom">'->'</b> <span class="syn-name">expr</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'try'</b> <span class="syn-name">expr</span> <b class="atom">'with'</b> <span class="syn-name">pattern-matching</span></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">let-definition</span> <b class="atom">'in'</b> <span class="syn-name">expr</span></code>
}

context-free priorities
{
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_comma-expr">comma-expr</a></span> ::= <b class="atom">','</b> <span class="syn-name">expr</span></code>
<code>(<span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> <span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_comma-expr">comma-expr</a></span><sup class="sup">*</sup>)</code>
} > 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <span class="syn-name">comma-expr</span><sup class="sup">+</sup></code>

context-free priorities
{
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'['</b> <span class="syn-name">expr</span> <span class="syn-name">semic-expr</span><sup class="sup">*</sup> <b class="atom">']'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'['</b> <span class="syn-name">expr</span> <span class="syn-name">semic-expr</span><sup class="sup">*</sup> <b class="atom">';'</b> <b class="atom">']'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'[|'</b> <span class="syn-name">expr</span> <span class="syn-name">semic-expr</span><sup class="sup">*</sup> <b class="atom">'|]'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'[|'</b> <span class="syn-name">expr</span> <span class="syn-name">semic-expr</span><sup class="sup">*</sup> <b class="atom">';'</b> <b class="atom">'|]'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_semic-expr">semic-expr</a></span> ::= <b class="atom">';'</b> <span class="syn-name">expr</span></code>
<code>(<span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> <span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_semic-expr">semic-expr</a></span><sup class="sup">*</sup>)</code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'{'</b> <span class="syn-name">field</span> <b class="atom">'='</b> <span class="syn-name">expr</span> <span class="syn-name">semic-field-expr</span><sup class="sup">*</sup> <b class="atom">'}'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'{'</b> <span class="syn-name">field</span> <b class="atom">'='</b> <span class="syn-name">expr</span> <span class="syn-name">semic-field-expr</span><sup class="sup">*</sup> <b class="atom">';'</b> <b class="atom">'}'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'{'</b> <span class="syn-name">expr</span> <b class="atom">'with'</b> <span class="syn-name">field</span> <b class="atom">'='</b> <span class="syn-name">expr</span> <span class="syn-name">semic-field-expr</span><sup class="sup">*</sup> <b class="atom">'}'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <b class="atom">'{'</b> <span class="syn-name">expr</span> <b class="atom">'with'</b> <span class="syn-name">field</span> <b class="atom">'='</b> <span class="syn-name">expr</span> <span class="syn-name">semic-field-expr</span><sup class="sup">*</sup> <b class="atom">';'</b> <b class="atom">'}'</b></code>
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_semic-field-expr">semic-field-expr</a></span> ::= <b class="atom">';'</b> <span class="syn-name">field</span> <b class="atom">'='</b> <span class="syn-name">expr</span></code>
} > 
<code><i class="keyword"></i><i class="var"></i><span class="syn-name"><a href="../OC-L-07-Expressions/index.html#SyntaxName_expr">expr</a></span> ::= <span class="syn-name">expr</span> <b class="atom">';'</b> <span class="syn-name">expr</span></code></code></pre></div>


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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[OC-L-A-Disambiguation.cbs]: /CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L/OC-L-A-Disambiguation/OC-L-A-Disambiguation.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-A-Disambiguation/OC-L-A-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
