---
title: "IMPPP-1"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [IMPPP-1.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

$$\KEY{Language} \quad \STRING{IMPPP}$$

# $$\SECT{1}$$ Values
           


## Integers
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{N} : \SYN{int}
      \ ::= \ & \
      \LEX{{-}}\QUERY \_ \SYNREF{decimal}
\\
  \KEY{Lexis} \quad
    \VARDECL{D} : \SYN{decimal}
      \ ::= \ & \
      \LEFTGROUP \LEX{0} {-} \LEX{9} \RIGHTGROUP\PLUS
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{int-val} \LEFTPHRASE \ \_ : \SYNREF{int} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
\\
  \KEY{Rule} \quad
    & \SEMREF{int-val} \LEFTPHRASE \
                            \VARREF{D} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
        (  \textsf{\textquotedblleft}\VAR{D}\textsf{\textquotedblright} )
\\
  \KEY{Rule} \quad
    & \SEMREF{int-val} \LEFTPHRASE \
                            \LEX{{-}} \ \VARREF{D} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate}
        (  \SEMREF{int-val} \LEFTPHRASE \
                                    \VAR{D} \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Strings
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{S} : \SYN{string}
      \ ::= \ & \
      \LEX{{"}} \_ \SYNREF{string-chars} \_ \LEX{{"}}
\\
  \KEY{Lexis} \quad
    \VARDECL{SCS} : \SYN{string-chars}
      \ ::= \ & \
      \LEFTGROUP \mathop{\sim} \LEX{{"}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{string-val} \LEFTPHRASE \ \_ : \SYNREF{string} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} 
\\
  \KEY{Rule} \quad
    & \SEMREF{string-val} \LEFTPHRASE \
                            \LEX{{"}} \ \VARREF{SCS} \ \LEX{{"}} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{SCS}\textsf{\textquotedblright}
\end{align*}$$

## Identifiers
               


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{I} : \SYN{id}
      \ ::= \ & \
      \LEFTGROUP \LEX{A} {-} \LEX{Z} \mid \LEX{a} {-} \LEX{z} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP \ \LEFTGROUP \LEX{0} {-} \LEX{9} \mid \LEX{A} {-} \LEX{Z} \mid \LEX{a} {-} \LEX{z} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{id} \LEFTPHRASE \ \_ : \SYNREF{id} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{id} \LEFTPHRASE \
                            \VARREF{I} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{I}\textsf{\textquotedblright}
\end{align*}$$

$$\begin{align*}
  \KEY{Lexis} \quad
     \SYN{keyword}
      \ ::= \ & \
      \LEX{else} \mid \LEX{false} \mid \LEX{if} \mid \LEX{halt} \mid \LEX{join} \\
      \ \mid \ & \ \LEX{print} \mid \LEX{read} \mid \LEX{spawn} \mid \LEX{true} \mid \LEX{while}
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
[IMPPP-1.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1/IMPPP-1.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-1/IMPPP-1.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-1/IMPPP-1.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
