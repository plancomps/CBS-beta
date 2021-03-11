---
layout: default
title: "OC-L-04-Type-Expressions"
math: katex
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-04-Type-Expressions.cbs]

$$\KEY{Language} \STRING{OCaml Light}$$

# $$\SECT{4}$$ Type expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{T} : \SYNDECL{typexpr}
      ~ ::= ~ &
      \LEX{\APOSTROPHE } ~ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident} \\
      ~ \mid ~ &  \LEX{\UNDERSCORE } \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{typexpr} ~ \LEX{)} \\
      ~ \mid ~ &  \SYNREF{typexpr} ~ \LEX{-{}>{}} ~ \SYNREF{typexpr} \\
      ~ \mid ~ &  \SYNREF{typexpr} ~ \SYNREF{star-typexpr}\PLUS \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-03-Names}{typeconstr} \\
      ~ \mid ~ &  \SYNREF{typexpr} ~ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{typexpr} ~ \SYNREF{comma-typexpr}\PLUS ~ \LEX{)} ~ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr}
    \\
    \VARDECL{ST} : \SYN{star-typexpr}
      ~ ::= ~ & \LEX{*{}} ~ \SYNREF{typexpr}
    \\
    \VARDECL{CT} : \SYN{comma-typexpr}
      ~ ::= ~ & \LEX{,{}} ~ \SYNREF{typexpr}
    \\
    \VARDECL{PT} : \SYNDECL{poly-typexpr}
      ~ ::= ~ &
      \SYNREF{typexpr} \\
      ~ \mid ~ &  \LEFTGROUP \LEX{\APOSTROPHE } ~ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident} \RIGHTGROUP\PLUS ~ \LEX{.{}} ~ \SYNREF{typexpr}
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

[OC-L-04-Type-Expressions.cbs]: /CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
