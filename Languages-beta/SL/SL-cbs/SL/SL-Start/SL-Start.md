{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SL}$$




$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{SL-1-Lexemes}{1}} \ & \textsf{Lexemes} \\
  \textsf{\SECTHYPER{../.}{SL-2-Expressions}{2}} \ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{SL-3-Statements}{3}} \ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{SL-4-Definitions}{4}} \ & \textsf{Function definitions} \\
  \textsf{\SECTHYPER{../.}{SL-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNREF{program}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \VARREF{START} : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARREF{Program} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{finalise-abrupting} \\&\quad\quad\quad\quad\quad 
              \SEMREF{run} \LEFTPHRASE \
                                    \VAR{Program} \
                                  \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Program} : \SYN{program}
      \ ::= \ & \
      \SYNHYPER{../.}{SL-4-Definitions}{fun-def}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{run} \LEFTPHRASE \ \VARREF{Program} : \SYNREF{program} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{run} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-4-Definitions}{FunDef}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \\&\quad\quad \NAMEHYPER{../.}{SL-Funcons}{initialise-global-bindings}, \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../.}{SL-Funcons}{override-global-bindings}
                        (  \SEMHYPER{../.}{SL-4-Definitions}{declare} \LEFTPHRASE \
                                                    \VAR{FunDef}\STAR \
                                                  \RIGHTPHRASE  ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
                        (  \NAMEHYPER{../.}{SL-Funcons}{fun} \ 
                                \NAMEHYPER{../.}{SL-Funcons}{global-bound} \ 
                                  \STRING{main}, 
                               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil} ) ) )
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
[SL-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Start/SL-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Start/SL-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
