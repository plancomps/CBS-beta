---
title: "SIMPLE-5-Programs"
math: katex
parent: SIMPLE
ancestor: Languages-beta

---
[Languages-beta] : [SIMPLE-5-Programs.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE}$$

# $$\SECT{5}$$ Programs
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Pgm} : \SYN{pgm}
      \ ::= \ & \
      \SYNREF{decls}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{run} \LEFTPHRASE \ \VARREF{Decls} : \SYNREF{pgm} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} \\&\quad
    =  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
         ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                 (  \SEMREF{declarations} \LEFTPHRASE \
                                             \VAR{Decls} \
                                           \RIGHTPHRASE  ), \\&\quad\quad\quad\quad
                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad\quad \SEMREF{initialisations} \LEFTPHRASE \
                                             \VAR{Decls} \
                                           \RIGHTPHRASE , \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
                         (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                                         (  \STRING{main} ) ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                 (   \  ) ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Decls} : \SYN{decls}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-4-Declarations}{decl} \ \SYNREF{decls}\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declarations} \LEFTPHRASE \ \_ : \SYNREF{decls} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{declarations} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE \
                            \VAR{Decl} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{declarations} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} \ \VARREF{Decls} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE \
                            \VAR{Decl} \
                          \RIGHTPHRASE , 
       \SEMREF{declarations} \LEFTPHRASE \
                            \VAR{Decls} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{initialisations} \LEFTPHRASE \ \_ : \SYNREF{decls} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{initialisations} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{initialise} \LEFTPHRASE \
                            \VAR{Decl} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{initialisations} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} \ \VARREF{Decls} \
                          \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{initialise} \LEFTPHRASE \
                            \VAR{Decl} \
                          \RIGHTPHRASE , 
       \SEMREF{initialisations} \LEFTPHRASE \
                            \VAR{Decls} \
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
[SIMPLE-5-Programs.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-5-Programs/SIMPLE-5-Programs.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-5-Programs
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-5-Programs
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-5-Programs/SIMPLE-5-Programs.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-5-Programs/SIMPLE-5-Programs.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
