{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

$$\KEY{Language} \quad \STRING{LD}$$

# $$\SECT{A}$$ Disambiguation
           


## $$\SECT{A.1}$$ Lexical constructs
           


\$$\KEY{Lexis SDF}$$

>    lexical syntax\\
>      $$\SHADE{\SYNHYPER{../.}{LD-Start}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{LD-Start}{keyword}}$$ {reject}\\
>    \\
>    lexical restrictions\\
>      $$\SHADE{\SYNHYPER{../.}{LD-Start}{id}}$$  -/- [a-z0-9]\\
>      $$\SHADE{\SYNHYPER{../.}{LD-Start}{int}}$$ -/- [0-9]

\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{start}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp}}$$ {prefer}

## $$\SECT{A.2}$$ Call-by-value lambda-calculus
           


\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{lambda} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{.}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {longest-match}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{let} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{in} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {longest-match}\\
>    \\
>    context-free priorities\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{lambda} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{.}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{let} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{in} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    }

## $$\SECT{A.3}$$ Arithmetic and Boolean expressions
           


\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{+}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{*}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{/}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{if} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{then} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{else} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {longest-match}\\
>    \\
>    context-free priorities\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \>\\
>    {left:\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{*}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{/}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    } >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{+}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{lambda} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{.}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{let} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{in} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    }

## $$\SECT{A.4}$$ References and imperatives
           


\$$\KEY{Syntax SDF}$$

>    context-free syntax\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{:}{=}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{;}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{while} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{do} \ \SYNHYPER{../.}{LD-Start}{exp}}$$ {longest-match}\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{ref} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{{!}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    }>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \\
>    context-free priorities\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{:}{=}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{lambda} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{.}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{while} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{do} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    } >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{;}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{let} \ \SYNHYPER{../.}{LD-Start}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{in} \ \SYNHYPER{../.}{LD-Start}{exp}}$$

## $$\SECT{A.5}$$ Multithreading
           


\$$\KEY{Syntax SDF}$$

>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{spawn} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \LEX{join} \ \SYNHYPER{../.}{LD-Start}{exp}}$$\\
>    }\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{LD-Start}{exp}  \ ::= \  \  \SYNHYPER{../.}{LD-Start}{exp} \ \LEX{{;}} \ \SYNHYPER{../.}{LD-Start}{exp}}$$



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
[LD-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation/LD-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Disambiguation/LD-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
