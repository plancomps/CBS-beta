---
title: "IMP-Disambiguation"
math: katex
parent: IMP
ancestor: Languages-beta

---
[Languages-beta] : [IMP-Disambiguation.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$

>    lexical syntax \\
>      $$\SHADE{\SYNHYPER{../.}{IMP-1}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{IMP-1}{keyword}}$$ {reject}\\
>    lexical restrictions\\
>      $$\SHADE{\SYNHYPER{../.}{IMP-1}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMP-1}{aexp}  \ ::= \  \  \SYNHYPER{../.}{IMP-1}{aexp} \ \LEX{{+}} \ \SYNHYPER{../.}{IMP-1}{aexp}}$$  {assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMP-2}{bexp}  \ ::= \  \  \SYNHYPER{../.}{IMP-2}{bexp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{IMP-2}{bexp}}$$ {assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMP-3}{stmt}  \ ::= \  \  \SYNHYPER{../.}{IMP-3}{stmt} \ \SYNHYPER{../.}{IMP-3}{stmt}}$$      {right}



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
[IMP-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation/IMP-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-Disambiguation/IMP-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMP/IMP-Disambiguation/IMP-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
