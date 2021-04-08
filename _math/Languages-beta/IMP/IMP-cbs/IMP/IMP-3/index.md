---
title: "IMP-3"
math: katex
parent: IMP
ancestor: Languages-beta

---
[Languages-beta] : [IMP-3.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$

# $$\SECT{3}$$ Statements and blocks
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Stmt} : \SYN{stmt}
      \ ::= \ & \
      \SYNREF{block} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMP-1}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{IMP-1}{aexp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{IMP-2}{bexp} \ \LEX{{)}} \ \SYNREF{block} \ \LEFTGROUP \LEX{else} \ \SYNREF{block} \RIGHTGROUP\QUERY \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{IMP-2}{bexp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \SYNREF{stmt} \ \SYNREF{stmt}
\\
  \KEY{Syntax} \quad
    \VARDECL{Block} : \SYN{block}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{stmt}\QUERY \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{IMP-2}{BExp} \ \LEX{{)}} \ \VARREF{Block} \
      \RIGHTPHRASE : \SYNREF{stmt} = \\&
      \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VAR{BExp} \ \LEX{{)}} \ \VAR{Block} \ \LEX{else} \ \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{execute} \LEFTPHRASE \ \_ : \SYNREF{stmt} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARHYPER{../.}{IMP-1}{I} \ \LEX{{=}} \ \VARHYPER{../.}{IMP-1}{AExp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                (  \SEMHYPER{../.}{IMP-1}{id} \LEFTPHRASE \
                                            \VAR{I} \
                                          \RIGHTPHRASE  ), 
               \SEMHYPER{../.}{IMP-1}{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{IMP-2}{BExp} \ \LEX{{)}} \ \VARREF{Block}\SUB{1} \ \LEX{else} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        ( \\&\quad\quad \SEMHYPER{../.}{IMP-2}{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{while} \ \LEX{{(}} \ \VARHYPER{../.}{IMP-2}{BExp} \ \LEX{{)}} \ \VARREF{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (  \SEMHYPER{../.}{IMP-2}{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARREF{Stmt}\SUB{1} \ \VARREF{Stmt}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Stmt}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Stmt}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{Stmt} \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \SEMREF{execute} \LEFTPHRASE \
                            \VAR{Stmt} \
                          \RIGHTPHRASE 
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
[IMP-3.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-3/IMP-3.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-3
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-3
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-3/IMP-3.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-3/IMP-3.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
