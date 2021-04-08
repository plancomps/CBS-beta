{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMPPP}$$




$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{IMPPP-1}{1}} \ & \textsf{Values} \\
  \textsf{\SECTHYPER{../.}{IMPPP-2}{2}} \ & \textsf{Value expressions} \\
  \textsf{\SECTHYPER{../.}{IMPPP-3}{3}} \ & \textsf{Boolean expressions} \\
  \textsf{\SECTHYPER{../.}{IMPPP-4}{4}} \ & \textsf{Statements and blocks} \\
  \textsf{\SECTHYPER{../.}{IMPPP-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
\end{align*}$$

 
See also [Unstable-Funcons-beta]


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{IMPPP-4}{stmt}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-4}{Stmt}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
              ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{initialise-index}, \\&\quad\quad\quad\quad\quad
                     \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} \ 
                      \SEMHYPER{../.}{IMPPP-4}{execute} \LEFTPHRASE \
                                            \VAR{Stmt}\STAR \
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
[IMPPP-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Start/IMPPP-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Start/IMPPP-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
