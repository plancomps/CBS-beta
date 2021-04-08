{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{OCaml Light}$$

# $$\SECT{4}$$ Type expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{T} : \SYN{typexpr}
      \ ::= \ & \
      \LEX{{\APOSTROPHE}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident} \\
      \ \mid \ & \ \LEX{{\UNDERSCORE}} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{typexpr} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{typexpr} \ \LEX{{-}{>}} \ \SYNREF{typexpr} \\
      \ \mid \ & \ \SYNREF{typexpr} \ \SYNREF{star-typexpr}\PLUS \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr} \\
      \ \mid \ & \ \SYNREF{typexpr} \ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{typexpr} \ \SYNREF{comma-typexpr}\PLUS \ \LEX{{)}} \ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr}
    \\
    \VARDECL{ST} : \SYN{star-typexpr}
      \ ::= \ & \
      \LEX{{*}} \ \SYNREF{typexpr}
    \\
    \VARDECL{CT} : \SYN{comma-typexpr}
      \ ::= \ & \
      \LEX{{,}} \ \SYNREF{typexpr}
    \\
    \VARDECL{PT} : \SYN{poly-typexpr}
      \ ::= \ & \
      \SYNREF{typexpr} \\
      \ \mid \ & \ \LEFTGROUP \LEX{{\APOSTROPHE}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident} \RIGHTGROUP\PLUS \ \LEX{{.}} \ \SYNREF{typexpr}
\end{align*}$$



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
[OC-L-04-Type-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-04-Type-Expressions/OC-L-04-Type-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
