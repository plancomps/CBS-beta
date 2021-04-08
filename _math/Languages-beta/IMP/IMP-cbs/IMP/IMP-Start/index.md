---
title: "IMP-Start"
math: katex
parent: IMP
ancestor: Languages-beta
nav_order: IMP
---
[Languages-beta] : [IMP-Start.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$




$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{IMP-1}{1}} \ & \textsf{Arithmetic expressions} \\
  \textsf{\SECTHYPER{../.}{IMP-2}{2}} \ & \textsf{Boolean expressions} \\
  \textsf{\SECTHYPER{../.}{IMP-3}{3}} \ & \textsf{Statements and blocks} \\
  \textsf{\SECTHYPER{../.}{IMP-4}{4}} \ & \textsf{Programs and variable declarations} \\
  \textsf{\SECTHYPER{../.}{IMP-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
\end{align*}$$

# Top level
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{IMP-4}{pgm}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{IMP-4}{Pgm} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\&\quad\quad\quad\quad\quad 
              \SEMHYPER{../.}{IMP-4}{run} \LEFTPHRASE \
                                    \VAR{Pgm} \
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
[IMP-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/IMP-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/IMP-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-Start/IMP-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
