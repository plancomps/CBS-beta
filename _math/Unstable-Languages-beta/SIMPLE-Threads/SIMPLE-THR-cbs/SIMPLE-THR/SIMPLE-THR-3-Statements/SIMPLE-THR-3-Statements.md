$$\KEY{Language} \STRING{SIMPLE-THR}$$

# $$\SECT{3}$$ Statements
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Block} : \SYN{block}
      ~ ::= ~ & \LEX{\LEFTBRACE } ~ \SYNREF{stmts}\QUERY ~ \LEX{\RIGHTBRACE }
    \\
    \VARDECL{Stmts} : \SYN{stmts}
      ~ ::= ~ & \SYNREF{stmt} ~ \SYNREF{stmts}\QUERY
    \\
    \VARDECL{Stmt} : \SYNDECL{stmt}
      ~ ::= ~ &
      \SYNREF{imp-stmt} \\
      ~ \mid ~ &  \SYNHYPER{../.}{SIMPLE-THR-4-Declarations}{vars-decl}
    \\
    \VARDECL{ImpStmt} : \SYNDECL{imp-stmt}
      ~ ::= ~ &
      \SYNREF{block} \\
      ~ \mid ~ &  \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{if} ~ \LEX{(} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{)} ~ \SYNREF{block} ~ \LEFTGROUP \LEX{else} ~ \SYNREF{block} \RIGHTGROUP\QUERY \\
      ~ \mid ~ &  \LEX{while} ~ \LEX{(} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{)} ~ \SYNREF{block} \\
      ~ \mid ~ &  \LEX{for} ~ \LEX{(} ~ \SYNREF{stmt} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{)} ~ \SYNREF{block} \\
      ~ \mid ~ &  \LEX{print} ~ \LEX{(} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exps} ~ \LEX{)} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{return} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp}\QUERY ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{try} ~ \SYNREF{block} ~ \LEX{catch} ~ \LEX{(} ~ \SYNHYPER{../.}{SIMPLE-THR-1-Lexical}{id} ~ \LEX{)} ~ \SYNREF{block} \\
      ~ \mid ~ &  \LEX{throw} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{join} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{acquire} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{release} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{rendezvous} ~ \SYNHYPER{../.}{SIMPLE-THR-2-Expressions}{exp} ~ \LEX{;{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{)} ~ \VARREF{Block} ~ \RIGHTPHRASE : \SYNREF{stmt} = \\
    & \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VAR{Exp} ~ \LEX{)} ~ \VAR{Block} ~ \LEX{else} ~ \LEX{\LEFTBRACE } ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE
\\
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{for} ~ \LEX{(} ~ \VARREF{Stmt} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp}\SUB{1} ~ \LEX{;{}} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp}\SUB{2} ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \VARREF{Stmts} ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE : \SYNREF{stmt} = \\
    & \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \VAR{Stmt} ~ \LEX{while} ~ \LEX{(} ~ \VAR{Exp}\SUB{1} ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \LEX{\LEFTBRACE } ~ \VAR{Stmts} ~ \LEX{\RIGHTBRACE } ~ \VAR{Exp}\SUB{2} ~ \LEX{;{}} ~ \LEX{\RIGHTBRACE } ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{exec} \LEFTPHRASE ~ \_ : \SYNREF{stmts} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \VARREF{Stmts} ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{exec} \LEFTPHRASE ~ \VAR{Stmts} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \VARREF{ImpStmt} ~ \VARREF{Stmts} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (\SEMREF{exec} \LEFTPHRASE ~ \VAR{ImpStmt} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{exec} \LEFTPHRASE ~ \VAR{Stmts} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-THR-4-Declarations}{VarsDecl} ~ \VARREF{Stmts} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (\SEMHYPER{../.}{SIMPLE-THR-4-Declarations}{declare} \LEFTPHRASE ~ \VAR{VarsDecl} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{exec} \LEFTPHRASE ~ \VAR{Stmts} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-THR-4-Declarations}{VarsDecl} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (\SEMHYPER{../.}{SIMPLE-THR-4-Declarations}{declare} \LEFTPHRASE ~ \VAR{VarsDecl} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{)} ~ \VARREF{Block}\SUB{1} ~ \LEX{else} ~ \VARREF{Block}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{exec} \LEFTPHRASE ~ \VAR{Block}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{exec} \LEFTPHRASE ~ \VAR{Block}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{while} ~ \LEX{(} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{)} ~ \VARREF{Block} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{exec} \LEFTPHRASE ~ \VAR{Block} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{print} ~ \LEX{(} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exps} ~ \LEX{)} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rvals} \LEFTPHRASE ~ \VAR{Exps} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{return} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{return} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return}
        (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null})
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{try} ~ \VARREF{Block}\SUB{1} ~ \LEX{catch} ~ \LEX{(} ~ \VARHYPER{../.}{SIMPLE-THR-1-Lexical}{Id} ~ \LEX{)} ~ \VARREF{Block}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
        (\SEMREF{exec} \LEFTPHRASE ~ \VAR{Block}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
              (\SEMHYPER{../.}{SIMPLE-THR-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                 (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, \\&\quad \quad \quad \quad \quad 
                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given})), \\&\quad \quad \quad 
            \SEMREF{exec} \LEFTPHRASE ~ \VAR{Block}\SUB{2} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{throw} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw}
        (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\end{aligned}$$


SIMPLE uses natural numbers to identify threads; the use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
           (\_)}$$
below converts a natural number to the associated thread-id. 


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{join} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join} ~
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
          (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\end{aligned}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (\VAR{V},   
            \VAR{SY})}$$ below associates $$\SHADE{\VAR{V}}$$ with a lock.
When a thread requests a lock already held by another thread,
the requesting thread is suspended until the request is granted.
The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone}
           (\_)}$$ below automatically releases held locks
when the current thread terminates.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{acquire} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (\SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-create}), \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone} ~
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder} ~
                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                 \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} ~
                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} ~
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\end{aligned}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall}
           (\VAR{V})}$$ below gives the lock associated with $$\SHADE{\VAR{V}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{release} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit} ~
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall} ~
          \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE 
\end{aligned}$$


The use of $$\SHADE{\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (\VAR{V},   
            \VAR{SY})}$$ below associates $$\SHADE{\VAR{V}}$$ with a rendezvous.
When a thread requests a rendezvous on a particular value, and there
is no previous uncompleted request for a rendezvous on the same value,
the requesting thread is suspended until the request is granted.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{exec} \LEFTPHRASE ~ \LEX{rendezvous} ~ \VARHYPER{../.}{SIMPLE-THR-2-Expressions}{Exp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
        (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value}
           (\STRING{rendezvous}, \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-create}
              (2)), \\&\quad \quad 
         \SEMHYPER{../.}{SIMPLE-THR-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
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
