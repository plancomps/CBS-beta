{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

$$\KEY{Language} \quad \STRING{SL}$$

# $$\SECT{1}$$ Lexemes
           


## Identifiers
               


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{Id} : \SYN{id}
      \ ::= \ & \
      \LEFTGROUP \LEX{a} {-} \LEX{z} \mid \LEX{A} {-} \LEX{Z} \RIGHTGROUP \ \LEFTGROUP \LEX{a} {-} \LEX{z} \mid \LEX{A} {-} \LEX{Z} \mid \LEX{0} {-} \LEX{9} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{id} \LEFTPHRASE \ \VARREF{Id} : \SYNREF{id} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{id} \LEFTPHRASE \
                            \VARREF{Id} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{Id}\textsf{\textquotedblright}
\end{align*}$$

## Numerals
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Int} : \SYN{int}
      \ ::= \ & \
      \LEX{{-}}\QUERY \_ \SYNREF{nat}
\\
  \KEY{Lexis} \quad
    \VARDECL{Nat} : \SYN{nat}
      \ ::= \ & \
      \LEFTGROUP \LEX{0} {-} \LEX{9} \RIGHTGROUP\PLUS
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{int-val} \LEFTPHRASE \ \VARREF{Int} : \SYNREF{int} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} 
\\
  \KEY{Rule} \quad
    & \SEMREF{int-val} \LEFTPHRASE \
                            \LEX{{-}} \ \VARREF{Nat} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate} \ 
        \SEMREF{int-val} \LEFTPHRASE \
                              \VAR{Nat} \
                            \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{int-val} \LEFTPHRASE \
                            \VARREF{Nat} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} \ 
        \textsf{\textquotedblleft}\VAR{Nat}\textsf{\textquotedblright}
\end{align*}$$

## Strings
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{String} : \SYN{string}
      \ ::= \ & \
      \LEX{{"}} \_ \SYNREF{string-chars} \_ \LEX{{"}}
\\
  \KEY{Lexis} \quad
    \VARDECL{StringChars} : \SYN{string-chars}
      \ ::= \ & \
      \SYNREF{string-char}\STAR
    \\
     \SYN{string-char}
      \ ::= \ & \
      \mathop{\sim} \LEFTGROUP \LEX{{"}} \mid \LEX{{\BACKSLASH}n} \RIGHTGROUP
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{string-val} \LEFTPHRASE \ \VARREF{String} : \SYNREF{string} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} 
\\
  \KEY{Rule} \quad
    & \SEMREF{string-val} \LEFTPHRASE \
                            \LEX{{"}} \ \VARREF{StringChars} \ \LEX{{"}} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{StringChars}\textsf{\textquotedblright}
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
[SL-1-Lexemes.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes/SL-1-Lexemes.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-1-Lexemes/SL-1-Lexemes.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
