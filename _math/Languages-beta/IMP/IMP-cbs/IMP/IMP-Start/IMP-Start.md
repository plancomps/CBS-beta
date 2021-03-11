$$\KEY{Language} \STRING{IMP}$$




$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{\SECTHYPER{../.}{IMP-1}{1}} ~ & \textsf{Arithmetic expressions} \\
  \textsf{\SECTHYPER{../.}{IMP-2}{2}} ~ & \textsf{Boolean expressions} \\
  \textsf{\SECTHYPER{../.}{IMP-3}{3}} ~ & \textsf{Statements and blocks} \\
  \textsf{\SECTHYPER{../.}{IMP-4}{4}} ~ & \textsf{Programs and variable declarations} \\
  \textsf{\SECTHYPER{../.}{IMP-Disambiguation}{A}} ~ & \textsf{Disambiguation}
  ~ ]
\end{aligned}$$

# Top level
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{START} : \SYN{start}
      ~ ::= ~ & \SYNHYPER{../.}{IMP-4}{pgm}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{start} \LEFTPHRASE ~ \_ : \SYNREF{start} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{start} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-4}{Pgm} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} ~
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} ~
              \SEMHYPER{../.}{IMP-4}{run} \LEFTPHRASE ~ \VAR{Pgm} ~ \RIGHTPHRASE 
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
