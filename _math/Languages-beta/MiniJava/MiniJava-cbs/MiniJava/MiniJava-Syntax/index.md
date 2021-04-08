---
title: "MiniJava-Syntax"
math: katex
parent: MiniJava
ancestor: Languages-beta

---
[Languages-beta] : [MiniJava-Syntax.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{MiniJava}$$





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
  (such as $$\SECTHYPER{../.}{MiniJava-Dynamics}{1}$$ below) link to the corresponding specification section.

$$\SECTHYPER{../.}{MiniJava-Dynamics}{1}$$ Programs

Syntax

$$\begin{align*}
  \VARDECL{START} : \SYNHYPER{../.}{MiniJava-Start}{start}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{program}
  \\
  \VARDECL{P} : \SYNHYPER{../.}{MiniJava-Dynamics}{program}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{main-class} \ \SYNHYPER{../.}{MiniJava-Dynamics}{class-declaration}\STAR
  \\
  \VARDECL{MC} : \SYNHYPER{../.}{MiniJava-Dynamics}{main-class}
    \ ::= \ & \
    \LEX{class} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{\LEFTBRACE}} \\
                                                             & \ \LEX{public} \ \LEX{static} \ \LEX{void} \ \LEX{main} \ \LEX{{(}} \ \LEX{String} \ \LEX{{[}} \ \LEX{{]}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
                                                                                                                                                                                                                                                                                                    & \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement} \\
                                                                                                                                                                                                                                                                                                                         & \ \LEX{{\RIGHTBRACE}} \\
                                                                                                                                                                                                                                                                                                                                              & \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\SECTHYPER{../.}{MiniJava-Dynamics}{2}$$ Declarations

$$\begin{align*}
  \VARDECL{CD} : \SYNHYPER{../.}{MiniJava-Dynamics}{class-declaration}
    \ ::= \ & \
    \LEX{class} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEFTGROUP \LEX{extends} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \RIGHTGROUP\QUERY \ \LEX{{\LEFTBRACE}} \\
                                                                                  & \ \SYNHYPER{../.}{MiniJava-Dynamics}{var-declaration}\STAR \\
                                                                                                       & \ \SYNHYPER{../.}{MiniJava-Dynamics}{method-declaration}\STAR \\
                                                                                                                            & \ \LEX{{\RIGHTBRACE}}
  \\
  \VARDECL{VD} : \SYNHYPER{../.}{MiniJava-Dynamics}{var-declaration}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{type} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{;}}
  \\
  \VARDECL{MD} : \SYNHYPER{../.}{MiniJava-Dynamics}{method-declaration}
    \ ::= \ & \
    \LEX{public} \ \SYNHYPER{../.}{MiniJava-Dynamics}{type} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{formal-list}\QUERY \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
                                                                                                                                                 & \ \SYNHYPER{../.}{MiniJava-Dynamics}{var-declaration}\STAR \\
                                                                                                                                                                      & \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement}\STAR \\
                                                                                                                                                                                           & \ \LEX{return} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{;}} \\
                                                                                                                                                                                                                                                          & \ \LEX{{\RIGHTBRACE}}
  \\
  \VARDECL{T} : \SYNHYPER{../.}{MiniJava-Dynamics}{type}
    \ ::= \ & \
    \LEX{int} \ \LEX{{[}} \ \LEX{{]}} \\
    \ \mid \ & \ \LEX{boolean} \\
    \ \mid \ & \ \LEX{int} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier}
  \\
  \VARDECL{FL} : \SYNHYPER{../.}{MiniJava-Dynamics}{formal-list}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{type} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEFTGROUP \LEX{{,}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{formal-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\SECTHYPER{../.}{MiniJava-Dynamics}{3}$$ Statements

$$\begin{align*}
  \VARDECL{S} : \SYNHYPER{../.}{MiniJava-Dynamics}{statement}
    \ ::= \ & \
    \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement}\STAR \ \LEX{{\RIGHTBRACE}} \\
    \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{)}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement} \ \LEX{else} \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement} \\
    \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{)}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{statement} \\
    \ \mid \ & \ \LEX{System} \ \LEX{{.}} \ \LEX{out} \ \LEX{{.}} \ \LEX{println} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{)}} \ \LEX{{;}} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{=}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{;}} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{[}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{]}} \ \LEX{{=}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{;}}
\end{align*}$$

