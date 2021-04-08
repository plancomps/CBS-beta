---
title: "IMP-2"
math: katex
parent: IMP
ancestor: Languages-beta

---
[Languages-beta] : [IMP-2.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$

# $$\SECT{2}$$ Boolean expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{BExp} : \SYN{bexp}
      \ ::= \ & \
      \LEX{false} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMP-1}{aexp} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{IMP-1}{aexp} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{bexp} \\
      \ \mid \ & \ \SYNREF{bexp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{bexp} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{bexp} \ \LEX{{)}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-bool} \LEFTPHRASE \ \_ : \SYNREF{bexp} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{false} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{true} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \VARHYPER{../.}{IMP-1}{AExp}\SUB{1} \ \LEX{{<}{=}} \ \VARHYPER{../.}{IMP-1}{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
        (  \SEMHYPER{../.}{IMP-1}{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMHYPER{../.}{IMP-1}{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{BExp} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (  \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \VARREF{BExp}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{BExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{BExp} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-bool} \LEFTPHRASE \
                            \VAR{BExp} \
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
[IMP-2.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-2/IMP-2.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-2
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-2
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-2/IMP-2.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-2/IMP-2.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
