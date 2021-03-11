$$\KEY{Language} \STRING{IMP}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$
> lexical syntax \\
>   $$\SHADE{~~\SYNHYPER{../.}{IMP-1}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{IMP-1}{keyword}}$$ {reject}\\
> lexical restrictions\\
>   $$\SHADE{~~\SYNHYPER{../.}{IMP-1}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$
> context-free syntax\\
> $$\SHADE{ \SYNHYPER{../.}{IMP-1}{aexp}  ~ ::= ~  \SYNHYPER{../.}{IMP-1}{aexp} ~ \LEX{+{}} ~ \SYNHYPER{../.}{IMP-1}{aexp}}$$  {assoc}\\
> $$\SHADE{ \SYNHYPER{../.}{IMP-2}{bexp}  ~ ::= ~  \SYNHYPER{../.}{IMP-2}{bexp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{IMP-2}{bexp}}$$ {assoc}\\
> $$\SHADE{ \SYNHYPER{../.}{IMP-3}{stmt}  ~ ::= ~  \SYNHYPER{../.}{IMP-3}{stmt} ~ \SYNHYPER{../.}{IMP-3}{stmt}}$$      {right}



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
