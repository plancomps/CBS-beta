---
title: "MiniJava-Syntax"
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


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYNDECL{start}
      \ ::= \ & \
      \SYNREF{program}
    \\
    \VARDECL{P} : \SYNDECL{program}
      \ ::= \ & \
      \SYNREF{main-class} \ \SYNREF{class-declaration}\STAR
    \\
    \VARDECL{MC} : \SYNDECL{main-class}
      \ ::= \ & \
      \LEX{class} \ \SYNREF{identifier} \ \LEX{{\LEFTBRACE}} \\
      & \ \LEX{public} \ \LEX{static} \ \LEX{void} \ \LEX{main} \ \LEX{{(}} \ \LEX{String} \ \LEX{{[}} \ \LEX{{]}} \ \SYNREF{identifier} \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
      & \ \SYNREF{statement} \\
      & \ \LEX{{\RIGHTBRACE}} \\
      & \ \LEX{{\RIGHTBRACE}}
\end{align*}$$


$$\SECTHYPER{../.}{MiniJava-Dynamics}{2}$$ Declarations


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{CD} : \SYNDECL{class-declaration}
      \ ::= \ & \
      \LEX{class} \ \SYNREF{identifier} \ \LEFTGROUP \LEX{extends} \ \SYNREF{identifier} \RIGHTGROUP\QUERY \ \LEX{{\LEFTBRACE}} \\
      & \ \SYNREF{var-declaration}\STAR \\
      & \ \SYNREF{method-declaration}\STAR \\
      & \ \LEX{{\RIGHTBRACE}}
    \\
    \VARDECL{VD} : \SYNDECL{var-declaration}
      \ ::= \ & \
      \SYNREF{type} \ \SYNREF{identifier} \ \LEX{{;}}
    \\
    \VARDECL{MD} : \SYNDECL{method-declaration}
      \ ::= \ & \
      \LEX{public} \ \SYNREF{type} \ \SYNREF{identifier} \ \LEX{{(}} \ \SYNREF{formal-list}\QUERY \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
      & \ \SYNREF{var-declaration}\STAR \\
      & \ \SYNREF{statement}\STAR \\
      & \ \LEX{return} \ \SYNREF{expression} \ \LEX{{;}} \\
      & \ \LEX{{\RIGHTBRACE}}
    \\
    \VARDECL{T} : \SYNDECL{type}
      \ ::= \ & \
      \LEX{int} \ \LEX{{[}} \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{boolean} \\
      \ \mid \ & \ \LEX{int} \\
      \ \mid \ & \ \SYNREF{identifier}
    \\
    \VARDECL{FL} : \SYNDECL{formal-list}
      \ ::= \ & \
      \SYNREF{type} \ \SYNREF{identifier} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{formal-list} \RIGHTGROUP\QUERY
\end{align*}$$


$$\SECTHYPER{../.}{MiniJava-Dynamics}{3}$$ Statements


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{S} : \SYNDECL{statement}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{statement}\STAR \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \SYNREF{statement} \ \LEX{else} \ \SYNREF{statement} \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \SYNREF{statement} \\
      \ \mid \ & \ \LEX{System} \ \LEX{{.}} \ \LEX{out} \ \LEX{{.}} \ \LEX{println} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNREF{identifier} \ \LEX{{=}} \ \SYNREF{expression} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNREF{identifier} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \ \LEX{{=}} \ \SYNREF{expression} \ \LEX{{;}}
\end{align*}$$


$$\SECTHYPER{../.}{MiniJava-Dynamics}{4}$$ Expressions


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{E} : \SYNDECL{expression}
      \ ::= \ & \
      \SYNREF{expression} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{<}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{+}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{-}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{*}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{.}} \ \LEX{length} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{.}} \ \SYNREF{identifier} \ \LEX{{(}} \ \SYNREF{expression-list}\QUERY \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{integer-literal} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \LEX{false} \\
      \ \mid \ & \ \SYNREF{identifier} \\
      \ \mid \ & \ \LEX{this} \\
      \ \mid \ & \ \LEX{new} \ \LEX{int} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{new} \ \SYNREF{identifier} \ \LEX{{(}} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{expression} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}}
    \\
    \VARDECL{EL} : \SYNDECL{expression-list}
      \ ::= \ & \
      \SYNREF{expression} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{expression-list} \RIGHTGROUP\QUERY
\end{align*}$$


$$\SECTHYPER{../.}{MiniJava-Dynamics}{5}$$ Lexemes


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{ID} : \SYNDECL{identifier}
      \ ::= \ & \
      \SYNREF{letter} \ \LEFTGROUP \SYNREF{letter} \mid \SYNREF{digit} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP\STAR
    \\
    \VARDECL{IL} : \SYNDECL{integer-literal}
      \ ::= \ & \
      \SYNREF{digit}\PLUS
    \\
     \SYNDECL{letter}
      \ ::= \ & \
      \LEX{a} {-} \LEX{z} \mid \LEX{A} {-} \LEX{Z}
    \\
     \SYNDECL{digit}
      \ ::= \ & \
      \LEX{0} {-} \LEX{9}
\end{align*}$$



# $$\SECT{6}$$ Disambiguation {#SectionNumber:6}



  The mixture of CBS and SDF below specifies how MiniJava texts are to
  be disambiguated by parsers generated from the above grammar.
  
  The specified rules are adequate to disambiguate all the example programs
  provided at <https://www.cambridge.org/us/features/052182060X/#progs>.


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
     \SYNDECL{reserved-id}
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
[MiniJava-Syntax.cbs]: https://github.com/plancomps/CBS-beta/blob/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax/MiniJava-Syntax.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Syntax/MiniJava-Syntax.pdf
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
