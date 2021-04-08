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

$$\KEY{Language} \quad \STRING{OCaml Light}$$

# $$\SECT{6}$$ Patterns
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{P} : \SYN{pattern}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-03-Names}{value-name} \\
      \ \mid \ & \ \LEX{{\UNDERSCORE}} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-05-Constants}{constant} \\
      \ \mid \ & \ \SYNREF{pattern} \ \LEX{as} \ \SYNHYPER{../.}{OC-L-03-Names}{value-name} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{pattern} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{pattern} \ \LEX{{:}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{pattern} \ \LEX{{|}} \ \SYNREF{pattern} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-03-Names}{constr} \ \SYNREF{pattern} \\
      \ \mid \ & \ \SYNREF{pattern} \ \SYNREF{comma-pattern}\PLUS \\
      \ \mid \ & \ \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{pattern} \ \SYNREF{semic-field-pattern}\STAR \ \LEX{{;}}\QUERY \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{{[}} \ \SYNREF{pattern} \ \SYNREF{semic-pattern}\STAR \ \LEX{{;}}\QUERY \ \LEX{{]}} \\
      \ \mid \ & \ \SYNREF{pattern} \ \LEX{{:}{:}} \ \SYNREF{pattern}
    \\
    \VARDECL{CP} : \SYN{comma-pattern}
      \ ::= \ & \
      \LEX{{,}} \ \SYNREF{pattern}
    \\
    \VARDECL{SP} : \SYN{semic-pattern}
      \ ::= \ & \
      \LEX{{;}} \ \SYNREF{pattern}
    \\
    \VARDECL{SFP} : \SYN{semic-field-pattern}
      \ ::= \ & \
      \LEX{{;}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{pattern}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{P} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{pattern} = 
      \LEFTPHRASE \
        \VAR{P} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{P} \ \LEX{{:}} \ \VARHYPER{../.}{OC-L-04-Type-Expressions}{T} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{pattern} = 
      \LEFTPHRASE \
        \VAR{P} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{P} \ \VARREF{SFP}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE : \SYNREF{pattern} = 
      \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VAR{F} \ \LEX{{=}} \ \VAR{P} \ \VAR{SFP}\STAR \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{[}} \ \VARREF{P} \ \VARREF{SP}\STAR \ \LEX{{;}} \ \LEX{{]}} \
      \RIGHTPHRASE : \SYNREF{pattern} = 
      \LEFTPHRASE \
        \LEX{{[}} \ \VAR{P} \ \VAR{SP}\STAR \ \LEX{{]}} \
      \RIGHTPHRASE
\end{align*}$$

## Pattern evaluation
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-pattern} \LEFTPHRASE \ \_ : \SYNREF{pattern} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{VN} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-bind}
        (  \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                                    \VAR{VN} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \LEX{{\UNDERSCORE}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-any}
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-05-Constants}{CNST} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{OC-L-05-Constants}{value} \LEFTPHRASE \
                            \VAR{CNST} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARREF{P} \ \LEX{as} \ \VARHYPER{../.}{OC-L-03-Names}{VN} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-unite}
        (  \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                    \VAR{P} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-bind}
                (  \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                                            \VAR{VN} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARREF{P}\SUB{1} \ \LEX{{|}} \ \VARREF{P}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-else}
        (  \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                    \VAR{P}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                    \VAR{P}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{CSTR} \ \VARREF{P} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variant}
        (  \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                                    \VAR{CSTR} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                    \VAR{P} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARREF{P}\SUB{1} \ \LEX{{,}} \ \VARREF{P}\SUB{2} \ \VARREF{CP}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
        (  \SEMREF{evaluate-comma-pattern-sequence} \LEFTPHRASE \
                                    \VAR{P}\SUB{1} \ \LEX{{,}} \ \VAR{P}\SUB{2} \ \VAR{CP}\STAR \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{P} \ \VARREF{SFP}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match-loosely}
                  ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record}
                          (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
                                  (  \SEMREF{evaluate-field-pattern-sequence} \LEFTPHRASE \
                                                              \VAR{F} \ \LEX{{=}} \ \VAR{P} \ \VAR{SFP}\STAR \
                                                            \RIGHTPHRASE  ) ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \LEX{{[}} \ \VARREF{P} \ \VARREF{SP}\STAR \ \LEX{{]}} \
                          \RIGHTPHRASE  = \\&\quad
      [  \SEMREF{evaluate-semic-pattern-sequence} \LEFTPHRASE \
                                  \VAR{P} \ \VAR{SP}\STAR \
                                \RIGHTPHRASE  ]
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VARREF{P}\SUB{1} \ \LEX{{:}{:}} \ \VARREF{P}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                  ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                          (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                 [   \  ] ), \\&\quad\quad\quad
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}, \\&\quad\quad\quad
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                          ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                                  (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head}
                                          (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), 
                                         \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                                              \VAR{P}\SUB{1} \
                                                            \RIGHTPHRASE  ), \\&\quad\quad\quad\quad
                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                                  (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{tail}
                                          (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), 
                                         \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                                              \VAR{P}\SUB{2} \
                                                            \RIGHTPHRASE  ) ) ) )
