---
title: "LD-Start"
math: katex
parent: LD
ancestor: Unstable-Languages-beta
nav_order: LD
---
[Unstable-Languages-beta] : [LD-Start.cbs] \| [PLAIN] \| [PDF]

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

$$\KEY{Language} \quad \STRING{LD}$$




$$\begin{align*}
  [ \
  \textsf{\SECTREF{1}} \ & \textsf{Lexical constructs} \\
  \textsf{\SECTREF{2}} \ & \textsf{Call-by-value lambda-calculus} \\
  \textsf{\SECTREF{3}} \ & \textsf{Arithmetic and Boolean expressions} \\
  \textsf{\SECTREF{4}} \ & \textsf{References and imperatives} \\
  \textsf{\SECTREF{5}} \ & \textsf{Multithreading} \\
  \textsf{\SECTREF{6}} \ & \textsf{Programs} \\
  \textsf{\SECTHYPER{../.}{LD-Disambiguation}{A}} \ & \textsf{Disambiguation}
  \ ]
\end{align*}$$

 
  Lexical syntax: 


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{X} : \SYN{id}
      \ ::= \ & \
      \LEFTGROUP \LEX{a} {-} \LEX{z} \RIGHTGROUP \ \LEFTGROUP \LEX{a} {-} \LEX{z} \mid \LEX{0} {-} \LEX{9} \RIGHTGROUP\STAR
    \\
    \VARDECL{N} : \SYN{int}
      \ ::= \ & \
      \LEFTGROUP \LEX{0} {-} \LEX{9} \RIGHTGROUP\PLUS
    \\
     \SYN{keyword}
      \ ::= \ & \
      \LEX{do} \mid \LEX{else} \mid \LEX{fork} \mid \LEX{if} \\
      \ \mid \ & \ \LEX{in} \mid \LEX{join} \mid \LEX{lambda} \mid \LEX{let} \\
      \ \mid \ & \ \LEX{ref} \mid \LEX{spawn} \mid \LEX{then} \mid \LEX{while}
\end{align*}$$


  Context-free syntax:


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{E} : \SYN{exp}
      \ ::= \ & \
      \SYNREF{int} \\
      \ \mid \ & \ \SYNREF{id} \\
      \ \mid \ & \ \LEX{lambda} \ \SYNREF{id} \ \LEX{{.}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{let} \ \SYNREF{id} \ \LEX{{=}} \ \SYNREF{exp} \ \LEX{in} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{exp} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{+}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{*}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{/}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{<}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{if} \ \SYNREF{exp} \ \LEX{then} \ \SYNREF{exp} \ \LEX{else} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{ref} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{:}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{;}} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{{(}} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{while} \ \SYNREF{exp} \ \LEX{do} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{spawn} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{join} \ \SYNREF{exp}
\end{align*}$$


  Expression evaluation:


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{ld-values}  \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
               (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, 
                      \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \\&\quad\quad\quad \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\&\quad\quad\quad \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\&\quad\quad\quad \mid \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} \\&\quad\quad\quad \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad\quad\quad \mid \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-ids}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval} \LEFTPHRASE \ \_ : \SYNREF{exp} \ \RIGHTPHRASE  
    :  \TO \NAMEREF{ld-values} 
\end{align*}$$

# $$\SECT{1}$$ Lexical constructs
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{N} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal} \ 
        \textsf{\textquotedblleft}\VAR{N}\textsf{\textquotedblright}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{X} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
        \textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}
\end{align*}$$

# $$\SECT{2}$$ Call-by-value lambda-calculus
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{lambda} \ \VARREF{X} \ \LEX{{.}} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \\&\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
            ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
                    (  \textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}, 
                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                   \SEMREF{eval} \LEFTPHRASE \
                                        \VAR{E} \
                                      \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{let} \ \VARREF{X} \ \LEX{{=}} \ \VARREF{E}\SUB{1} \ \LEX{in} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
                (  \textsf{\textquotedblleft}\VAR{X}\textsf{\textquotedblright}, 
                       \SEMREF{eval} \LEFTPHRASE \
                                            \VAR{E}\SUB{1} \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\end{align*}$$


Desugaring (alternative to the above rule):

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{let} \ \VARREF{X} \ \LEX{{=}} \ \VARREF{E}\SUB{1} \ \LEX{in} \ \VARREF{E}\SUB{2} \
      \RIGHTPHRASE : \SYNREF{exp} = \\&
      \LEFTPHRASE \
        \LEX{{(}} \ \LEX{lambda} \ \VAR{X} \ \LEX{{.}} \ \VAR{E}\SUB{2} \ \LEX{{)}} \ \LEX{{(}} \ \VAR{E}\SUB{1} \ \LEX{{)}} \
      \RIGHTPHRASE
\end{align*}$$



$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\end{align*}$$

# $$\SECT{3}$$ Arithmetic and Boolean expressions
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{+}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{*}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mul}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{/}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div}
          (  \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{E}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{E}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{<}{=}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{l-to-r}
          (  \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{E}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{eval} \LEFTPHRASE \
                                      \VAR{E}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{if} \ \VARREF{E}\SUB{1} \ \LEX{then} \ \VARREF{E}\SUB{2} \ \LEX{else} \ \VARREF{E}\SUB{3} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{3} \
                                  \RIGHTPHRASE  )
\end{align*}$$

# $$\SECT{4}$$ References and imperatives
           


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{ref} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
        (  \NAMEREF{ld-values}, 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{:}{=}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{;}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
                (  \SEMREF{eval} \LEFTPHRASE \
                                            \VAR{E}\SUB{1} \
                                          \RIGHTPHRASE  ), 
               \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{while} \ \VARREF{E}\SUB{1} \ \LEX{do} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
                (  \SEMREF{eval} \LEFTPHRASE \
                                            \VAR{E}\SUB{2} \
                                          \RIGHTPHRASE  ) )
\end{align*}$$

# $$\SECT{5}$$ Multithreading
           



N.B. The funcons for multithreading have not yet been fully validated,
so they are defined in Unstable-Funcons-beta instead of Funcons-beta.


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{spawn} \ \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate} \ 
        \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable} \ 
          \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
            \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
              \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval} \LEFTPHRASE \
                            \LEX{join} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join}
        (  \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\end{align*}$$

# $$\SECT{6}$$ Programs
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{START} : \SYN{start}
      \ ::= \ & \
      \SYNREF{exp}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{start} \LEFTPHRASE \ \_ : \SYNREF{start} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{start} \LEFTPHRASE \
                            \VARREF{E} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\&\quad\quad 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\&\quad\quad\quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\&\quad\quad\quad\quad 
            \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} \\&\quad\quad\quad\quad\quad 
              \SEMREF{eval} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE 
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
[LD-Start.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start/LD-Start.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Start/LD-Start.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Start/LD-Start.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
