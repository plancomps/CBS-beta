---
title: "IMPPP-4"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [IMPPP-4.cbs] \| [PLAIN] \| [PDF]

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

$$\KEY{Language} \quad \STRING{IMPPP}$$

# $$\SECT{4}$$ Statements and blocks
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Stmt} : \SYN{stmt}
      \ ::= \ & \
      \SYNREF{block} \\
      \ \mid \ & \ \LEX{int} \ \SYNREF{ids} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNHYPER{../.}{IMPPP-3}{bexp} \ \LEX{{)}} \ \SYNREF{block} \ \LEX{else} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNHYPER{../.}{IMPPP-3}{bexp} \ \LEX{{)}} \ \SYNREF{block} \\
      \ \mid \ & \ \LEX{print} \ \LEX{{(}} \ \SYNHYPER{../.}{IMPPP-2}{aexps} \ \LEX{{)}} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{halt} \ \LEX{{;}} \\
      \ \mid \ & \ \LEX{join} \ \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{;}}
    \\
    \VARDECL{Block} : \SYN{block}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{stmt}\STAR \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{execute} \LEFTPHRASE \ \_ : \SYNREF{stmt}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{int} \ \VARREF{IL} \ \LEX{{;}} \ \VARREF{Stmt}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                (  \SEMREF{declare-int-vars} \LEFTPHRASE \
                                            \VAR{IL} \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Stmt}\STAR \
                                  \RIGHTPHRASE  )
\\
  \KEY{Otherwise} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARREF{Stmt} \ \VARREF{Stmt}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Stmt} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Stmt}\PLUS \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-2}{AExp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect}
        (  \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARHYPER{../.}{IMPPP-3}{BExp} \ \LEX{{)}} \ \VARREF{Block}\SUB{1} \ \LEX{else} \ \VARREF{Block}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        ( \\&\quad\quad \SEMHYPER{../.}{IMPPP-3}{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block}\SUB{1} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{while} \ \LEX{{(}} \ \VARHYPER{../.}{IMPPP-3}{BExp} \ \LEX{{)}} \ \VARREF{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (  \SEMHYPER{../.}{IMPPP-3}{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{Block} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{print} \ \LEX{{(}} \ \VARHYPER{../.}{IMPPP-2}{AExp} \ \LEX{{)}} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (  \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{print} \ \LEX{{(}} \ \VARHYPER{../.}{IMPPP-2}{AExp} \ \LEX{{,}} \ \VARHYPER{../.}{IMPPP-2}{AExps} \ \LEX{{)}} \ \LEX{{;}} \
      \RIGHTPHRASE : \SYNREF{stmt}\PLUS = \\&
      \LEFTPHRASE \
        \LEX{print} \ \LEX{{(}} \ \VAR{AExp} \ \LEX{{)}} \ \LEX{{;}} \ \LEX{print} \ \LEX{{(}} \ \VAR{AExps} \ \LEX{{)}} \ \LEX{{;}} \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{halt} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-terminate}
        (  \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{current-thread} )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{join} \ \VARHYPER{../.}{IMPPP-2}{AExp} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join}
        (  \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
                (  \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE \
                                            \VAR{AExp} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{Stmt}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \SEMREF{execute} \LEFTPHRASE \
                            \VAR{Stmt}\STAR \
                          \RIGHTPHRASE 
\end{align*}$$

## Variable declarations
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{IL} : \SYN{ids}
      \ ::= \ & \
      \SYNHYPER{../.}{IMPPP-1}{id} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{ids} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare-int-vars} \LEFTPHRASE \ \_ : \SYNREF{ids} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{I} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (  \SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE \
                                    \VAR{I} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, 
                       0 ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{I} \ \LEX{{,}} \ \VARREF{IL} \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VAR{I} \
                          \RIGHTPHRASE , 
       \SEMREF{declare-int-vars} \LEFTPHRASE \
                            \VAR{IL} \
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
[IMPPP-4.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-4/IMPPP-4.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-4
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-4
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-4/IMPPP-4.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-4/IMPPP-4.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
