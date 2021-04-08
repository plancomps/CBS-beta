---
title: "IMPPP-Disambiguation"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [IMPPP-Disambiguation.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMPPP}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$

>    lexical syntax \\
>      $$\SHADE{\SYNHYPER{../.}{IMPPP-1}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{IMPPP-1}{keyword}}$$ {reject}\\
>    lexical restrictions\\
>      $$\SHADE{\SYNHYPER{../.}{IMPPP-1}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-2}{aexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{+}} \ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$  {assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-3}{bexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-3}{bexp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$ {assoc}\\
>    \\
>    context-free priorities\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-2}{aexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{/}} \ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-2}{aexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{+}} \ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-2}{aexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-1}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
>    \\
>    context-free priorities\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-3}{bexp}  \ ::= \  \  \LEX{{!}} \ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{IMPPP-3}{bexp}  \ ::= \  \  \SYNHYPER{../.}{IMPPP-3}{bexp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$



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
[IMPPP-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Disambiguation/IMPPP-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Disambiguation/IMPPP-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-Disambiguation/IMPPP-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
