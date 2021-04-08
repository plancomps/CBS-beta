---
title: "IMP-1"
math: katex
parent: IMP
ancestor: Languages-beta

---
[Languages-beta] : [IMP-1.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$

# $$\SECT{1}$$ Arithmetic expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{AExp} : \SYN{aexp}
      \ ::= \ & \
      \SYNREF{num} \\
      \ \mid \ & \ \SYNREF{id} \\
      \ \mid \ & \ \SYNREF{aexp} \ \LEX{{+}} \ \SYNREF{aexp} \\
      \ \mid \ & \ \SYNREF{aexp} \ \LEX{{/}} \ \SYNREF{aexp} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{aexp} \ \LEX{{)}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-arith} \LEFTPHRASE \ \_ : \SYNREF{aexp} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{N} \
                          \RIGHTPHRASE  = 
      \SEMREF{int-val} \LEFTPHRASE \
                            \VAR{N} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{I} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                (  \SEMREF{id} \LEFTPHRASE \
                                            \VAR{I} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{AExp}\SUB{1} \ \LEX{{+}} \ \VARREF{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (  \SEMREF{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{AExp}\SUB{1} \ \LEX{{/}} \ \VARREF{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (  \SEMREF{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{AExp} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-arith} \LEFTPHRASE \
                            \VAR{AExp} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{N} : \SYN{num}
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
  & \SEMDECL{int-val} \LEFTPHRASE \ \_ : \SYNREF{num} \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
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

$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{I} : \SYN{id}
      \ ::= \ & \
      \LEFTGROUP \LEX{A} {-} \LEX{Z} \mid \LEX{a} {-} \LEX{z} \RIGHTGROUP\PLUS
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{id} \LEFTPHRASE \ \_ : \SYNREF{id} \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
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
      \LEX{else} \mid \LEX{false} \mid \LEX{if} \mid \LEX{true} \mid \LEX{while}
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
[IMP-1.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/IMP-1.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-1
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-1
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/IMP-1.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-1/IMP-1.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