$$\SECTHYPER{../.}{MiniJava-Dynamics}{4}$$ Expressions

$$\begin{align*}
  \VARDECL{E} : \SYNHYPER{../.}{MiniJava-Dynamics}{expression}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{<}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{+}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{-}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{*}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{[}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{]}} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{.}} \ \LEX{length} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{.}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression-list}\QUERY \ \LEX{{)}} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{integer-literal} \\
    \ \mid \ & \ \LEX{true} \\
    \ \mid \ & \ \LEX{false} \\
    \ \mid \ & \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \\
    \ \mid \ & \ \LEX{this} \\
    \ \mid \ & \ \LEX{new} \ \LEX{int} \ \LEX{{[}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{]}} \\
    \ \mid \ & \ \LEX{new} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{(}} \ \LEX{{)}} \\
    \ \mid \ & \ \LEX{{!}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \\
    \ \mid \ & \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{)}}
  \\
  \VARDECL{EL} : \SYNHYPER{../.}{MiniJava-Dynamics}{expression-list}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEFTGROUP \LEX{{,}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\SECTHYPER{../.}{MiniJava-Dynamics}{5}$$ Lexemes

Lexis

$$\begin{align*}
  \VARDECL{ID} : \SYNHYPER{../.}{MiniJava-Dynamics}{identifier}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{letter} \ \LEFTGROUP \SYNHYPER{../.}{MiniJava-Dynamics}{letter} \mid \SYNHYPER{../.}{MiniJava-Dynamics}{digit} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP\STAR
  \\
  \VARDECL{IL} : \SYNHYPER{../.}{MiniJava-Dynamics}{integer-literal}
    \ ::= \ & \
    \SYNHYPER{../.}{MiniJava-Dynamics}{digit}\PLUS
  \\
   \SYNHYPER{../.}{MiniJava-Dynamics}{letter}
    \ ::= \ & \
    \LEX{a} {-} \LEX{z} \mid \LEX{A} {-} \LEX{Z}
  \\
   \SYNHYPER{../.}{MiniJava-Dynamics}{digit}
    \ ::= \ & \
    \LEX{0} {-} \LEX{9}
\end{align*}$$



# $$\SECT{6}$$ Disambiguation
           



  The mixture of CBS and SDF below specifies how MiniJava texts are to
  be disambiguated by parsers generated from the above grammar.
  
  The specified rules are adequate to disambiguate all the example programs
  provided at http://www.cambridge.org/us/features/052182060X/#progs


\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{*}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{+}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{-}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{<}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{.}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} \ \LEX{{(}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression-list}\QUERY \ \LEX{{)}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{[}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{]}}}$$\\
>    } <0> >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \LEX{{!}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{*}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{+}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{-}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
>    } >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{<}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{MiniJava-Dynamics}{expression}  \ ::= \  \  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$

\$$\KEY{Lexis SDF}$$

>    lexical restrictions\\
>    $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{identifier}}$$      -/- [a-zA-Z0-9\_]\\
>    $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{integer-literal}}$$ -/- [0-9]\\
>    \\
>    lexical syntax\\
>    $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{identifier}}$$ = $$\SHADE{\SYNREF{reserved-id}}$$ {reject}

$$\begin{align*}
  \KEY{Lexis} \quad
     \SYN{reserved-id}
      \ ::= \ & \
      \LEX{String} \\
      \ \mid \ & \ \LEX{System} \\
      \ \mid \ & \ \LEX{boolean} \\
      \ \mid \ & \ \LEX{class} \\
      \ \mid \ & \ \LEX{else} \\
      \ \mid \ & \ \LEX{extends} \\
      \ \mid \ & \ \LEX{false} \\
      \ \mid \ & \ \LEX{if} \\
      \ \mid \ & \ \LEX{int} \\
      \ \mid \ & \ \LEX{length} \\
      \ \mid \ & \ \LEX{main} \\
      \ \mid \ & \ \LEX{new} \\
      \ \mid \ & \ \LEX{out} \\
      \ \mid \ & \ \LEX{println} \\
      \ \mid \ & \ \LEX{public} \\
      \ \mid \ & \ \LEX{return} \\
      \ \mid \ & \ \LEX{static} \\
      \ \mid \ & \ \LEX{this} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \LEX{void}
\end{align*}$$



[Funcons-beta]: /CBS-beta/math/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/math/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/math/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/math/Unstable-Languages-beta
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
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Syntax/MiniJava-Syntax.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
