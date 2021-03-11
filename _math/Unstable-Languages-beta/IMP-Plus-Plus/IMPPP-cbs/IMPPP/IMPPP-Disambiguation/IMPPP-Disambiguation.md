$$\KEY{Language} \STRING{IMPPP}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$
> lexical syntax \\
>   $$\SHADE{~~\SYNHYPER{../.}{IMPPP-1}{id}}$$ = $$\SHADE{\SYNHYPER{../.}{IMPPP-1}{keyword}}$$ {reject}\\
> lexical restrictions\\
>   $$\SHADE{~~\SYNHYPER{../.}{IMPPP-1}{id}}$$ -/- [A-Za-z0-9]

\$$\KEY{Syntax SDF}$$
> context-free syntax\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-2}{aexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-2}{aexp} ~ \LEX{+{}} ~ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$  {assoc}\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-3}{bexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-3}{bexp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$ {assoc}\\
> \\
> context-free priorities\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-2}{aexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-2}{aexp} ~ \LEX{/{}} ~ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
> >\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-2}{aexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-2}{aexp} ~ \LEX{+{}} ~ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
> >\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-2}{aexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-1}{id} ~ \LEX{={}} ~ \SYNHYPER{../.}{IMPPP-2}{aexp}}$$\\
> \\
> context-free priorities\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-3}{bexp}  ~ ::= ~  \LEX{!{}} ~ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$\\
> >\\
> $$\SHADE{ \SYNHYPER{../.}{IMPPP-3}{bexp}  ~ ::= ~  \SYNHYPER{../.}{IMPPP-3}{bexp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{IMPPP-3}{bexp}}$$



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
