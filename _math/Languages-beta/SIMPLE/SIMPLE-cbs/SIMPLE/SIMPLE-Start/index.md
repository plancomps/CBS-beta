---
layout: default
title: "SIMPLE-Start"
math: katex
parent: SIMPLE
ancestor: Languages-beta
nav_order: SIMPLE
---

[Languages-beta] : [SIMPLE-Start.cbs]

$$\KEY{Language} \STRING{SIMPLE}$$



$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{START} : \SYN{start}
      ~ ::= ~ & \SYNHYPER{../.}{SIMPLE-5-Programs}{pgm}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{start} \LEFTPHRASE ~ \_ : \SYNREF{start} ~ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    & \SEMREF{start} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-5-Programs}{Pgm} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} ~
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} ~
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{finalise-throwing} ~
                \SEMHYPER{../.}{SIMPLE-5-Programs}{run} \LEFTPHRASE ~ \VAR{Pgm} ~ \RIGHTPHRASE 
\end{aligned}$$


$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{\SECTHYPER{../.}{SIMPLE-1-Lexical}{1}} ~ & \textsf{Lexical Syntax} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-2-Expressions}{2}} ~ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-3-Statements}{3}} ~ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-4-Declarations}{4}} ~ & \textsf{Declarations} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-5-Programs}{5}} ~ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-A-Disambiguation}{A}} ~ & \textsf{Disambiguation}
  ~ ]
\end{aligned}$$



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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-Start.cbs]: /CBS-beta/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Start/SIMPLE-Start.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-Start/SIMPLE-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
