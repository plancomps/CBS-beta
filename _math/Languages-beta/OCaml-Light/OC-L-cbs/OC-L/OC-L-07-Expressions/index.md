---
title: "OC-L-07-Expressions"
math: katex
parent: OC-L
ancestor: Languages-beta

---
[Languages-beta] : [OC-L-07-Expressions.cbs] \| [PLAIN] \| [PDF]

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

# $$\SECT{7}$$ Expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{E} : \SYN{expr}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-03-Names}{value-path} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-05-Constants}{constant} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{expr} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{begin} \ \SYNREF{expr} \ \LEX{end} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{expr} \ \LEX{{:}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNREF{comma-expr}\PLUS \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{:}{:}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{{[}} \ \SYNREF{expr} \ \SYNREF{semic-expr}\STAR \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{{[}} \ \SYNREF{expr} \ \SYNREF{semic-expr}\STAR \ \LEX{{;}} \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{{[}{|}} \ \SYNREF{expr} \ \SYNREF{semic-expr}\STAR \ \LEX{{|}{]}} \\
      \ \mid \ & \ \LEX{{[}{|}} \ \SYNREF{expr} \ \SYNREF{semic-expr}\STAR \ \LEX{{;}} \ \LEX{{|}{]}} \\
      \ \mid \ & \ \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr} \ \SYNREF{semic-field-expr}\STAR \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr} \ \SYNREF{semic-field-expr}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{{\LEFTBRACE}} \ \SYNREF{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr} \ \SYNREF{semic-field-expr}\STAR \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{{\LEFTBRACE}} \ \SYNREF{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr} \ \SYNREF{semic-field-expr}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNREF{argument}\PLUS \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{prefix-symbol} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{{-}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{{-}{.}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-1} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-2} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-3} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-4} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-5} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-6} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-7} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-8} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}{(}} \ \SYNREF{expr} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}{(}} \ \SYNREF{expr} \ \LEX{{)}} \ \LEX{{<}{-}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{if} \ \SYNREF{expr} \ \LEX{then} \ \SYNREF{expr} \ \LEFTGROUP \LEX{else} \ \SYNREF{expr} \RIGHTGROUP\QUERY \\
      \ \mid \ & \ \LEX{while} \ \SYNREF{expr} \ \LEX{do} \ \SYNREF{expr} \ \LEX{done} \\
      \ \mid \ & \ \LEX{for} \ \SYNHYPER{../.}{OC-L-03-Names}{value-name} \ \LEX{{=}} \ \SYNREF{expr} \ \LEFTGROUP \LEX{to} \mid \LEX{downto} \RIGHTGROUP \ \SYNREF{expr} \ \LEX{do} \ \SYNREF{expr} \ \LEX{done} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{;}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{match} \ \SYNREF{expr} \ \LEX{with} \ \SYNREF{pattern-matching} \\
      \ \mid \ & \ \LEX{function} \ \SYNREF{pattern-matching} \\
      \ \mid \ & \ \LEX{fun} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}\PLUS \ \LEX{{-}{>}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{try} \ \SYNREF{expr} \ \LEX{with} \ \SYNREF{pattern-matching} \\
      \ \mid \ & \ \SYNREF{let-definition} \ \LEX{in} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{assert} \ \SYNREF{expr}
    \\
    \VARDECL{A} : \SYN{argument}
      \ ::= \ & \
      \SYNREF{expr}
    \\
    \VARDECL{PM} : \SYN{pattern-matching}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{-}{>}} \ \SYNREF{expr} \ \SYNREF{pattern-expr}\STAR \\
      \ \mid \ & \ \LEX{{|}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{-}{>}} \ \SYNREF{expr} \ \SYNREF{pattern-expr}\STAR
    \\
    \VARDECL{LD} : \SYN{let-definition}
      \ ::= \ & \
      \LEX{let} \ \LEFTGROUP \LEX{rec} \RIGHTGROUP\QUERY \ \SYNREF{let-binding} \ \SYNREF{and-let-binding}\STAR
    \\
    \VARDECL{LB} : \SYN{let-binding}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-03-Names}{value-name} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}\PLUS \ \LEX{{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNHYPER{../.}{OC-L-03-Names}{value-name} \ \LEX{{:}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{poly-typexpr} \ \LEX{{=}} \ \SYNREF{expr}
    \\
    \VARDECL{ALB} : \SYN{and-let-binding}
      \ ::= \ & \
      \LEX{and} \ \SYNREF{let-binding}
    \\
    \VARDECL{CE} : \SYN{comma-expr}
      \ ::= \ & \
      \LEX{{,}} \ \SYNREF{expr}
    \\
    \VARDECL{SE} : \SYN{semic-expr}
      \ ::= \ & \
      \LEX{{;}} \ \SYNREF{expr}
    \\
    \VARDECL{SFE} : \SYN{semic-field-expr}
      \ ::= \ & \
      \LEX{{;}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr}
    \\
    \VARDECL{PE} : \SYN{pattern-expr}
      \ ::= \ & \
      \LEX{{|}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{-}{>}} \ \SYNREF{expr}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{begin} \ \VARREF{E} \ \LEX{end} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{E} \ \LEX{{:}} \ \VARHYPER{../.}{OC-L-04-Type-Expressions}{T} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARREF{E}\SUB{2} \ \VARREF{A} \ \VARREF{A}\STAR \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \ \LEX{{)}} \RIGHTGROUP \ \VAR{A} \ \VAR{A}\STAR \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{PS} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{PS} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{-}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \LEX{{\TILDE}{-}} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{-}{.}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \LEX{{\TILDE}{-}{.}} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-1} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-1} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-2} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-2} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-3} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-3} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-4} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-4} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-5} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-5} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \LEX{{\AMPERSAND}} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{E}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \LEX{or} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{E}\SUB{1} \ \LEX{{|}{|}} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \VARHYPER{../.}{OC-L-03-Names}{IO-8} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEFTGROUP \LEX{{(}} \ \VAR{IO-8} \ \LEX{{)}} \RIGHTGROUP \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \LEX{{.}{(}} \ \VARREF{E}\SUB{2} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{array{\UNDERSCORE}get} \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{E}\SUB{1} \ \LEX{{.}{(}} \ \VARREF{E}\SUB{2} \ \LEX{{)}} \ \LEX{{<}{-}} \ \VARREF{E}\SUB{3} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{array{\UNDERSCORE}set} \ \VAR{E}\SUB{1} \ \VAR{E}\SUB{2} \ \VAR{E}\SUB{3} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{if} \ \VARREF{E}\SUB{1} \ \LEX{then} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{if} \ \VAR{E}\SUB{1} \ \LEX{then} \ \VAR{E}\SUB{2} \ \LEX{else} \ \LEFTGROUP \LEX{{(}} \ \LEX{{)}} \RIGHTGROUP \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{fun} \ \VARHYPER{../.}{OC-L-06-Patterns}{P} \ \LEX{{-}{>}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{function} \ \VAR{P} \ \LEX{{-}{>}} \ \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{fun} \ \VARHYPER{../.}{OC-L-06-Patterns}{P} \ \VARHYPER{../.}{OC-L-06-Patterns}{P}\PLUS \ \LEX{{-}{>}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{fun} \ \VAR{P} \ \LEX{{-}{>}} \ \LEFTGROUP \LEX{fun} \ \VAR{P}\PLUS \ \LEX{{-}{>}} \ \VAR{E} \RIGHTGROUP \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{[}} \ \VARREF{E} \ \VARREF{SE}\STAR \ \LEX{{;}} \ \LEX{{]}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{{[}} \ \VAR{E} \ \VAR{SE}\STAR \ \LEX{{]}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{[}{|}} \ \VARREF{E} \ \VARREF{SE}\STAR \ \LEX{{;}} \ \LEX{{|}{]}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{{[}{|}} \ \VAR{E} \ \VAR{SE}\STAR \ \LEX{{|}{]}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{E} \ \VARREF{SFE}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VAR{F} \ \LEX{{=}} \ \VAR{E} \ \VAR{SFE}\STAR \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VARREF{E}\SUB{1} \ \LEX{with} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{E}\SUB{2} \ \VARREF{SFE}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE : \SYNREF{expr} = \\&
      \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VAR{E}\SUB{1} \ \LEX{with} \ \VAR{F} \ \LEX{{=}} \ \VAR{E}\SUB{2} \ \VAR{SFE}\STAR \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{|}} \ \VARHYPER{../.}{OC-L-06-Patterns}{P} \ \LEX{{-}{>}} \ \VARREF{E} \ \VARREF{PE}\STAR \
      \RIGHTPHRASE : \SYNREF{pattern-matching} = 
      \LEFTPHRASE \
        \VAR{P} \ \LEX{{-}{>}} \ \VAR{E} \ \VAR{PE}\STAR \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARHYPER{../.}{OC-L-03-Names}{VN} \ \LEX{{:}} \ \VARHYPER{../.}{OC-L-04-Type-Expressions}{PT} \ \LEX{{=}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{let-binding} = 
      \LEFTPHRASE \
        \VAR{VN} \ \LEX{{=}} \ \VAR{E} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARHYPER{../.}{OC-L-03-Names}{VN} \ \VARHYPER{../.}{OC-L-06-Patterns}{P}\PLUS \ \LEX{{=}} \ \VARREF{E} \
      \RIGHTPHRASE : \SYNREF{let-binding} = 
      \LEFTPHRASE \
        \VAR{VN} \ \LEX{{=}} \ \LEFTGROUP \LEX{fun} \ \VAR{P}\PLUS \ \LEX{{-}{>}} \ \VAR{E} \RIGHTGROUP \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate} \LEFTPHRASE \ \_ : \SYNREF{expr} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{VP} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
        (  \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                                    \VAR{VP} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-05-Constants}{CNST} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{OC-L-05-Constants}{value} \LEFTPHRASE \
                            \VAR{CNST} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{E} \ \LEX{{:}} \ \VARHYPER{../.}{OC-L-04-Type-Expressions}{T} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{,}} \ \VARREF{E}\SUB{2} \ \VARREF{CE}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
        (  \SEMREF{evaluate-comma-sequence} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \ \LEX{{,}} \ \VAR{E}\SUB{2} \ \VAR{CE}\STAR \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{:}{:}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{[}} \ \VARREF{E} \ \VARREF{SE}\STAR \ \LEX{{]}} \
                          \RIGHTPHRASE  = 
      [  \SEMREF{evaluate-semic-sequence} \LEFTPHRASE \
                                  \VAR{E} \ \VAR{SE}\STAR \
                                \RIGHTPHRASE  ]
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{[}{|}} \ \VARREF{E} \ \VARREF{SE}\STAR \ \LEX{{|}{]}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-map}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                        (  \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values}, 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                       \SEMREF{evaluate-semic-sequence} \LEFTPHRASE \
                                            \VAR{E} \ \VAR{SE}\STAR \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{[}{|}} \ \LEX{{|}{]}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{E} \ \VARREF{SFE}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                (  \SEMREF{evaluate-field-sequence} \LEFTPHRASE \
                                            \VAR{F} \ \LEX{{=}} \ \VAR{E} \ \VAR{SFE}\STAR \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{E}\SUB{1} \ \LEX{with} \ \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{E}\SUB{2} \ \VARREF{SFE}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
                ( \\&\quad\quad\quad \SEMREF{evaluate-field-sequence} \LEFTPHRASE \
                                            \VAR{F} \ \LEX{{=}} \ \VAR{E}\SUB{2} \ \VAR{SFE}\STAR \
                                          \RIGHTPHRASE , \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record-map}
                          (  \SEMREF{evaluate} \LEFTPHRASE \
                                                      \VAR{E}\SUB{1} \
                                                    \RIGHTPHRASE  ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{CSTR} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variant}
        (  \SEMHYPER{../.}{OC-L-03-Names}{constr-name} \LEFTPHRASE \
                                    \VAR{CSTR} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Otherwise} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E} \ \LEX{{.}} \ \VARHYPER{../.}{OC-L-03-Names}{F} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record-select}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , 
               \SEMHYPER{../.}{OC-L-03-Names}{field-name} \LEFTPHRASE \
                                    \VAR{F} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{|}{|}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}, 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{if} \ \VARREF{E}\SUB{1} \ \LEX{then} \ \VARREF{E}\SUB{2} \ \LEX{else} \ \VARREF{E}\SUB{3} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{3} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{while} \ \VARREF{E}\SUB{1} \ \LEX{do} \ \VARREF{E}\SUB{2} \ \LEX{done} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
                (  \SEMREF{evaluate} \LEFTPHRASE \
                                            \VAR{E}\SUB{2} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{for} \ \VARHYPER{../.}{OC-L-03-Names}{VN} \ \LEX{{=}} \ \VARREF{E}\SUB{1} \ \LEX{to} \ \VARREF{E}\SUB{2} \ \LEX{do} \ \VARREF{E}\SUB{3} \ \LEX{done} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-map}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{case-match}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-bind}
                                (  \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                                                            \VAR{VN} \
                                                          \RIGHTPHRASE  ), 
                               \SEMREF{evaluate} \LEFTPHRASE \
                                                    \VAR{E}\SUB{3} \
                                                  \RIGHTPHRASE  ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-sequence}
                        (  \SEMREF{evaluate} \LEFTPHRASE \
                                                    \VAR{E}\SUB{1} \
                                                  \RIGHTPHRASE , 
                               \SEMREF{evaluate} \LEFTPHRASE \
                                                    \VAR{E}\SUB{2} \
                                                  \RIGHTPHRASE  ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{for} \ \VARHYPER{../.}{OC-L-03-Names}{VN} \ \LEX{{=}} \ \VARREF{E}\SUB{1} \ \LEX{downto} \ \VARREF{E}\SUB{2} \ \LEX{do} \ \VARREF{E}\SUB{3} \ \LEX{done} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-map}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{case-match}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-bind}
                                (  \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                                                            \VAR{VN} \
                                                          \RIGHTPHRASE  ), 
                               \SEMREF{evaluate} \LEFTPHRASE \
                                                    \VAR{E}\SUB{3} \
                                                  \RIGHTPHRASE  ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{reverse} \ 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-sequence}
                          (  \SEMREF{evaluate} \LEFTPHRASE \
                                                      \VAR{E}\SUB{2} \
                                                    \RIGHTPHRASE , 
                                 \SEMREF{evaluate} \LEFTPHRASE \
                                                      \VAR{E}\SUB{1} \
                                                    \RIGHTPHRASE  ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{;}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
                (  \SEMREF{evaluate} \LEFTPHRASE \
                                            \VAR{E}\SUB{1} \
                                          \RIGHTPHRASE  ), 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{match} \ \VARREF{E} \ \LEX{with} \ \VARREF{PM} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                (  \SEMREF{match} \LEFTPHRASE \
                                            \VAR{PM} \
                                          \RIGHTPHRASE , 
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
                        (  \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-match-failure} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{function} \ \VARREF{PM} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                  (  \SEMREF{match} \LEFTPHRASE \
                                              \VAR{PM} \
                                            \RIGHTPHRASE , 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
                          (  \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-match-failure} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{try} \ \VARREF{E} \ \LEX{with} \ \VARREF{PM} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        ( \\&\quad\quad \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                (  \SEMREF{match} \LEFTPHRASE \
                                            \VAR{PM} \
                                          \RIGHTPHRASE , 
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{LD} \ \LEX{in} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (  \SEMREF{define-values} \LEFTPHRASE \
                                    \VAR{LD} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{assert} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true}
                (  \SEMREF{evaluate} \LEFTPHRASE \
                                            \VAR{E} \
                                          \RIGHTPHRASE  ), 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
                (  \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-assert-failure} ) )
\end{align*}$$

## Expression sequences and maps
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-comma-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{expr} \ \SYNREF{comma-expr}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-comma-sequence} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{,}} \ \VARREF{E}\SUB{2} \ \VARREF{CE}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{evaluate-comma-sequence} \LEFTPHRASE \
                            \VAR{E}\SUB{2} \ \VAR{CE}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-comma-sequence} \LEFTPHRASE \
                            \VARREF{E} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-semic-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{expr} \ \SYNREF{semic-expr}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-semic-sequence} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{;}} \ \VARREF{E}\SUB{2} \ \VARREF{SE}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{evaluate-semic-sequence} \LEFTPHRASE \
                            \VAR{E}\SUB{2} \ \VAR{SE}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-semic-sequence} \LEFTPHRASE \
                            \VARREF{E} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-field-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNREF{expr} \ \SYNREF{semic-field-expr}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-field-sequence} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{F}\SUB{1} \ \LEX{{=}} \ \VARREF{E}\SUB{1} \ \LEX{{;}} \ \VARHYPER{../.}{OC-L-03-Names}{F}\SUB{2} \ \LEX{{=}} \ \VARREF{E}\SUB{2} \ \VARREF{SFE}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMHYPER{../.}{OC-L-03-Names}{field-name} \LEFTPHRASE \
                               \VAR{F}\SUB{1} \
                             \RIGHTPHRASE  \mapsto 
           \SEMREF{evaluate} \LEFTPHRASE \
                                 \VAR{E}\SUB{1} \
                               \RIGHTPHRASE  \}, \\&\quad
       \SEMREF{evaluate-field-sequence} \LEFTPHRASE \
                            \VAR{F}\SUB{2} \ \LEX{{=}} \ \VAR{E}\SUB{2} \ \VAR{SFE}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-field-sequence} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{F} \ \LEX{{=}} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \{ \SEMHYPER{../.}{OC-L-03-Names}{field-name} \LEFTPHRASE \
                               \VAR{F} \
                             \RIGHTPHRASE  \mapsto 
           \SEMREF{evaluate} \LEFTPHRASE \
                                 \VAR{E} \
                               \RIGHTPHRASE  \}
