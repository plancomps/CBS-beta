---
title: "MiniJava-Start"
math: katex
parent: MiniJava
ancestor: Languages-beta
nav_order: MiniJava
---
[Languages-beta] : [MiniJava-Start.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{MiniJava}$$



$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{MiniJava-Dynamics}{program}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \VARREF{START} : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{MiniJava-Dynamics}{P} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\&\quad\quad\quad\quad\quad 
              \SEMHYPER{../.}{MiniJava-Dynamics}{run} \LEFTPHRASE \
                                    \VAR{P} \
                                  \RIGHTPHRASE 
\end{align*}$$


Contents:



$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{1}} \ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{2}} \ & \textsf{Declarations} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{3}} \ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{4}} \ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{5}} \ & \textsf{Lexemes} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Syntax}{6}} \ & \textsf{Disambiguation}
  \ ]
\end{align*}$$


The section numbers above are links into other files.




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
[MiniJava-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start/MiniJava-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Start/MiniJava-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Start/MiniJava-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
