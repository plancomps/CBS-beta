{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE}$$

# $$\SECT{3}$$ Statements
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Block} : \SYN{block}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{stmts}\QUERY \ \LEX{{\RIGHTBRACE}}
    \\
    \VARDECL{Stmts} : \SYN{stmts}
      \ ::= \ & \
      \SYNREF{stmt} \ \SYNREF{stmts}\QUERY
    \\
    \VARDECL{Stmt} : \SYN{stmt}
      \ ::= \ & \
      \SYNREF{imp-stmt} \mid \SYNHYPER{../.}{SIMPLE-4-Declarations}{vars-decl}
    \\
    \VARDECL{ImpStmt} : \SYN{imp-stmt}
      \ ::= \ & \
      \SYNREF{block} \\
      \ \mid \ & \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \ \LEFTGROUP \LEX{else} \ \SYNREF{block} \RIGHTGROUP\QUERY \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{for} \ \LEX{{(}} \ \SYNREF{stmt} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{;}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{print} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exps} \ \LEX{{)}} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{return} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp}\QUERY \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{try} \ \SYNREF{block} \ \LEX{catch} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{throw} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \ \LEX{{;}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block} \
      \RIGHTPHRASE : \SYNREF{stmt} = \\&
      \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VAR{Exp} \ \LEX{{)}} \ \VAR{Block} \ \LEX{else} \ \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{for} \ \LEX{{(}} \ \VARREF{Stmt} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp}\SUB{1} \ \LEX{{;}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp}\SUB{2} \ \LEX{{)}} \\&\quad
        \LEX{{\LEFTBRACE}} \ \VARREF{Stmts} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE : \SYNREF{stmt} = \\&
      \LEFTPHRASE \
        \LEX{{\LEFTBRACE}} \ \VAR{Stmt} \\&\quad
        \LEX{while} \ \LEX{{(}} \ \VAR{Exp}\SUB{1} \ \LEX{{)}} \\&\quad
        \LEX{{\LEFTBRACE}} \ \LEX{{\LEFTBRACE}} \ \VAR{Stmts} \ \LEX{{\RIGHTBRACE}} \ \VAR{Exp}\SUB{2} \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \\&\quad
        \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{exec} \LEFTPHRASE \ \_ : \SYNREF{stmts} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{Stmts} \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \SEMREF{exec} \LEFTPHRASE \
                            \VAR{Stmts} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARREF{ImpStmt} \ \VARREF{Stmts} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{ImpStmt} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Stmts} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{VarsDecl} \ \VARREF{Stmts} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (  \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE \
                                    \VAR{VarsDecl} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Stmts} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{VarsDecl} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE \
                                    \VAR{VarsDecl} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block}\SUB{1} \ \LEX{else} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{while} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{print} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exps} \ \LEX{{)}} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rvals} \LEFTPHRASE \
                                    \VAR{Exps} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{return} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{return} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null} )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{try} \ \VARREF{Block}\SUB{1} \ \LEX{catch} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \LEX{{)}} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        ( \\&\quad\quad \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
                        (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                                    \VAR{Id} \
                                                  \RIGHTPHRASE , 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, 
                                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ), \\&\quad\quad\quad
                       \SEMREF{exec} \LEFTPHRASE \
                                            \VAR{Block}\SUB{2} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{throw} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
        (  \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
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
[SIMPLE-3-Statements.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-3-Statements/SIMPLE-3-Statements.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-3-Statements
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-3-Statements
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-3-Statements/SIMPLE-3-Statements.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
