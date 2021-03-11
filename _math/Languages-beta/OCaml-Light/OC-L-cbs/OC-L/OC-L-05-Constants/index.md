---
layout: default
title: "OC-L-05-Constants"
math: katex
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-05-Constants.cbs]

$$\KEY{Language} \STRING{OCaml Light}$$

# $$\SECT{5}$$ Constants
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{CNST} : \SYNDECL{constant}
      ~ ::= ~ &
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{integer-literal} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{float-literal} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{char-literal} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{string-literal} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-03-Names}{constr} \\
      ~ \mid ~ &  \LEX{false} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \LEX{(} ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{begin} ~ \LEX{end} \\
      ~ \mid ~ &  \LEX{[{}} ~ \LEX{]{}} \\
      ~ \mid ~ &  \LEX{[{}|} ~ \LEX{|]{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{value} \LEFTPHRASE ~ \_ : \SYNREF{constant} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{IL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-01-Lexical-Conventions}{integer-value} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{FL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-01-Lexical-Conventions}{float-value} \LEFTPHRASE ~ \VAR{FL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{CL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-01-Lexical-Conventions}{character-value} \LEFTPHRASE ~ \VAR{CL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{SL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-01-Lexical-Conventions}{string-value} \LEFTPHRASE ~ \VAR{SL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-03-Names}{CSTR} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
        (\SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE ~ \VAR{CSTR} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{false} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{true} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{(} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{begin} ~ \LEX{end} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{[{}} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil}
\\
  \KEY{Rule} ~ 
    & \SEMREF{value} \LEFTPHRASE ~ \LEX{[{}|} ~ \LEX{|]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        ( ~ )
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

[OC-L-05-Constants.cbs]: /CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-05-Constants/OC-L-05-Constants.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-05-Constants/OC-L-05-Constants.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
