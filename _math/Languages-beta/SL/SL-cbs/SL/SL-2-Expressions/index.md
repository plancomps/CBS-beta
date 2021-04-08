---
title: "SL-2-Expressions"
math: katex
parent: SL
ancestor: Languages-beta

---
[Languages-beta] : [SL-2-Expressions.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SL}$$

# $$\SECT{2}$$ Expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Expr} : \SYN{expr}
      \ ::= \ & \
      \SYNHYPER{../.}{SL-1-Lexemes}{int} \\
      \ \mid \ & \ \SYNHYPER{../.}{SL-1-Lexemes}{string} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \LEX{false} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{+}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{/}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{*}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{-}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{=}{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{<}{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{<}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{!}{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{>}{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{>}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{|}{|}} \ \SYNREF{expr} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{(}} \ \SYNREF{expr-list}\QUERY \ \LEX{{)}} \\
      \ \mid \ & \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \\
      \ \mid \ & \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{=}} \ \SYNREF{expr} \\
      \ \mid \ & \ \SYNREF{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{(}} \ \SYNREF{expr-list}\QUERY \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{expr} \ \LEX{{)}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{Expr} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{expr} = 
      \LEFTPHRASE \
        \VAR{Expr} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{sl-values}  
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval} \LEFTPHRASE \ \VARREF{Expr} : \SYNREF{expr} \ \RIGHTPHRASE  
    :  \TO \NAMEREF{sl-values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Int} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SL-1-Lexemes}{int-val} \LEFTPHRASE \
                            \VAR{Int} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{String} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SL-1-Lexemes}{string-val} \LEFTPHRASE \
                            \VAR{String} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{true} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{false} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{+}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{SL-Funcons}{integer-add-else-string-append}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{/}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                  \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{Expr}\SUB{1} \
                                      \RIGHTPHRASE , 
                 \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                  \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{Expr}\SUB{2} \
                                      \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{*}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{-}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{=}{=}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{<}{=}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{<}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{!}{=}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
          (  \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{>}{=}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater-or-equal}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{>}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater}
        (  \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{int} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{|}{|}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{1} \
                                    \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}, 
               \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{Expr} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (  \NAMEHYPER{../.}{SL-Funcons}{bool} \ 
                \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{Expr} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{new} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}, 
               \STRING{Object}, 
               \NAMEHYPER{../.}{SL-Funcons}{initialise-local-variables} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{println} \ \LEX{{(}} \ \VARREF{Expr} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../.}{SL-Funcons}{print-line} \ 
        \NAMEHYPER{../.}{SL-Funcons}{sl-to-string} \ 
          \SEMREF{eval} \LEFTPHRASE \
                                \VAR{Expr} \
                              \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{readln} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      [  \NAMEHYPER{../.}{SL-Funcons}{read-line} ]
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{defineFunction} \ \LEX{{(}} \ \VARREF{Expr} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{nanoTime} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{stacktrace} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\\
  \KEY{Otherwise} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{(}} \ \VARREF{ExprList}\QUERY \ \LEX{{)}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (  \NAMEHYPER{../.}{SL-Funcons}{fun} \ 
                \NAMEHYPER{../.}{SL-Funcons}{global-bound} \ 
                  \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{Id} \
                                      \RIGHTPHRASE , 
               \SEMREF{eval-list} \LEFTPHRASE \
                                    \VAR{ExprList}\QUERY \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Id} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                \NAMEHYPER{../.}{SL-Funcons}{local-variable} \ 
                  \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                        \VAR{Id} \
                                      \RIGHTPHRASE , 
               \NAMEHYPER{../.}{SL-Funcons}{str} \ 
                \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                      \VAR{Id} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{=}} \ \VARREF{Expr} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../.}{SL-Funcons}{local-variable-assign}
                        (  \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                                    \VAR{Id} \
                                                  \RIGHTPHRASE , 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr} \ \LEX{{.}} \ \VARHYPER{../.}{SL-1-Lexemes}{Id} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{SL-Funcons}{scope-closed}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-feature-map} \ 
                \NAMEHYPER{../.}{SL-Funcons}{obj} \ 
                  \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{Expr} \
                                      \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                        \NAMEHYPER{../.}{SL-Funcons}{local-variable} \ 
                          \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                                \VAR{Id} \
                                              \RIGHTPHRASE , 
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr}\SUB{1} \ \LEX{{.}} \ \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{=}} \ \VARREF{Expr}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr}\SUB{2} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../.}{SL-Funcons}{scope-closed}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-feature-map} \ 
                        \NAMEHYPER{../.}{SL-Funcons}{obj} \ 
                          \SEMREF{eval} \LEFTPHRASE \
                                                \VAR{Expr}\SUB{1} \
                                              \RIGHTPHRASE , \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        ( \\&\quad\quad\quad\quad \NAMEHYPER{../.}{SL-Funcons}{local-variable-assign}
                                (  \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                                            \VAR{Id} \
                                                          \RIGHTPHRASE , 
                                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad\quad
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{Expr} \ \LEX{{.}} \ \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{(}} \ \VARREF{ExprList}\QUERY \ \LEX{{)}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (  \NAMEHYPER{../.}{SL-Funcons}{fun} \ 
                \NAMEHYPER{../.}{SL-Funcons}{global-bound} \ 
                  \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{Expr} \ \LEX{{.}} \ \VAR{Id} \
                                      \RIGHTPHRASE , 
               \SEMREF{eval-list} \LEFTPHRASE \
                                    \VAR{ExprList}\QUERY \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{ExprList} : \SYN{expr-list}
      \ ::= \ & \
      \SYNREF{expr} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{expr-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-list} \LEFTPHRASE \ \_ : \SYNREF{expr-list}\QUERY \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                     (  \NAMEREF{sl-values} ) 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-list} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-list} \LEFTPHRASE \
                            \VARREF{Expr} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-list} \LEFTPHRASE \
                            \VARREF{Expr} \ \LEX{{,}} \ \VARREF{ExprList} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{Expr} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval-list} \LEFTPHRASE \
                                    \VAR{ExprList} \
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
[SL-2-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions/SL-2-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-2-Expressions/SL-2-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-2-Expressions/SL-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