\end{align*}$$

## Pattern sequence evaluation
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-comma-pattern-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{pattern} \ \SYNREF{comma-pattern}\STAR \RIGHTGROUP \ \RIGHTPHRASE  \\&\quad
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-comma-pattern-sequence} \LEFTPHRASE \
                            \VARREF{P}\SUB{1} \ \LEX{{,}} \ \VARREF{P}\SUB{2} \ \VARREF{CP}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VAR{P}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{evaluate-comma-pattern-sequence} \LEFTPHRASE \
                            \VAR{P}\SUB{2} \ \VAR{CP}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-comma-pattern-sequence} \LEFTPHRASE \
                            \VARREF{P} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VAR{P} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-semic-pattern-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{pattern} \ \SYNREF{semic-pattern}\STAR \RIGHTGROUP \ \RIGHTPHRASE  \\&\quad
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-semic-pattern-sequence} \LEFTPHRASE \
                            \VARREF{P}\SUB{1} \ \LEX{{;}} \ \VARREF{P}\SUB{2} \ \VARREF{SP}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VAR{P}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{evaluate-semic-pattern-sequence} \LEFTPHRASE \
                            \VAR{P}\SUB{2} \ \VAR{SP}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-semic-pattern-sequence} \LEFTPHRASE \
                            \VARREF{P} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate-pattern} \LEFTPHRASE \
                            \VAR{P} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-field-pattern-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{pattern} \ \SYNREF{semic-field-pattern}\STAR \RIGHTGROUP \ \RIGHTPHRASE  \\&\quad
    :  \TO (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}, 
                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} ) )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-field-pattern-sequence} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{F}\SUB{1} \ \LEX{{=}} \ \VARREF{P}\SUB{1} \ \LEX{{;}} \ \VARHYPER{../.}{OC-L-03-Names}{F}\SUB{2} \ \LEX{{=}} \ \VARREF{P}\SUB{2} \ \VARREF{SFP}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      ( \\&\quad \{ \SEMHYPER{../.}{OC-L-03-Names}{field-name} \LEFTPHRASE \
                                     \VAR{F}\SUB{1} \
                                   \RIGHTPHRASE  \mapsto 
                 \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                       \VAR{P}\SUB{1} \
                                     \RIGHTPHRASE  \}, \\&\quad
             \SEMREF{evaluate-field-pattern-sequence} \LEFTPHRASE \
                                  \VAR{F}\SUB{2} \ \LEX{{=}} \ \VAR{P}\SUB{2} \ \VAR{SFP}\STAR \
                                \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-field-pattern-sequence} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{P} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMHYPER{../.}{OC-L-03-Names}{field-name} \LEFTPHRASE \
                               \VAR{F} \
                             \RIGHTPHRASE  \mapsto 
           \SEMREF{evaluate-pattern} \LEFTPHRASE \
                                 \VAR{P} \
                               \RIGHTPHRASE  \}
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
[OC-L-06-Patterns.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-06-Patterns/OC-L-06-Patterns.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-06-Patterns
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-06-Patterns
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-06-Patterns/OC-L-06-Patterns.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
