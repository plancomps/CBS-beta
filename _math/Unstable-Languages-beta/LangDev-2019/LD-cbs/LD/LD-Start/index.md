---
layout: default
title: "LD-Start"
math: katex
parent: LD
ancestor: Unstable-Languages-beta
nav_order: LD
---

[Unstable-Languages-beta] : [LD-Start.cbs]

$$\KEY{Language} \STRING{LD}$$




$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{\SECTREF{1}} ~ & \textsf{Lexical constructs} \\
  \textsf{\SECTREF{2}} ~ & \textsf{Call-by-value lambda-calculus} \\
  \textsf{\SECTREF{3}} ~ & \textsf{Arithmetic and Boolean expressions} \\
  \textsf{\SECTREF{4}} ~ & \textsf{References and imperatives} \\
  \textsf{\SECTREF{5}} ~ & \textsf{Multithreading} \\
  \textsf{\SECTREF{6}} ~ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{LD-Disambiguation}{A}} ~ & \textsf{Disambiguation}
  ~ ]
\end{aligned}$$

 
  Lexical syntax: 


$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{X} : \SYN{id}
      ~ ::= ~ & \LEFTGROUP \LEX{a} - \LEX{z} \RIGHTGROUP ~ \LEFTGROUP \LEX{a} - \LEX{z} \mid \LEX{0} - \LEX{9} \RIGHTGROUP\STAR
    \\
    \VARDECL{N} : \SYN{int}
      ~ ::= ~ & \LEFTGROUP \LEX{0} - \LEX{9} \RIGHTGROUP\PLUS
    \\
     \SYNDECL{keyword}
      ~ ::= ~ &
      \LEX{do} \\
      ~ \mid ~ &  \LEX{else} \\
      ~ \mid ~ &  \LEX{fork} \\
      ~ \mid ~ &  \LEX{if} \\
      ~ \mid ~ &  \LEX{in} \\
      ~ \mid ~ &  \LEX{join} \\
      ~ \mid ~ &  \LEX{lambda} \\
      ~ \mid ~ &  \LEX{let} \\
      ~ \mid ~ &  \LEX{ref} \\
      ~ \mid ~ &  \LEX{spawn} \\
      ~ \mid ~ &  \LEX{then} \\
      ~ \mid ~ &  \LEX{while}
\end{aligned}$$


  Context-free syntax:


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{E} : \SYNDECL{exp}
      ~ ::= ~ &
      \SYNREF{int} \\
      ~ \mid ~ &  \SYNREF{id} \\
      ~ \mid ~ &  \LEX{lambda} ~ \SYNREF{id} ~ \LEX{.{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{let} ~ \SYNREF{id} ~ \LEX{={}} ~ \SYNREF{exp} ~ \LEX{in} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{exp} ~ \LEX{)} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{+{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{*{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{/{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{<{}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{if} ~ \SYNREF{exp} ~ \LEX{then} ~ \SYNREF{exp} ~ \LEX{else} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{ref} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{:{}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{!{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{;{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{(} ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{while} ~ \SYNREF{exp} ~ \LEX{do} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{spawn} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{join} ~ \SYNREF{exp}
\end{aligned}$$


  Expression evaluation:


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{ld-values}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values},   
              \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \mid \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \mid \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-ids}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{eval} \LEFTPHRASE ~ \_ : \SYNREF{exp} ~ \RIGHTPHRASE  :  \TO \NAMEREF{ld-values} 
\end{aligned}$$

# $$\SECT{1}$$ Lexical constructs
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{N} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal} ~
        \textsf{\textquotedblleft}\VAR{N}\textsf{\textquotedblright}
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{X} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
        \textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}
\end{aligned}$$

# $$\SECT{2}$$ Call-by-value lambda-calculus
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{lambda} ~ \VARREF{X} ~ \LEX{.{}} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
            (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
               (\textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}, \\&\quad \quad \quad \quad \quad 
                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad \quad 
             \SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{let} ~ \VARREF{X} ~ \LEX{={}} ~ \VARREF{E}\SUB{1} ~ \LEX{in} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
           (\textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}, \\&\quad \quad \quad 
            \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\end{aligned}$$


Desugaring (alternative to the above rule):

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{let} ~ \VARREF{X} ~ \LEX{={}} ~ \VARREF{E}\SUB{1} ~ \LEX{in} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE : \SYNREF{exp} = \\
    & \LEFTPHRASE ~ \LEX{(} ~ \LEX{lambda} ~ \VAR{X} ~ \LEX{.{}} ~ \VAR{E}\SUB{2} ~ \LEX{)} ~ \LEX{(} ~ \VAR{E}\SUB{1} ~ \LEX{)} ~ \RIGHTPHRASE
\end{aligned}$$



$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{(} ~ \VARREF{E} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\end{aligned}$$

# $$\SECT{3}$$ Arithmetic and Boolean expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{+{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{*{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mul}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{/{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div}
          (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{<{}={}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{l-to-r}
          (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false})
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{if} ~ \VARREF{E}\SUB{1} ~ \LEX{then} ~ \VARREF{E}\SUB{2} ~ \LEX{else} ~ \VARREF{E}\SUB{3} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{3} ~ \RIGHTPHRASE )
\end{aligned}$$

# $$\SECT{4}$$ References and imperatives
           


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{ref} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
        (\NAMEREF{ld-values}, \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{:{}={}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{!{}} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{;{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
           (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{(} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{while} ~ \VARREF{E}\SUB{1} ~ \LEX{do} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
           (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE ))
\end{aligned}$$

# $$\SECT{5}$$ Multithreading
           



N.B. The funcons for multithreading have not yet been fully validated,
so they are defined in Unstable-Funcons-beta instead of Funcons-beta.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{spawn} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate} ~
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable} ~
          \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
            \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
              \SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval} \LEFTPHRASE ~ \LEX{join} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join}
        (\SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
\end{aligned}$$

# $$\SECT{6}$$ Programs
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{START} : \SYN{start}
      ~ ::= ~ & \SYNREF{exp}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{start} \LEFTPHRASE ~ \_ : \SYNREF{start} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{start} \LEFTPHRASE ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} ~
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} ~
              \SEMREF{eval} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
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

[LD-Start.cbs]: /CBS-beta/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start/LD-Start.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Start/LD-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
