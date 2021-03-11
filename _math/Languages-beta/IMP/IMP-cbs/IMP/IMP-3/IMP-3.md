$$\KEY{Language} \STRING{IMP}$$

# $$\SECT{3}$$ Statements and blocks
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Stmt} : \SYNDECL{stmt}
      ~ ::= ~ &
      \SYNREF{block} \\
      ~ \mid ~ &  \SYNHYPER{../.}{IMP-1}{id} ~ \LEX{={}} ~ \SYNHYPER{../.}{IMP-1}{aexp} ~ \LEX{;{}} \\
      ~ \mid ~ &  \LEX{if} ~ \LEX{(} ~ \SYNHYPER{../.}{IMP-2}{bexp} ~ \LEX{)} ~ \SYNREF{block} ~ \LEFTGROUP \LEX{else} ~ \SYNREF{block} \RIGHTGROUP\QUERY \\
      ~ \mid ~ &  \LEX{while} ~ \LEX{(} ~ \SYNHYPER{../.}{IMP-2}{bexp} ~ \LEX{)} ~ \SYNREF{block} \\
      ~ \mid ~ &  \SYNREF{stmt} ~ \SYNREF{stmt}
\\
  \KEY{Syntax} ~ 
    \VARDECL{Block} : \SYN{block}
      ~ ::= ~ & \LEX{\LEFTBRACE } ~ \SYNREF{stmt}\QUERY ~ \LEX{\RIGHTBRACE }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VARHYPER{../.}{IMP-2}{BExp} ~ \LEX{)} ~ \VARREF{Block} ~ \RIGHTPHRASE : \SYNREF{stmt} = \\
    & \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VAR{BExp} ~ \LEX{)} ~ \VAR{Block} ~ \LEX{else} ~ \LEX{\LEFTBRACE } ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{execute} \LEFTPHRASE ~ \_ : \SYNREF{stmt} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \VARHYPER{../.}{IMP-1}{I} ~ \LEX{={}} ~ \VARHYPER{../.}{IMP-1}{AExp} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
           (\SEMHYPER{../.}{IMP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMHYPER{../.}{IMP-1}{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VARHYPER{../.}{IMP-2}{BExp} ~ \LEX{)} ~ \VARREF{Block}\SUB{1} ~ \LEX{else} ~ \VARREF{Block}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMHYPER{../.}{IMP-2}{eval-bool} \LEFTPHRASE ~ \VAR{BExp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{Block}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{Block}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{while} ~ \LEX{(} ~ \VARHYPER{../.}{IMP-2}{BExp} ~ \LEX{)} ~ \VARREF{Block} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (\SEMHYPER{../.}{IMP-2}{eval-bool} \LEFTPHRASE ~ \VAR{BExp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{Block} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \VARREF{Stmt}\SUB{1} ~ \VARREF{Stmt}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (\SEMREF{execute} \LEFTPHRASE ~ \VAR{Stmt}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{Stmt}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \VARREF{Stmt} ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{execute} \LEFTPHRASE ~ \VAR{Stmt} ~ \RIGHTPHRASE 
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
