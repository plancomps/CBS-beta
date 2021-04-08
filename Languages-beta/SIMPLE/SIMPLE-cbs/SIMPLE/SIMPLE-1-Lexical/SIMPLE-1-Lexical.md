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

$$\KEY{Language} \quad \STRING{SIMPLE}$$

# $$\SECT{1}$$ Lexical Syntax
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{V} : \SYN{value}
      \ ::= \ & \
      \SYNREF{bool} \mid \SYNREF{int} \mid \SYNREF{string}
    \\
     \SYN{bool}
      \ ::= \ & \
      \LEX{false} \mid \LEX{true}
\\
  \KEY{Lexis} \quad
    \VARDECL{Z} : \SYN{int}
      \ ::= \ & \
      \LEFTGROUP \LEX{0} {-} \LEX{9} \RIGHTGROUP\PLUS
\\
  \KEY{Syntax} \quad
     \SYN{string}
      \ ::= \ & \
      \LEX{{"}} \_ \SYNREF{string-chars} \_ \LEX{{"}}
\\
  \KEY{Lexis} \quad
    \VARDECL{S} : \SYN{string-chars}
      \ ::= \ & \
      \LEFTGROUP \mathop{\sim} \LEX{{"}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{val} \LEFTPHRASE \ \_ : \SYNREF{value} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\end{align*}$$

## $$\SECT{1.1}$$ Booleans
           


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

## $$\SECT{1.2}$$ Integers
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \VARREF{Z} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
        (  \textsf{\textquotedblleft}\VAR{Z}\textsf{\textquotedblright} )
\end{align*}$$

## $$\SECT{1.3}$$ Strings
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{val} \LEFTPHRASE \
                            \LEX{{"}} \ \VARREF{S} \ \LEX{{"}} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{S}\textsf{\textquotedblright}
\end{align*}$$

## $$\SECT{1.4}$$ Identifiers
           


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{Id} : \SYN{id}
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
     \SYN{keyword}
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
[SIMPLE-1-Lexical.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical/SIMPLE-1-Lexical.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-1-Lexical/SIMPLE-1-Lexical.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
