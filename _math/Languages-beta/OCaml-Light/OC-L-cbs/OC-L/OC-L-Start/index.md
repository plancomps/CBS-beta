---
title: "OC-L-Start"
math: katex
parent: OC-L
ancestor: Languages-beta
nav_order: OC-L
---
[Languages-beta] : [OC-L-Start.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{OCaml Light}$$



$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-11-Module-Implementations}{unit-implementation}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-11-Module-Implementations}{UI} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \ 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \ 
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{finalise-throwing} \\&\quad\quad\quad 
                \SEMHYPER{../.}{OC-L-11-Module-Implementations}{interpret} \LEFTPHRASE \
                                      \VAR{UI} \
                                    \RIGHTPHRASE 
\end{align*}$$


$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{OC-L-01-Lexical-Conventions}{1}} \ & \textsf{Lexical conventions} \\
  \textsf{\SECTHYPER{../.}{OC-L-02-Values}{2}} \ & \textsf{Values} \\
  \textsf{\SECTHYPER{../.}{OC-L-03-Names}{3}} \ & \textsf{Names} \\
  \textsf{\SECTHYPER{../.}{OC-L-04-Type-Expressions}{4}} \ & \textsf{Type expressions} \\
  \textsf{\SECTHYPER{../.}{OC-L-05-Constants}{5}} \ & \textsf{Constants} \\
  \textsf{\SECTHYPER{../.}{OC-L-06-Patterns}{6}} \ & \textsf{Patterns} \\
  \textsf{\SECTHYPER{../.}{OC-L-07-Expressions}{7}} \ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{8}} \ & \textsf{Type and exception definitions} \\
  \textsf{\SECTHYPER{../.}{OC-L-09-Classes}{9}} \ & \textsf{Classes} \\
  \textsf{\SECTHYPER{../.}{OC-L-10-Module-Types}{10}} \ & \textsf{Module interfaces} \\
  \textsf{\SECTHYPER{../.}{OC-L-11-Module-Implementations}{11}} \ & \textsf{Module implementations} \\
  \textsf{\SECTHYPER{../.}{OC-L-12-Core-Library}{12}} \ & \textsf{Core library} \\
  \textsf{\SECTHYPER{../.}{OC-L-A-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
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
[OC-L-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start/OC-L-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Start/OC-L-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-Start/OC-L-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
