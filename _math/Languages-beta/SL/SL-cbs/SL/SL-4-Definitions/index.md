---
title: "SL-4-Definitions"
math: katex
parent: SL
ancestor: Languages-beta

---
[Languages-beta] : [SL-4-Definitions.cbs] \| [PLAIN] \| [PDF]

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

# $$\SECT{4}$$ Function definitions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{FunDef} : \SYN{fun-def}
      \ ::= \ & \
      \LEX{function} \ \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEX{{(}} \ \SYNREF{id-list}\QUERY \ \LEX{{)}} \ \SYNHYPER{../.}{SL-3-Statements}{block}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare} \LEFTPHRASE \ \VARREF{FunDef}\STAR : \SYNREF{fun-def}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare} \LEFTPHRASE \
                            \LEX{function} \ \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{(}} \ \VARREF{IdList}\QUERY \ \LEX{{)}} \ \VARHYPER{../.}{SL-3-Statements}{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                               \VAR{Id} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
             \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \\&\quad\quad\quad\quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                 ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../.}{SL-Funcons}{initialise-local-variables}, \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad\quad \SEMREF{pass-list} \LEFTPHRASE \
                                                     \VAR{IdList}\QUERY \
                                                   \RIGHTPHRASE , \\&\quad\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{handle-return}
                                 (  \SEMHYPER{../.}{SL-3-Statements}{exec} \LEFTPHRASE \
                                                             \VAR{Block} \
                                                           \RIGHTPHRASE  ) ) ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{declare} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare} \LEFTPHRASE \
                            \VARREF{FunDef} \ \VARREF{FunDef}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{declare} \LEFTPHRASE \
                                    \VAR{FunDef} \
                                  \RIGHTPHRASE , 
               \SEMREF{declare} \LEFTPHRASE \
                                    \VAR{FunDef}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Parameter lists
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{IdList} : \SYN{id-list}
      \ ::= \ & \
      \SYNHYPER{../.}{SL-1-Lexemes}{id} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{id-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{pass-list} \LEFTPHRASE \ \VARREF{IdList} : \SYNREF{id-list}\QUERY \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{pass-list} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} \quad
    & \SEMREF{pass-list} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Id} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../.}{SL-Funcons}{local-variable-initialise}
        (  \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head} \ 
                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} )
\\
  \KEY{Rule} \quad
    & \SEMREF{pass-list} \LEFTPHRASE \
                            \VARHYPER{../.}{SL-1-Lexemes}{Id} \ \LEX{{,}} \ \VARREF{IdList} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        ( \\&\quad\quad \NAMEHYPER{../.}{SL-Funcons}{local-variable-initialise}
                (  \SEMHYPER{../.}{SL-1-Lexemes}{id} \LEFTPHRASE \
                                            \VAR{Id} \
                                          \RIGHTPHRASE , 
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head} \ 
                          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{tail} \ 
                          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                       \SEMREF{pass-list} \LEFTPHRASE \
                                            \VAR{IdList} \
                                          \RIGHTPHRASE  ) )
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
[SL-4-Definitions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions/SL-4-Definitions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-4-Definitions/SL-4-Definitions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SL/SL-4-Definitions/SL-4-Definitions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
