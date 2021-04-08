---
title: "SL-3-Statements"
math: katex
parent: SL
ancestor: Languages-beta

---
[Languages-beta] : [SL-3-Statements.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SL}$$

# $$\SECT{3}$$ Statements
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Stmt} : \SYN{stmt}
      \ ::= \ & \
      \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{return} \ \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{return} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{)}} \ \SYNREF{block} \ \LEX{else} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{break} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{continue} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNREF{block}
    \\
    \VARDECL{Block} : \SYN{block}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{stmt}\STAR \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SL-2-Expressions}{Expr} \ \LEX{{)}} \ \VARREF{Block} \
      \RIGHTPHRASE : \SYNREF{stmt} = \\&
      \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VAR{Expr} \ \LEX{{)}} \ \VAR{Block} \ \LEX{else} \ \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{exec} \LEFTPHRASE \ \VARREF{Stmt}\STAR : \SYNREF{stmt}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-2-Expressions}{Expr} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{SL-2-Expressions}{eval} \LEFTPHRASE \
                                    \VAR{Expr} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{return} \ \VARHYPER{../.}{SL-2-Expressions}{Expr} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (  \SEMHYPER{../.}{SL-2-Expressions}{eval} \LEFTPHRASE \
                                    \VAR{Expr} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{return} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SL-2-Expressions}{Expr} \ \LEX{{)}} \ \VARREF{Block}\SUB{1} \ \LEX{else} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMHYPER{../.}{SL-2-Expressions}{eval} \LEFTPHRASE \
                                      \VAR{Expr} \
                                    \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{while} \ \LEX{{(}} \ \VARHYPER{../.}{SL-2-Expressions}{Expr} \ \LEX{{)}} \ \VARREF{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Breaking}{handle-break}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
                ( \\&\quad\quad\quad \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                        \SEMHYPER{../.}{SL-2-Expressions}{eval} \LEFTPHRASE \
                                              \VAR{Expr} \
                                            \RIGHTPHRASE , \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Continuing}{handle-continue}
                        (  \SEMREF{exec} \LEFTPHRASE \
                                                    \VAR{Block} \
                                                  \RIGHTPHRASE  ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{break} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Breaking}{break}
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{continue} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Continuing}{continue}
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{Stmt}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \SEMREF{exec} \LEFTPHRASE \
                            \VAR{Stmt}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARREF{Stmt} \ \VARREF{Stmt}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Stmt} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Stmt}\PLUS \
                                  \RIGHTPHRASE  )
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
[SL-3-Statements.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-3-Statements/SL-3-Statements.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-3-Statements
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-3-Statements
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-3-Statements/SL-3-Statements.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-3-Statements/SL-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
