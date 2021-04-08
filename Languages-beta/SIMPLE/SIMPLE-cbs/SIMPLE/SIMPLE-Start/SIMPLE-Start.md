{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE}$$



$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-5-Programs}{pgm}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-5-Programs}{Pgm} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \ 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\&\quad\quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \ 
              \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{finalise-throwing} \\&\quad\quad\quad 
                \SEMHYPER{../.}{SIMPLE-5-Programs}{run} \LEFTPHRASE \
                                      \VAR{Pgm} \
                                    \RIGHTPHRASE 
\end{align*}$$


$$\begin{align*}
  [ \
  \textsf{\SECTHYPER{../.}{SIMPLE-1-Lexical}{1}} \ & \textsf{Lexical Syntax} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-2-Expressions}{2}} \ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-3-Statements}{3}} \ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-4-Declarations}{4}} \ & \textsf{Declarations} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-5-Programs}{5}} \ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{SIMPLE-A-Disambiguation}{A}} \ & \textsf{Disambiguation}
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
[SIMPLE-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Start/SIMPLE-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Start/SIMPLE-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
