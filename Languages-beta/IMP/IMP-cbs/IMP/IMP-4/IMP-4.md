{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMP}$$

# $$\SECT{4}$$ Programs and variable declarations
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Pgm} : \SYN{pgm}
      \ ::= \ & \
      \LEX{int} \ \SYNREF{idlist} \ \LEX{{;}} \ \SYNHYPER{../.}{IMP-3}{stmt}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{run} \LEFTPHRASE \ \_ : \SYNREF{pgm} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{run} \LEFTPHRASE \
                            \LEX{int} \ \VARREF{IL} \ \LEX{{;}} \ \VARHYPER{../.}{IMP-3}{Stmt} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                (  \SEMREF{declare-int-vars} \LEFTPHRASE \
                                            \VAR{IL} \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \SEMHYPER{../.}{IMP-3}{execute} \LEFTPHRASE \
                                    \VAR{Stmt} \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{IL} : \SYN{idlist}
      \ ::= \ & \
      \SYNHYPER{../.}{IMP-1}{id} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{idlist} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare-int-vars} \LEFTPHRASE \ \_ : \SYNREF{idlist} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VARHYPER{../.}{IMP-1}{I} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (  \SEMHYPER{../.}{IMP-1}{id} \LEFTPHRASE \
                                    \VAR{I} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, 
                       0 ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VARHYPER{../.}{IMP-1}{I} \ \LEX{{,}} \ \VARREF{IL} \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VAR{I} \
                          \RIGHTPHRASE , 
       \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VAR{IL} \
                          \RIGHTPHRASE 
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
[IMP-4.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-4/IMP-4.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/IMP/IMP-cbs/IMP/IMP-4
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/IMP/IMP-cbs/IMP/IMP-4
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/IMP/IMP-cbs/IMP/IMP-4/IMP-4.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
