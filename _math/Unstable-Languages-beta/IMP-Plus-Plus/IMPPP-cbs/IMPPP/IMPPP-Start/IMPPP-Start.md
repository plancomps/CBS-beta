$$\KEY{Language} \STRING{IMPPP}$$




$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{\SECTHYPER{../.}{IMPPP-1}{1}} ~ & \textsf{Values} \\
  \textsf{\SECTHYPER{../.}{IMPPP-2}{2}} ~ & \textsf{Value expressions} \\
  \textsf{\SECTHYPER{../.}{IMPPP-3}{3}} ~ & \textsf{Boolean expressions} \\
  \textsf{\SECTHYPER{../.}{IMPPP-4}{4}} ~ & \textsf{Statements and blocks} \\
  \textsf{\SECTHYPER{../.}{IMPPP-Disambiguation}{A}} ~ & \textsf{Disambiguation}
  ~ ]
\end{aligned}$$

 
See also [Unstable-Funcons-beta]


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{START} : \SYN{start}
      ~ ::= ~ & \SYNHYPER{../.}{IMPPP-4}{stmt}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{start} \LEFTPHRASE ~ \_ : \SYNREF{start} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{start} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-4}{Stmt}\STAR ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} ~
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
              (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{initialise-index}, \\&\quad \quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} ~
                 \SEMHYPER{../.}{IMPPP-4}{execute} \LEFTPHRASE ~ \VAR{Stmt}\STAR ~ \RIGHTPHRASE )
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
