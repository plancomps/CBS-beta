$$\KEY{Language} \STRING{MiniJava}$$





  [The MiniJava Reference Manual]: 
    http://www.cambridge.org/us/features/052182060X/mjreference/mjreference.html
  
  [Modern Compiler Implementation in Java: the MiniJava Project]:
    http://www.cambridge.org/us/features/052182060X/
  
  The grammar used here is mostly a transliteration of the one provided at:
  http://www.cambridge.org/us/features/052182060X/grammar.html
  (which differs in trivial ways from the one in the cited reference manual).
  
  The rest of this file gives an overview of the MiniJava syntax. It is mostly
  in the form of a comment with embedded productions. The nonterminal symbols
  are hyperlinks to their actual specifications; similarly, section numbers
  (such as '#1 ' below) link to the corresponding specification section.

#1 Programs

Syntax
???
#2 Declarations
???
#3 Statements
$$\SHADE{\VARDECL{S} : \SYNDECL{statement}  ~ ::= ~ &  \LEX{\LEFTBRACE } ~ \SYN{statement}\STAR ~ \LEX{\RIGHTBRACE } \\  ~ \mid ~ &  \LEX{if} ~ \LEX{(} ~ \SYN{expression} ~ \LEX{)} ~ \SYN{statement} ~ \LEX{else} ~ \SYN{statement} \\  ~ \mid ~ &  \LEX{while} ~ \LEX{(} ~ \SYN{expression} ~ \LEX{)} ~ \SYN{statement} \\  ~ \mid ~ &  \LEX{System} ~ \LEX{.{}} ~ \LEX{out} ~ \LEX{.{}} ~ \LEX{println} ~ \LEX{(} ~ \SYN{expression} ~ \LEX{)} ~ \LEX{;{}} \\  ~ \mid ~ &  \SYN{identifier} ~ \LEX{={}} ~ \SYN{expression} ~ \LEX{;{}} \\  ~ \mid ~ &  \SYN{identifier} ~ \LEX{[{}} ~ \SYN{expression} ~ \LEX{]{}} ~ \LEX{={}} ~ \SYN{expression} ~ \LEX{;{}}}$$
#4 Expressions
???
#5 Lexemes

Lexis
???


# $$\SECT{6}$$ Disambiguation
           



  The mixture of CBS and SDF below specifies how MiniJava texts are to
  be disambiguated by parsers generated from the above grammar.
  
  The specified rules are adequate to disambiguate all the example programs
  provided at http://www.cambridge.org/us/features/052182060X/#progs


\$$\KEY{Syntax SDF}$$
> context-free syntax\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{*{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{+{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{-{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{<{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {non-assoc}\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$ {left}\\
> \\
> context-free priorities\\
> {\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{.{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{identifier} ~ \LEX{(} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression-list}\QUERY ~ \LEX{)}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{[{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{]{}}}$$\\
> } <0> >\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \LEX{!{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
> >\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{*{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
> > {\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{+{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{-{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
> } >\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{<{}} ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$\\
> >\\
> $$\SHADE{ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}  ~ ::= ~  \SYNHYPER{../.}{MiniJava-Dynamics}{expression} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNHYPER{../.}{MiniJava-Dynamics}{expression}}$$

\$$\KEY{Lexis SDF}$$
> lexical restrictions\\
> $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{identifier}}$$      -/- [a-zA-Z0-9\_]\\
> $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{integer-literal}}$$ -/- [0-9]\\
> \\
> lexical syntax\\
> $$\SHADE{\SYNHYPER{../.}{MiniJava-Dynamics}{identifier}}$$ = $$\SHADE{\SYNREF{reserved-id}}$$ {reject}

$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
     \SYNDECL{reserved-id}
      ~ ::= ~ &
      \LEX{String} \\
      ~ \mid ~ &  \LEX{System} \\
      ~ \mid ~ &  \LEX{boolean} \\
      ~ \mid ~ &  \LEX{class} \\
      ~ \mid ~ &  \LEX{else} \\
      ~ \mid ~ &  \LEX{extends} \\
      ~ \mid ~ &  \LEX{false} \\
      ~ \mid ~ &  \LEX{if} \\
      ~ \mid ~ &  \LEX{int} \\
      ~ \mid ~ &  \LEX{length} \\
      ~ \mid ~ &  \LEX{main} \\
      ~ \mid ~ &  \LEX{new} \\
      ~ \mid ~ &  \LEX{out} \\
      ~ \mid ~ &  \LEX{println} \\
      ~ \mid ~ &  \LEX{public} \\
      ~ \mid ~ &  \LEX{return} \\
      ~ \mid ~ &  \LEX{static} \\
      ~ \mid ~ &  \LEX{this} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \LEX{void}
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
