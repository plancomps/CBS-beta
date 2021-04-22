{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{OCaml Light}$$

# $$\SECT{11}$$ Module implementations {#SectionNumber:11}


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{UI} : \SYNDECL{unit-implementation}
      \ ::= \ & \
      \LEFTGROUP \SYNREF{semicolon-pair}\STAR \ \SYNREF{module-items} \ \SYNREF{semicolon-pair}\STAR \RIGHTGROUP\QUERY
    \\
    \VARDECL{MIS} : \SYNDECL{module-items}
      \ ::= \ & \
      \SYNREF{definition} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \\
      \ \mid \ & \ \SYNREF{module-items} \ \SYNREF{semicolon-pair}\STAR \ \SYNREF{module-item}
    \\
    \VARDECL{MI} : \SYNDECL{module-item}
      \ ::= \ & \
      \SYNREF{definition} \\
      \ \mid \ & \ \SYNREF{semicolon-pair} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}
    \\
    \VARDECL{D} : \SYNDECL{definition}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-07-Expressions}{let-definition} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{type-definition} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{exception-definition}
\\
  \KEY{Lexis} \quad
    \VARDECL{SCP} : \SYNDECL{semicolon-pair}
      \ ::= \ & \
      \LEX{{;}{;}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{interpret} \LEFTPHRASE \ \VARREF{UI} : \SYNREF{unit-implementation} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{interpret} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{interpret} \LEFTPHRASE \
                            \VARREF{SCP}\SUB{1}\STAR \ \VARREF{MIS} \ \VARREF{SCP}\SUB{2}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                ( \\&\quad\quad\quad \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-core-library}, \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{accumulate}
                        (  \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                                                    \VAR{MIS} \
                                                  \RIGHTPHRASE  ) ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
                        (  \STRING{Uncaught~exception{:}~}, 
                               \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-to-string} \ 
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                               \STRING{{\BACKSLASH}n} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
                        (   \  ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-or-evaluate-items} \LEFTPHRASE \ \_ : \SYNREF{module-items} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-07-Expressions}{LD} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-define-and-display} \ 
        \SEMHYPER{../.}{OC-L-07-Expressions}{define-values} \LEFTPHRASE \
                              \VAR{LD} \
                            \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{TDS} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{define-types} \LEFTPHRASE \
                            \VAR{TDS} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{ED} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{define-exception} \LEFTPHRASE \
                            \VAR{ED} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-07-Expressions}{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-evaluate-and-display} \ 
        \SEMHYPER{../.}{OC-L-07-Expressions}{evaluate} \LEFTPHRASE \
                              \VAR{E} \
                            \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARREF{MIS} \ \VARREF{SCP}\STAR \ \VARREF{D} \
                          \RIGHTPHRASE  = \\&\quad
      (  \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                                  \VAR{MIS} \
                                \RIGHTPHRASE , 
             \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                                  \VAR{D} \
                                \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                            \VARREF{MIS} \ \VARREF{SCP}\STAR \ \VARREF{SCP} \ \VARHYPER{../.}{OC-L-07-Expressions}{E} \
                          \RIGHTPHRASE  = \\&\quad
      (  \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                                  \VAR{MIS} \
                                \RIGHTPHRASE , 
             \SEMREF{define-or-evaluate-items} \LEFTPHRASE \
                                  \VAR{E} \
                                \RIGHTPHRASE  )
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
[OC-L-11-Module-Implementations.cbs]: https://github.com/plancomps/CBS-beta/blob/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-11-Module-Implementations/OC-L-11-Module-Implementations.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-11-Module-Implementations
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-11-Module-Implementations
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-11-Module-Implementations/OC-L-11-Module-Implementations.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}