$$\KEY{Language} \STRING{MiniJava}$$



$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{START} : \SYN{start}
      ~ ::= ~ & \SYNHYPER{../.}{MiniJava-Dynamics}{program}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{start} \LEFTPHRASE ~ \VARREF{START} : \SYNREF{start} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{start} \LEFTPHRASE ~ \VARHYPER{../.}{MiniJava-Dynamics}{P} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} ~
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} ~
              \SEMHYPER{../.}{MiniJava-Dynamics}{run} \LEFTPHRASE ~ \VAR{P} ~ \RIGHTPHRASE 
\end{aligned}$$


Contents:



$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{1}} ~ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{2}} ~ & \textsf{Declarations} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{3}} ~ & \textsf{Statements} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{4}} ~ & \textsf{Expressions} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Dynamics}{5}} ~ & \textsf{Lexemes} \\
  \textsf{\SECTHYPER{../.}{MiniJava-Syntax}{6}} ~ & \textsf{Disambiguation}
  ~ ]
\end{aligned}$$


The section numbers above are links into other files.




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
