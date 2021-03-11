---
layout: default
title: "SIMPLE-THR-A-Disambiguation"
math: katex
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-A-Disambiguation.cbs]

$$\KEY{Language} \STRING{SIMPLE-THR}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$
> lexical syntax\\
>   $$\SHADE{~~\SYNHYPER{../.}{SIMPLE-THR-1-Lexical}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{SIMPLE-THR-1-Lexical}{keyword}}$$ {reject}\\
> \\
> lexical restrictions\\
>   $$\SHADE{~~\SYNHYPER{../.}{SIMPLE-THR-1-Lexical}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$
> context-free syntax\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{*{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{/{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{\PERCENT } ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> \\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{+{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{-{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> \\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{||} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$ {left}\\
> \\
> context-free priorities\\
> {\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{(} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exps}\QUERY ~ \LEX{)}}$$\\
> } >\\
> {\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \LEX{-{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \LEX{+{}+{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{lexp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \LEX{!{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {left:\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{*{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{/{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{\PERCENT } ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {left:\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{+{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{-{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {non-assoc:\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{<{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{<{}={}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{>{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{>{}={}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{={}={}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{!{}={}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {assoc:\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {assoc:\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{||} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> } >\\
> {\\
> $$\SHADE{ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}  ~ ::= ~  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{lexp} ~ \LEX{={}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}}$$\\
> }



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

[SIMPLE-THR-A-Disambiguation.cbs]: /CBS-beta/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-A-Disambiguation/SIMPLE-THR-A-Disambiguation.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-A-Disambiguation/SIMPLE-THR-A-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
