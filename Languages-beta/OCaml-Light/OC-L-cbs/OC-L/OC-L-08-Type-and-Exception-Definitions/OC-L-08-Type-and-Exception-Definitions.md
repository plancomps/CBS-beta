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

# $$\SECT{8}$$ Type and exception definitions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{TDS} : \SYN{type-definition}
      \ ::= \ & \
      \LEX{type} \ \SYNREF{typedef} \ \SYNREF{and-typedef}\STAR
    \\
    \VARDECL{ATD} : \SYN{and-typedef}
      \ ::= \ & \
      \LEX{and} \ \SYNREF{typedef}
    \\
    \VARDECL{TD} : \SYN{typedef}
      \ ::= \ & \
      \SYNREF{type-params}\QUERY \ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr-name} \ \SYNREF{type-information}
    \\
    \VARDECL{TI} : \SYN{type-information}
      \ ::= \ & \
      \SYNREF{type-equation}\QUERY \ \SYNREF{type-representation}\QUERY \ \SYNREF{type-constraint}\STAR
    \\
    \VARDECL{TE} : \SYN{type-equation}
      \ ::= \ & \
      \LEX{{=}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}
    \\
    \VARDECL{TR} : \SYN{type-representation}
      \ ::= \ & \
      \LEX{{=}} \ \LEX{{|}}\QUERY \ \SYNREF{constr-decl} \ \SYNREF{bar-constr-decl}\STAR \\
      \ \mid \ & \ \LEX{{=}} \ \SYNREF{record-decl}
    \\
    \VARDECL{BCD} : \SYN{bar-constr-decl}
      \ ::= \ & \
      \LEX{{|}} \ \SYNREF{constr-decl}
    \\
    \VARDECL{TPS} : \SYN{type-params}
      \ ::= \ & \
      \SYNREF{type-param} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{type-param} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{type-param} \RIGHTGROUP\STAR \ \LEX{{)}}
    \\
    \VARDECL{TP} : \SYN{type-param}
      \ ::= \ & \
      \SYNREF{variance}\QUERY \ \LEX{{\APOSTROPHE}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident}
    \\
     \SYN{variance}
      \ ::= \ & \
      \LEX{{+}} \mid \LEX{{-}}
    \\
    \VARDECL{RD} : \SYN{record-decl}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{field-decl} \ \LEFTGROUP \LEX{{;}} \ \SYNREF{field-decl} \RIGHTGROUP\STAR \ \LEX{{;}}\QUERY \ \LEX{{\RIGHTBRACE}}
    \\
    \VARDECL{CD} : \SYN{constr-decl}
      \ ::= \ & \
      \LEFTGROUP \SYNHYPER{../.}{OC-L-03-Names}{constr-name} \mid \LEX{{[}} \ \LEX{{]}} \mid \LEX{{(}{:}{:}{)}} \RIGHTGROUP \ \LEFTGROUP \LEX{of} \ \SYNREF{constr-args} \RIGHTGROUP\QUERY
    \\
    \VARDECL{CA} : \SYN{constr-args}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}\STAR
    \\
    \VARDECL{FD} : \SYN{field-decl}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-03-Names}{field-name} \ \LEX{{:}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{poly-typexpr}
    \\
    \VARDECL{ED} : \SYN{exception-definition}
      \ ::= \ & \
      \LEX{exception} \ \SYNREF{constr-decl} \\
      \ \mid \ & \ \LEX{exception} \ \SYNHYPER{../.}{OC-L-03-Names}{constr-name} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-03-Names}{constr}
    \\
    \VARDECL{TC} : \SYN{type-constraint}
      \ ::= \ & \
      \LEX{constraint} \ \LEX{{\APOSTROPHE}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}
\end{align*}$$

## Type definitions
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-types} \LEFTPHRASE \ \_ : \SYNREF{type-definition} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-types} \LEFTPHRASE \
                            \LEX{type} \ \VARREF{TD} \ \VARREF{ATD}\STAR \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{define-typedefs} \LEFTPHRASE \
                                    \VAR{TD} \ \VAR{ATD}\STAR \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-typedefs} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{typedef} \ \SYNREF{and-typedef}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VARREF{TD}\SUB{1} \ \LEX{and} \ \VARREF{TD}\SUB{2} \ \VARREF{ATD}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VAR{TD}\SUB{2} \
                          \RIGHTPHRASE , 
       \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VAR{TD}\SUB{2} \ \VAR{ATD}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VARREF{TPS}\QUERY \ \VARHYPER{../.}{OC-L-03-Names}{TCN} \ \LEX{{=}} \ \VARREF{CD} \ \VARREF{BCD}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{define-constrs} \LEFTPHRASE \
                            \VAR{CD} \ \VAR{BCD}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VARREF{TPS}\QUERY \ \VARHYPER{../.}{OC-L-03-Names}{TCN} \ \LEX{{=}} \ \VARREF{RD} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{define-typedefs} \LEFTPHRASE \
                            \VARREF{TPS}\QUERY \ \VARHYPER{../.}{OC-L-03-Names}{TCN} \ \LEX{{=}} \ \VARHYPER{../.}{OC-L-04-Type-Expressions}{T} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-constrs} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{constr-decl} \ \SYNREF{bar-constr-decl}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-constrs} \LEFTPHRASE \
                            \VARREF{CD}\SUB{1} \ \LEX{{|}} \ \VARREF{CD}\SUB{2} \ \VARREF{BCD}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{define-constrs} \LEFTPHRASE \
                            \VAR{CD}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{define-constrs} \LEFTPHRASE \
                            \VAR{CD}\SUB{2} \ \VAR{BCD}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-constrs} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{CN} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                               \VAR{CN} \
                             \RIGHTPHRASE  \mapsto 
           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variant}
             (  \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                                         \VAR{CN} \
                                       \RIGHTPHRASE , 
                    \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                     (   \  ) ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{define-constrs} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{CN} \ \LEX{of} \ \VARREF{CA} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                               \VAR{CN} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
             \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
               (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variant}
                       (  \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                                                   \VAR{CN} \
                                                 \RIGHTPHRASE , 
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) \}
\end{align*}$$

## Exception definitions
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-exception} \LEFTPHRASE \ \_ : \SYNREF{exception-definition} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-exception} \LEFTPHRASE \
                            \LEX{exception} \ \VARREF{CD} \
                          \RIGHTPHRASE  = 
      \SEMREF{define-constrs} \LEFTPHRASE \
                            \VAR{CD} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-exception} \LEFTPHRASE \
                            \LEX{exception} \ \VARHYPER{../.}{OC-L-03-Names}{CN} \ \LEX{{=}} \ \VARHYPER{../.}{OC-L-03-Names}{CSTR} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
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
[OC-L-08-Type-and-Exception-Definitions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-08-Type-and-Exception-Definitions/OC-L-08-Type-and-Exception-Definitions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-08-Type-and-Exception-Definitions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-08-Type-and-Exception-Definitions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-08-Type-and-Exception-Definitions/OC-L-08-Type-and-Exception-Definitions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
