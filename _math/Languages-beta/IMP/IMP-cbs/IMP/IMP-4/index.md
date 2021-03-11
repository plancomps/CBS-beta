---
layout: default
title: "IMP-4"
math: katex
parent: IMP
ancestor: Languages-beta

---

[Languages-beta] : [IMP-4.cbs]

$$\KEY{Language} \STRING{IMP}$$

# $$\SECT{4}$$ Programs and variable declarations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Pgm} : \SYN{pgm}
      ~ ::= ~ & \LEX{int} ~ \SYNREF{idlist} ~ \LEX{;{}} ~ \SYNHYPER{../.}{IMP-3}{stmt}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{run} \LEFTPHRASE ~ \_ : \SYNREF{pgm} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{run} \LEFTPHRASE ~ \LEX{int} ~ \VARREF{IL} ~ \LEX{;{}} ~ \VARHYPER{../.}{IMP-3}{Stmt} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
           (\SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMHYPER{../.}{IMP-3}{execute} \LEFTPHRASE ~ \VAR{Stmt} ~ \RIGHTPHRASE )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{IL} : \SYN{idlist}
      ~ ::= ~ & \SYNHYPER{../.}{IMP-1}{id} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{idlist} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare-int-vars} \LEFTPHRASE ~ \_ : \SYNREF{idlist} ~ \RIGHTPHRASE  : ( \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments})\PLUS 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-1}{I} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (\SEMHYPER{../.}{IMP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
           (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, \\&\quad \quad \quad 
            0))
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-1}{I} ~ \LEX{,{}} ~ \VARREF{IL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE 
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

[IMP-4.cbs]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-4/IMP-4.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-4/IMP-4.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
