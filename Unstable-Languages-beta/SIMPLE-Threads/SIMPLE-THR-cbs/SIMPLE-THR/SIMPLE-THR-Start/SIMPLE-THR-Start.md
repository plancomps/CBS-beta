{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE-THR}$$



$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-THR-5-Programs}{pgm}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-THR-5-Programs}{Pgm} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{initialise-memos} \\&\quad\quad\quad\quad\quad 
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\&\quad\quad\quad\quad\quad\quad 
                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{finalise-throwing} \\&\quad\quad\quad\quad\quad\quad\quad 
                  \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} \\&\quad\quad\quad\quad\quad\quad\quad\quad 
                    \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone-after-effect} \ 
                      \SEMHYPER{../.}{SIMPLE-THR-5-Programs}{run} \LEFTPHRASE \
                                            \VAR{Pgm} \
                                          \RIGHTPHRASE 
\end{align*}$$


$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-1-Lexical}{1}} \ & \textsf{Lexical Syntax} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-2-Expressions}{2}} \ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-3-Statements}{3}} \ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-4-Declarations}{4}} \ & \textsf{Declarations} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-5-Programs}{5}} \ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-THR-A-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
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
[SIMPLE-THR-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start/SIMPLE-THR-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Start/SIMPLE-THR-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