\end{align*}$$

## Matching
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{match} \LEFTPHRASE \ \_ : \SYNREF{pattern-matching} \ \RIGHTPHRASE  
    : (  \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} \TO \NAMEHYPER{../.}{OC-L-02-Values}{implemented-values} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{match} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-06-Patterns}{P}\SUB{1} \ \LEX{{-}{>}} \ \VARREF{E}\SUB{1} \ \LEX{{|}} \ \VARHYPER{../.}{OC-L-06-Patterns}{P}\SUB{2} \ \LEX{{-}{>}} \ \VARREF{E}\SUB{2} \ \VARREF{PE}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{match} \LEFTPHRASE \
                            \VAR{P}\SUB{1} \ \LEX{{-}{>}} \ \VAR{E}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{match} \LEFTPHRASE \
                            \VAR{P}\SUB{2} \ \LEX{{-}{>}} \ \VAR{E}\SUB{2} \ \VAR{PE}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{match} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-06-Patterns}{P} \ \LEX{{-}{>}} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{case-match}
        (  \SEMHYPER{../.}{OC-L-06-Patterns}{evaluate-pattern} \LEFTPHRASE \
                                    \VAR{P} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Value definitions
               


$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-values} \LEFTPHRASE \ \_ : \SYNREF{let-definition} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-values} \LEFTPHRASE \
                            \LEX{let} \ \VARREF{LB} \ \VARREF{ALB}\STAR \
                          \RIGHTPHRASE  = 
      \SEMREF{define-values-nonrec} \LEFTPHRASE \
                            \VAR{LB} \ \VAR{ALB}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-values} \LEFTPHRASE \
                            \LEX{let~rec} \ \VARREF{LB} \ \VARREF{ALB}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{recursive}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set}
                (  \SEMREF{bound-ids-sequence} \LEFTPHRASE \
                                            \VAR{LB} \ \VAR{ALB}\STAR \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \SEMREF{define-values-nonrec} \LEFTPHRASE \
                                    \VAR{LB} \ \VAR{ALB}\STAR \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{define-values-nonrec} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{let-binding} \ \SYNREF{and-let-binding}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{define-values-nonrec} \LEFTPHRASE \
                            \VARREF{LB}\SUB{1} \ \LEX{and} \ \VARREF{LB}\SUB{2} \ \VARREF{ALB}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{define-values-nonrec} \LEFTPHRASE \
                                    \VAR{LB}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{define-values-nonrec} \LEFTPHRASE \
                                    \VAR{LB}\SUB{2} \ \VAR{ALB}\STAR \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{define-values-nonrec} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-06-Patterns}{P} \ \LEX{{=}} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                (  \SEMREF{evaluate} \LEFTPHRASE \
                                            \VAR{E} \
                                          \RIGHTPHRASE , 
                       \SEMHYPER{../.}{OC-L-06-Patterns}{evaluate-pattern} \LEFTPHRASE \
                                            \VAR{P} \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
                (  \NAMEHYPER{../.}{OC-L-12-Core-Library}{ocaml-light-match-failure} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{bound-ids-sequence} \LEFTPHRASE \ \_ : \LEFTGROUP \SYNREF{let-binding} \ \SYNREF{and-let-binding}\STAR \RIGHTGROUP \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-ids-sequence} \LEFTPHRASE \
                            \VARREF{LB} \
                          \RIGHTPHRASE  = 
      \SEMREF{bound-id} \LEFTPHRASE \
                            \VAR{LB} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-ids-sequence} \LEFTPHRASE \
                            \VARREF{LB}\SUB{1} \ \LEX{and} \ \VARREF{LB}\SUB{2} \ \VARREF{ALB}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{bound-id} \LEFTPHRASE \
                            \VAR{LB}\SUB{1} \
                          \RIGHTPHRASE , 
       \SEMREF{bound-ids-sequence} \LEFTPHRASE \
                            \VAR{LB}\SUB{2} \ \VAR{ALB}\STAR \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{bound-id} \LEFTPHRASE \ \_ : \SYNREF{let-binding} \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-id} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-03-Names}{VN} \ \LEX{{=}} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{OC-L-03-Names}{value-name} \LEFTPHRASE \
                            \VAR{VN} \
                          \RIGHTPHRASE 
\\
  \KEY{Otherwise} \quad
    & \SEMREF{bound-id} \LEFTPHRASE \
                            \VARREF{LB} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
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
[OC-L-07-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions/OC-L-07-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-07-Expressions/OC-L-07-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-07-Expressions/OC-L-07-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
