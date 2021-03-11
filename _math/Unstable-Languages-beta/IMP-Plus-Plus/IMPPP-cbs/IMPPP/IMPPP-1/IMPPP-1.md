$$\KEY{Language} \STRING{IMPPP}$$

# $$\SECT{1}$$ Values
           


## Integers
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{N} : \SYN{int}
      ~ ::= ~ & \LEX{-{}}\QUERY \_ \SYNREF{decimal}
\\
  \KEY{Lexis} ~ 
    \VARDECL{D} : \SYN{decimal}
      ~ ::= ~ & \LEFTGROUP \LEX{0} - \LEX{9} \RIGHTGROUP\PLUS
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{int-val} \LEFTPHRASE ~ \_ : \SYNREF{int} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
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

## Strings
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{S} : \SYN{string}
      ~ ::= ~ & \LEX{"{}} \_ \SYNREF{string-chars} \_ \LEX{"{}}
\\
  \KEY{Lexis} ~ 
    \VARDECL{SCS} : \SYN{string-chars}
      ~ ::= ~ & \LEFTGROUP \mathop{\sim} \LEX{"{}} \RIGHTGROUP\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{string-val} \LEFTPHRASE ~ \_ : \SYNREF{string} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{string-val} \LEFTPHRASE ~ \LEX{"{}} ~ \VARREF{SCS} ~ \LEX{"{}} ~ \RIGHTPHRASE  = \\&\quad
      \textsf{\textquotedblleft}\VAR{SCS}\textsf{\textquotedblright}
\end{aligned}$$

## Identifiers
               


$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{I} : \SYN{id}
      ~ ::= ~ & \LEFTGROUP \LEX{A} - \LEX{Z} \mid \LEX{a} - \LEX{z} \mid \LEX{\UNDERSCORE } \RIGHTGROUP ~ \LEFTGROUP \LEX{0} - \LEX{9} \mid \LEX{A} - \LEX{Z} \mid \LEX{a} - \LEX{z} \mid \LEX{\UNDERSCORE } \RIGHTGROUP\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{id} \LEFTPHRASE ~ \_ : \SYNREF{id} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
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
      ~ \mid ~ &  \LEX{halt} \\
      ~ \mid ~ &  \LEX{join} \\
      ~ \mid ~ &  \LEX{print} \\
      ~ \mid ~ &  \LEX{read} \\
      ~ \mid ~ &  \LEX{spawn} \\
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
