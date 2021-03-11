$$\KEY{Language} \STRING{OCaml Light}$$

# $$\SECT{11}$$ Module implementations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{UI} : \SYN{unit-implementation}
      ~ ::= ~ & \LEFTGROUP \SYNREF{semicolon-pair}\STAR ~ \SYNREF{module-items} ~ \SYNREF{semicolon-pair}\STAR \RIGHTGROUP\QUERY
    \\
    \VARDECL{MIS} : \SYNDECL{module-items}
      ~ ::= ~ &
      \SYNREF{definition} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \\
      ~ \mid ~ &  \SYNREF{module-items} ~ \SYNREF{semicolon-pair}\STAR ~ \SYNREF{module-item}
    \\
    \VARDECL{MI} : \SYNDECL{module-item}
      ~ ::= ~ &
      \SYNREF{definition} \\
      ~ \mid ~ &  \SYNREF{semicolon-pair} ~ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}
    \\
    \VARDECL{D} : \SYNDECL{definition}
      ~ ::= ~ &
      \SYNHYPER{../.}{OC-L-07-Expressions}{let-definition} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{type-definition} \\
      ~ \mid ~ &  \SYNHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{exception-definition}
\\
  \KEY{Lexis} ~ 
    \VARDECL{SCP} : \SYN{semicolon-pair}
      ~ ::= ~ & \LEX{;{};{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{interpret} \LEFTPHRASE ~ \VARREF{UI} : \SYNREF{unit-implementation} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{interpret} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{interpret} \LEFTPHRASE ~ \VARREF{SCP}\SUB{1}\STAR ~ \VARREF{MIS} ~ \VARREF{SCP}\SUB{2}\STAR ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
           (\NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-core-library}, \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{accumulate}
              (\SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VAR{MIS} ~ \RIGHTPHRASE )), \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
              (\STRING{Uncaught~exception:{}~}, \\&\quad \quad \quad \quad 
               \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-to-string} ~
                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
               \STRING{\BACKSLASH n}), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
              ( ~ )))
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{define-or-evaluate-items} \LEFTPHRASE ~ \_ : \SYNREF{module-items} ~ \RIGHTPHRASE  : ( \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs})\PLUS 
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-07-Expressions}{LD} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-define-and-display} ~
        \SEMHYPER{../.}{OC-L-07-Expressions}{define-values} \LEFTPHRASE ~ \VAR{LD} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{TDS} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{define-types} \LEFTPHRASE ~ \VAR{TDS} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{ED} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{define-exception} \LEFTPHRASE ~ \VAR{ED} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARHYPER{../.}{OC-L-07-Expressions}{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-evaluate-and-display} ~
        \SEMHYPER{../.}{OC-L-07-Expressions}{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARREF{MIS} ~ \VARREF{SCP}\STAR ~ \VARREF{D} ~ \RIGHTPHRASE  = \\&\quad
      (\SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VAR{MIS} ~ \RIGHTPHRASE , \\&\quad 
       \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VAR{D} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VARREF{MIS} ~ \VARREF{SCP}\STAR ~ \VARREF{SCP} ~ \VARHYPER{../.}{OC-L-07-Expressions}{E} ~ \RIGHTPHRASE  = \\&\quad
      (\SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VAR{MIS} ~ \RIGHTPHRASE , \\&\quad 
       \SEMREF{define-or-evaluate-items} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
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
