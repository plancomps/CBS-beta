{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{IMPPP}$$

# $$\SECT{3}$$ Boolean expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{BExp} : \SYN{bexp}
      \ ::= \ & \
      \LEX{false} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \SYNHYPER{../.}{IMPPP-2}{aexp} \ \LEX{{<}{=}} \ \SYNHYPER{../.}{IMPPP-2}{aexp} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{bexp} \\
      \ \mid \ & \ \SYNREF{bexp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{bexp} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{bexp} \ \LEX{{)}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{eval-bool} \LEFTPHRASE \ \_ : \SYNREF{bexp} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{false} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{true} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \VARHYPER{../.}{IMPPP-2}{AExp}\SUB{1} \ \LEX{{<}{=}} \ \VARHYPER{../.}{IMPPP-2}{AExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{left-to-right}
          (  \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMHYPER{../.}{IMPPP-2}{eval-arith} \LEFTPHRASE \
                                      \VAR{AExp}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{BExp} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (  \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \VARREF{BExp}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{BExp}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{eval-bool} \LEFTPHRASE \
                                    \VAR{BExp}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{eval-bool} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{BExp} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{eval-bool} \LEFTPHRASE \
                            \VAR{BExp} \
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
[IMPPP-3.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3/IMPPP-3.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-3/IMPPP-3.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
