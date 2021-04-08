---
title: "IMPPP-2"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [IMPPP-2.cbs] \| [PLAIN] \| [PDF]

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

# $$\SECT{2}$$ Value expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{AExp} : \SYN{aexp}
      \ ::= \ & \
      \SYNHYPER{../.}{IMPPP-1}{int} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMPPP-1}{string} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMPPP-1}{id} \\
      \ \mid \ & \ \SYNREF{aexp} \ \LEX{{+}} \ \SYNREF{aexp} \\
      \ \mid \ & \ \SYNREF{aexp} \ \LEX{{/}} \ \SYNREF{aexp} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{aexp} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMPPP-1}{id} \ \LEX{{=}} \ \SYNREF{aexp} \\
      \ \mid \ & \ \LEX{{+}{+}} \ \SYNHYPER{../.}{IMPPP-1}{id} \\
      \ \mid \ & \ \LEX{read} \ \LEX{{(}} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{spawn} \ \SYNHYPER{../.}{IMPPP-4}{block}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{aexp-values}  
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{integer-add-or-string-append}(
                       \_ : \NAMEREF{aexp-values}, \_ : \NAMEREF{aexp-values}) \\&\quad
    :  \TO \NAMEREF{aexp-values} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{integer-add-or-string-append}
        (  \VAR{N}\SUB{1} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, 
               \VAR{N}\SUB{2} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
          (  \VAR{N}\SUB{1}, 
                 \VAR{N}\SUB{2} )
\\
  \KEY{Rule} \quad
    & \NAMEREF{integer-add-or-string-append}
        (  \VAR{S}\SUB{1} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}, 
               \VAR{S}\SUB{2} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
          (  \VAR{S}\SUB{1}, 
                 \VAR{S}\SUB{2} )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-arith} \LEFTPHRASE \ \_ : \SYNREF{aexp} \ \RIGHTPHRASE  
    :  \TO \NAMEREF{aexp-values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{N} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{IMPPP-1}{int-val} \LEFTPHRASE \
                            \VAR{N} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{S} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{IMPPP-1}{string-val} \LEFTPHRASE \
                            \VAR{S} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{I} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                (  \SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE \
                                            \VAR{I} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{AExp}\SUB{1} \ \LEX{{+}} \ \VARREF{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEREF{integer-add-or-string-append}
        (  \SEMREF{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARREF{AExp}\SUB{1} \ \LEX{{/}} \ \VARREF{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (  \SEMREF{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{AExp} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-arith} \LEFTPHRASE \
                            \VAR{AExp} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-1}{I} \ \LEX{{=}} \ \VARREF{AExp} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{eval-arith} \LEFTPHRASE \
                                    \VAR{AExp} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                                (  \SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE \
                                                            \VAR{I} \
                                                          \RIGHTPHRASE  ), 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \LEX{{+}{+}} \ \VARHYPER{../.}{IMPPP-1}{I} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                                (  \SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE \
                                                            \VAR{I} \
                                                          \RIGHTPHRASE  ) ), 
                       1 ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                                (  \SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE \
                                                            \VAR{I} \
                                                          \RIGHTPHRASE  ), 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \LEX{read} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith} \LEFTPHRASE \
                            \LEX{spawn} \ \VARHYPER{../.}{IMPPP-4}{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{allocate-index}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate} \ 
                \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable} \ 
                  \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                    \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
                      \SEMHYPER{../.}{IMPPP-4}{execute} \LEFTPHRASE \
                                            \VAR{Block} \
                                          \RIGHTPHRASE  )
\end{align*}$$

## Value expression sequences
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{AExps} : \SYN{aexps}
      \ ::= \ & \
      \SYNREF{aexp} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{aexps} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-arith-seq} \LEFTPHRASE \ \_ : \SYNREF{aexps} \ \RIGHTPHRASE  
    : (   \TO \NAMEREF{aexp-values} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith-seq} \LEFTPHRASE \
                            \VARREF{AExp} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-arith} \LEFTPHRASE \
                            \VAR{AExp} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-arith-seq} \LEFTPHRASE \
                            \VARREF{AExp} \ \LEX{{,}} \ \VARREF{AExps} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-arith} \LEFTPHRASE \
                            \VAR{AExp} \
                          \RIGHTPHRASE , 
       \SEMREF{eval-arith-seq} \LEFTPHRASE \
                            \VAR{AExp} \
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
[IMPPP-2.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2/IMPPP-2.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2/IMPPP-2.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-2/IMPPP-2.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
