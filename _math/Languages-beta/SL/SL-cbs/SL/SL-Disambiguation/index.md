---
title: "SL-Disambiguation"
math: katex
parent: SL
ancestor: Languages-beta

---
[Languages-beta] : [SL-Disambiguation.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SL}$$

# $$\SECT{A}$$ Disambiguation
           



  Specification of disambiguation for parsing currently requires direct use of
  the corresponding SDF3 notation in comments, along with embedded productions
  in CBS notation. The well-formedness of the SDF3 notation is not checked.
  A future version of CBS is to include appropriate constructs for specifying
  disambiguation.


\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{+}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{/}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{*}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{-}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{=}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{<}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{!}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{>}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{>}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$          {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{|}{|}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$         {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$            {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$   {right}\\
>    \\
>    context-free priorities\\
>    \\
>      {left: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{(}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr-list}\QUERY \ \LEX{{)}}}$$  \\
>      }\\
>      > \\
>      {right: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \LEX{{!}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>      }\\
>      > \\
>      {left: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{*}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>      }\\
>      > \\
>      {non-assoc: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{=}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{<}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{!}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{>}{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{>}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>      }\\
>      > \\
>      {left: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{+}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{-}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{|}{|}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>      }\\
>      > \\
>      {right: \\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>        $$\SHADE{ \SYNHYPER{../.}{SL-2-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{SL-2-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{SL-2-Expressions}{expr}}$$\\
>      }

\$$\KEY{Lexis SDF}$$

>    lexical syntax\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "function" {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "true"     {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "false"    {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "return"   {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "break"    {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "continue" {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "while"    {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "if"       {reject}\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$ = "else"     {reject}\\
>    \\
>    lexical restrictions\\
>    // Ensure greedy matching for lexicals\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{nat}}$$ -/- [0-9]\\
>    $$\SHADE{\SYNHYPER{../.}{SL-1-Lexemes}{id}}$$  -/- [a-zA-Z0-9\_]



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
[SL-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Disambiguation/SL-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Disambiguation/SL-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-Disambiguation/SL-Disambiguation.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
