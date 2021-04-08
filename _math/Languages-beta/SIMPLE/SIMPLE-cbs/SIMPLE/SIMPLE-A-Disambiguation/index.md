---
title: "SIMPLE-A-Disambiguation"
math: katex
parent: SIMPLE
ancestor: Languages-beta

---
[Languages-beta] : [SIMPLE-A-Disambiguation.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$

>    lexical syntax \\
>      $$\SHADE{\SYNHYPER{../.}{SIMPLE-1-Lexical}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{SIMPLE-1-Lexical}{keyword}}$$ {reject}\\
>    \\
>    lexical restrictions\\
>      $$\SHADE{\SYNHYPER{../.}{SIMPLE-1-Lexical}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{*}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{/}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{\PERCENT}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>      \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{+}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{-}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>      \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{|}{|}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$ {left}\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exps}\QUERY \ \LEX{{)}}}$$\\
>    } >\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \LEX{{-}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \LEX{{+}{+}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{lexp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \LEX{{!}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {left: \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{*}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{/}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{\PERCENT}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {left: \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{+}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{-}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {non-assoc: \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{<}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{>}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{>}{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{=}{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{!}{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {assoc: \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {assoc: \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{|}{|}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    } >\\
>    {       \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}  \ ::= \  \  \SYNHYPER{../.}{SIMPLE-2-Expressions}{lexp} \ \LEX{{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}}$$\\
>    }



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
[SIMPLE-A-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-A-Disambiguation/SIMPLE-A-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-A-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-A-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-A-Disambiguation/SIMPLE-A-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-A-Disambiguation/SIMPLE-A-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
