---
title: "SIMPLE-THR-3-Statements"
math: katex
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [SIMPLE-THR-3-Statements.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE-THR}$$

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
      \SYNREF{imp-stmt} \mid \SYNHYPER{../.}{SIMPLE-THR-4-Declarations}{vars-decl}
    \\
    \VARDECL{ImpStmt} : \SYN{imp-stmt}
      \ ::= \ & \
      \SYNREF{block} \\
      \ \mid \ & \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \ \LEFTGROUP \LEX{else} \ \SYNREF{block} \RIGHTGROUP\QUERY \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{for} \ \LEX{{(}} \ \SYNREF{stmt} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{print} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exps} \ \LEX{{)}} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{return} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}\QUERY \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{try} \ \SYNREF{block} \ \LEX{catch} \ \LEX{{(}} \ \SYNHYPER{../.}{SIMPLE-THR-1-Lexical}{id} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{throw} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{join} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{acquire} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{release} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{rendezvous} \ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} \ \LEX{{;}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block} \
      \RIGHTPHRASE : \SYNREF{stmt} = \\&
      \LEFTPHRASE \
        \LEX{if} \ \LEX{{(}} \ \VAR{Exp} \ \LEX{{)}} \ \VAR{Block} \ \LEX{else} \ \LEX{{\LEFTBRACE}} \ \LEX{{\RIGHTBRACE}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{for} \ \LEX{{(}} \ \VARREF{Stmt} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp}\SUB{1} \ \LEX{{;}} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp}\SUB{2} \ \LEX{{)}} \\&\quad
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
                            \VARHYPER{../.}{SIMPLE-THR-4-Declarations}{VarsDecl} \ \VARREF{Stmts} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (  \SEMHYPER{../.}{SIMPLE-THR-4-Declarations}{declare} \LEFTPHRASE \
                                    \VAR{VarsDecl} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Stmts} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-THR-4-Declarations}{VarsDecl} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{SIMPLE-THR-4-Declarations}{declare} \LEFTPHRASE \
                                    \VAR{VarsDecl} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block}\SUB{1} \ \LEX{else} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
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
                            \LEX{while} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{)}} \ \VARREF{Block} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE , 
               \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{print} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exps} \ \LEX{{)}} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rvals} \LEFTPHRASE \
                                    \VAR{Exps} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{return} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
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
                            \LEX{try} \ \VARREF{Block}\SUB{1} \ \LEX{catch} \ \LEX{{(}} \ \VARHYPER{../.}{SIMPLE-THR-1-Lexical}{Id} \ \LEX{{)}} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        ( \\&\quad\quad \SEMREF{exec} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
                        (  \SEMHYPER{../.}{SIMPLE-THR-1-Lexical}{id} \LEFTPHRASE \
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
                            \LEX{throw} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
        (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\end{align*}$$


SIMPLE uses natural numbers to identify threads; the use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
           (  \_ )}$$
below converts a natural number to the associated thread-id. 


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{join} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join} \ 
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
          (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                      \VAR{Exp} \
                                    \RIGHTPHRASE  )
\end{align*}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (  \VAR{V}, 
                  \VAR{SY} )}$$ below associates $$\SHADE{\VAR{V}}$$ with a lock.
When a thread requests a lock already held by another thread,
the requesting thread is suspended until the request is granted.
The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone}
           (  \_ )}$$ below automatically releases held locks
when the current thread terminates.


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{acquire} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
                (  \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                            \VAR{Exp} \
                                          \RIGHTPHRASE , 
                       \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone} \\&\quad\quad\quad\quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                          ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder} \ 
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad
                                 \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \ 
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad
                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \ 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\end{align*}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall}
           (  \VAR{V} )}$$ below gives the lock associated with $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{release} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit} \ 
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall} \ 
          \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
                                \VAR{Exp} \
                              \RIGHTPHRASE 
\end{align*}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (  \VAR{V}, 
                  \VAR{SY} )}$$ below associates $$\SHADE{\VAR{V}}$$ with a rendezvous.
When a thread requests a rendezvous on a particular value, and there
is no previous uncompleted request for a rendezvous on the same value,
the requesting thread is suspended until the request is granted.


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{exec} \LEFTPHRASE \
                            \LEX{rendezvous} \ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
                (  \STRING{rendezvous}, 
                       \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-create}
                        (  2 ) ), \\&\quad\quad
               \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE \
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
[SIMPLE-THR-3-Statements.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-3-Statements/SIMPLE-THR-3-Statements.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
