$$\KEY{Language} \STRING{IMP}$$

# $$\SECT{1}$$ Arithmetic expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{AExp} : \SYNDECL{aexp}
      ~ ::= ~ &
      \SYNREF{num} \\
      ~ \mid ~ &  \SYNREF{id} \\
      ~ \mid ~ &  \SYNREF{aexp} ~ \LEX{+{}} ~ \SYNREF{aexp} \\
      ~ \mid ~ &  \SYNREF{aexp} ~ \LEX{/{}} ~ \SYNREF{aexp} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{aexp} ~ \LEX{)}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{eval-arith} \LEFTPHRASE ~ \_ : \SYNREF{aexp} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{N} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{int-val} \LEFTPHRASE ~ \VAR{N} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{I} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
           (\SEMREF{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{AExp}\SUB{1} ~ \LEX{+{}} ~ \VARREF{AExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (\SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{AExp}\SUB{1} ~ \LEX{/{}} ~ \VARREF{AExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (\SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \LEX{(} ~ \VARREF{AExp} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{N} : \SYN{num}
      ~ ::= ~ & \LEX{-{}}\QUERY \_ \SYNREF{decimal}
\\
  \KEY{Lexis} ~ 
    \VARDECL{D} : \SYN{decimal}
      ~ ::= ~ & \LEFTGROUP \LEX{0} - \LEX{9} \RIGHTGROUP\PLUS
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{int-val} \LEFTPHRASE ~ \_ : \SYNREF{num} ~ \RIGHTPHRASE  : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{int-val} \LEFTPHRASE ~ \VARREF{D} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
        (\textsf{\textquotedblleft}\VAR{D}\textsf{\textquotedblright})
\\
  \KEY{Rule} ~ 
    & \SEMREF{int-val} \LEFTPHRASE ~ \LEX{-{}} ~ \VARREF{D} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate}
        (\SEMREF{int-val} \LEFTPHRASE ~ \VAR{D} ~ \RIGHTPHRASE )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{I} : \SYN{id}
      ~ ::= ~ & \LEFTGROUP \LEX{A} - \LEX{Z} \mid \LEX{a} - \LEX{z} \RIGHTGROUP\PLUS
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{id} \LEFTPHRASE ~ \_ : \SYNREF{id} ~ \RIGHTPHRASE  : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{id} \LEFTPHRASE ~ \VARREF{I} ~ \RIGHTPHRASE  = \\&\quad
      \textsf{\textquotedblleft}\VAR{I}\textsf{\textquotedblright}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
     \SYNDECL{keyword}
      ~ ::= ~ &
      \LEX{else} \\
      ~ \mid ~ &  \LEX{false} \\
      ~ \mid ~ &  \LEX{if} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \LEX{while}
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
