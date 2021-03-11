$$\KEY{Language} \STRING{IMP}$$

# $$\SECT{4}$$ Programs and variable declarations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Pgm} : \SYN{pgm}
      ~ ::= ~ & \LEX{int} ~ \SYNREF{idlist} ~ \LEX{;{}} ~ \SYNHYPER{../.}{IMP-3}{stmt}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{run} \LEFTPHRASE ~ \_ : \SYNREF{pgm} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{run} \LEFTPHRASE ~ \LEX{int} ~ \VARREF{IL} ~ \LEX{;{}} ~ \VARHYPER{../.}{IMP-3}{Stmt} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
           (\SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMHYPER{../.}{IMP-3}{execute} \LEFTPHRASE ~ \VAR{Stmt} ~ \RIGHTPHRASE )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{IL} : \SYN{idlist}
      ~ ::= ~ & \SYNHYPER{../.}{IMP-1}{id} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{idlist} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare-int-vars} \LEFTPHRASE ~ \_ : \SYNREF{idlist} ~ \RIGHTPHRASE  : ( \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments})\PLUS 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-1}{I} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (\SEMHYPER{../.}{IMP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
           (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, \\&\quad \quad \quad 
            0))
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-1}{I} ~ \LEX{,{}} ~ \VARREF{IL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{declare-int-vars} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE 
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
