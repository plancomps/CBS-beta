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

$$\KEY{Language} \quad \STRING{SIMPLE-THR}$$

# $$\SECT{1}$$ Lexical Syntax {#SectionNumber:1}


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{V} : \SYNDECL{value}
      \ ::= \ & \
      \SYNREF{bool} \mid \SYNREF{int} \mid \SYNREF{string}
    \\
     \SYNDECL{bool}
      \ ::= \ & \
      \LEX{false} \mid \LEX{true}
\\
  \KEY{Lexis} \quad
    \VARDECL{Z} : \SYNDECL{int}
      \ ::= \ & \
      \LEFTGROUP \LEX{0} {-} \LEX{9} \RIGHTGROUP\PLUS
\\
  \KEY{Syntax} \quad
     \SYNDECL{string}
      \ ::= \ & \
      \LEX{{"}} \_ \SYNREF{string-chars} \_ \LEX{{"}}
\\
  \KEY{Lexis} \quad
    \VARDECL{S} : \SYNDECL{string-chars}
      \ ::= \ & \
      \LEFTGROUP \mathop{\sim} \LEX{{"}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{val} \LEFTPHRASE \ \_ : \SYNREF{value} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\end{align*}$$

## $$\SECT{1.1}$$ Booleans {#SectionNumber:1.1}


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \LEX{false} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \LEX{true} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\end{align*}$$

## $$\SECT{1.2}$$ Integers {#SectionNumber:1.2}


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \VARREF{Z} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
        (  \textsf{\textquotedblleft}\VAR{Z}\textsf{\textquotedblright} )
\end{align*}$$

## $$\SECT{1.3}$$ Strings {#SectionNumber:1.3}


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \LEX{{"}} \ \VARREF{S} \ \LEX{{"}} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{S}\textsf{\textquotedblright}
\end{align*}$$

## $$\SECT{1.4}$$ Identifiers {#SectionNumber:1.4}


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{Id} : \SYNDECL{id}
      \ ::= \ & \
      \LEFTGROUP \LEX{A} {-} \LEX{Z} \mid \LEX{a} {-} \LEX{z} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP \ \LEFTGROUP \LEX{0} {-} \LEX{9} \mid \LEX{A} {-} \LEX{Z} \mid \LEX{a} {-} \LEX{z} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{id} \LEFTPHRASE \ \_ : \SYNREF{id} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{id} \LEFTPHRASE \
                            \VARREF{Id} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{Id}\textsf{\textquotedblright}
\end{align*}$$

$$\begin{align*}
  \KEY{Lexis} \quad
     \SYNDECL{keyword}
      \ ::= \ & \
      \LEX{false} \mid \LEX{true} \mid \LEX{var} \mid \LEX{function} \mid \LEX{sizeOf} \mid \LEX{read} \\
      \ \mid \ & \ \LEX{spawn} \mid \LEX{if} \mid \LEX{else} \mid \LEX{while} \mid \LEX{for} \mid \LEX{print} \mid \LEX{return} \\
      \ \mid \ & \ \LEX{try} \mid \LEX{catch} \mid \LEX{throw} \mid \LEX{join} \mid \LEX{acquire} \mid \LEX{release} \\
      \ \mid \ & \ \LEX{rendezvous}
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
[SIMPLE-THR-1-Lexical.cbs]: https://github.com/plancomps/CBS-beta/blob/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-1-Lexical/SIMPLE-THR-1-Lexical.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-1-Lexical
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-1-Lexical
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-1-Lexical/SIMPLE-THR-1-Lexical.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}