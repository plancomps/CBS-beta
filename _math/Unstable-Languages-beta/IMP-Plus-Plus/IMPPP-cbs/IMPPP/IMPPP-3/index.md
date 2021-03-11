---
layout: default
title: "IMPPP-3"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-3.cbs]

$$\KEY{Language} \STRING{IMPPP}$$

# $$\SECT{3}$$ Boolean expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{BExp} : \SYNDECL{bexp}
      ~ ::= ~ &
      \LEX{false} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \SYNHYPER{../.}{IMPPP-2}{aexp} ~ \LEX{<{}={}} ~ \SYNHYPER{../.}{IMPPP-2}{aexp} \\
      ~ \mid ~ &  \LEX{!{}} ~ \SYNREF{bexp} \\
      ~ \mid ~ &  \SYNREF{bexp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNREF{bexp} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{bexp} ~ \LEX{)}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{eval-bool} \LEFTPHRASE ~ \_ : \SYNREF{bexp} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \LEX{false} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \LEX{true} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-2}{AExp}\SUB{1} ~ \LEX{<{}={}} ~ \VARHYPER{../.}{IMPPP-2}{AExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{left-to-right}
          (\SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \LEX{!{}} ~ \VARREF{BExp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (\SEMREF{eval-bool} \LEFTPHRASE ~ \VAR{BExp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \VARREF{BExp}\SUB{1} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \VARREF{BExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMREF{eval-bool} \LEFTPHRASE ~ \VAR{BExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval-bool} \LEFTPHRASE ~ \VAR{BExp}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false})
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-bool} \LEFTPHRASE ~ \LEX{(} ~ \VARREF{BExp} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval-bool} \LEFTPHRASE ~ \VAR{BExp} ~ \RIGHTPHRASE 
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

[IMPPP-3.cbs]: /CBS-beta/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3/IMPPP-3.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-3/IMPPP-3.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
