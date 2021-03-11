---
layout: default
title: "SIMPLE-THR-1-Lexical"
math: katex
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-1-Lexical.cbs]

$$\KEY{Language} \STRING{SIMPLE-THR}$$

# $$\SECT{1}$$ Lexical Syntax
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{V} : \SYNDECL{value}
      ~ ::= ~ &
      \SYNREF{bool} \\
      ~ \mid ~ &  \SYNREF{int} \\
      ~ \mid ~ &  \SYNREF{string}
    \\
     \SYNDECL{bool}
      ~ ::= ~ &
      \LEX{false} \\
      ~ \mid ~ &  \LEX{true}
\\
  \KEY{Lexis} ~ 
    \VARDECL{Z} : \SYN{int}
      ~ ::= ~ & \LEFTGROUP \LEX{0} - \LEX{9} \RIGHTGROUP\PLUS
\\
  \KEY{Syntax} ~ 
     \SYN{string}
      ~ ::= ~ & \LEX{"{}} \_ \SYNREF{string-chars} \_ \LEX{"{}}
\\
  \KEY{Lexis} ~ 
    \VARDECL{S} : \SYN{string-chars}
      ~ ::= ~ & \LEFTGROUP \mathop{\sim} \LEX{"{}} \RIGHTGROUP\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{val} \LEFTPHRASE ~ \_ : \SYNREF{value} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\end{aligned}$$

## $$\SECT{1.1}$$ Booleans
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{val} \LEFTPHRASE ~ \LEX{false} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} ~ 
    & \SEMREF{val} \LEFTPHRASE ~ \LEX{true} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\end{aligned}$$

## $$\SECT{1.2}$$ Integers
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{val} \LEFTPHRASE ~ \VARREF{Z} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
        (\textsf{\textquotedblleft}\VAR{Z}\textsf{\textquotedblright})
\end{aligned}$$

## $$\SECT{1.3}$$ Strings
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{val} \LEFTPHRASE ~ \LEX{"{}} ~ \VARREF{S} ~ \LEX{"{}} ~ \RIGHTPHRASE  = \\&\quad
      \textsf{\textquotedblleft}\VAR{S}\textsf{\textquotedblright}
\end{aligned}$$

## $$\SECT{1.4}$$ Identifiers
           


$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{Id} : \SYN{id}
      ~ ::= ~ & \LEFTGROUP \LEX{A} - \LEX{Z} \mid \LEX{a} - \LEX{z} \mid \LEX{\UNDERSCORE } \RIGHTGROUP ~ \LEFTGROUP \LEX{0} - \LEX{9} \mid \LEX{A} - \LEX{Z} \mid \LEX{a} - \LEX{z} \mid \LEX{\UNDERSCORE } \RIGHTGROUP\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{id} \LEFTPHRASE ~ \_ : \SYNREF{id} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{id} \LEFTPHRASE ~ \VARREF{Id} ~ \RIGHTPHRASE  = \\&\quad
      \textsf{\textquotedblleft}\VAR{Id}\textsf{\textquotedblright}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
     \SYNDECL{keyword}
      ~ ::= ~ &
      \LEX{false} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \LEX{var} \\
      ~ \mid ~ &  \LEX{function} \\
      ~ \mid ~ &  \LEX{sizeOf} \\
      ~ \mid ~ &  \LEX{read} \\
      ~ \mid ~ &  \LEX{spawn} \\
      ~ \mid ~ &  \LEX{if} \\
      ~ \mid ~ &  \LEX{else} \\
      ~ \mid ~ &  \LEX{while} \\
      ~ \mid ~ &  \LEX{for} \\
      ~ \mid ~ &  \LEX{print} \\
      ~ \mid ~ &  \LEX{return} \\
      ~ \mid ~ &  \LEX{try} \\
      ~ \mid ~ &  \LEX{catch} \\
      ~ \mid ~ &  \LEX{throw} \\
      ~ \mid ~ &  \LEX{join} \\
      ~ \mid ~ &  \LEX{acquire} \\
      ~ \mid ~ &  \LEX{release} \\
      ~ \mid ~ &  \LEX{rendezvous}
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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[SIMPLE-THR-1-Lexical.cbs]: /CBS-beta/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-1-Lexical/SIMPLE-THR-1-Lexical.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-1-Lexical/SIMPLE-THR-1-Lexical.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
