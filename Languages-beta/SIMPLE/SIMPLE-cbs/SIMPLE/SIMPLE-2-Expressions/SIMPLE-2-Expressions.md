{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{SIMPLE}$$

# $$\SECT{2}$$ Expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Exp} : \SYN{exp}
      \ ::= \ & \
      \LEX{{(}} \ \SYNREF{exp} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNHYPER{../.}{SIMPLE-1-Lexical}{value} \\
      \ \mid \ & \ \SYNREF{lexp} \\
      \ \mid \ & \ \SYNREF{lexp} \ \LEX{{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{{+}{+}} \ \SYNREF{lexp} \\
      \ \mid \ & \ \LEX{{-}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{(}} \ \SYNREF{exps}\QUERY \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{sizeOf} \ \LEX{{(}} \ \SYNREF{exp} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{read} \ \LEX{{(}} \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{+}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{-}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{*}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{/}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{\PERCENT}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{<}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{<}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{>}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{>}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{=}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{!}{=}} \ \SYNREF{exp} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{exp} \\
      \ \mid \ & \ \SYNREF{exp} \ \LEX{{|}{|}} \ \SYNREF{exp}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{(}} \ \VARREF{Exp} \ \LEX{{)}} \
      \RIGHTPHRASE : \SYNREF{exp} = 
      \LEFTPHRASE \
        \VAR{Exp} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{rval} \LEFTPHRASE \ \_ : \SYNREF{exp} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{V} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-1-Lexical}{val} \LEFTPHRASE \
                            \VAR{V} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{LExp} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (  \SEMREF{lval} \LEFTPHRASE \
                                    \VAR{LExp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{LExp} \ \LEX{{=}} \ \VARREF{Exp} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                        (  \SEMREF{lval} \LEFTPHRASE \
                                                    \VAR{LExp} \
                                                  \RIGHTPHRASE , 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \LEX{{+}{+}} \ \VARREF{LExp} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{lval} \LEFTPHRASE \
                                    \VAR{LExp} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                                (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), 
                                       1 ) ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \LEX{{-}} \ \VARREF{Exp} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp} \ \LEX{{(}} \ \VARREF{Exps}\QUERY \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                (  \SEMREF{rvals} \LEFTPHRASE \
                                            \VAR{Exps}\QUERY \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \LEX{sizeOf} \ \LEX{{(}} \ \VARREF{Exp} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
                (  \SEMREF{rval} \LEFTPHRASE \
                                            \VAR{Exp} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \LEX{read} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{+}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{-}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{*}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{/}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (  \SEMREF{rval} \LEFTPHRASE \
                                      \VAR{Exp}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{rval} \LEFTPHRASE \
                                      \VAR{Exp}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{\PERCENT}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-modulo}
          (  \SEMREF{rval} \LEFTPHRASE \
                                      \VAR{Exp}\SUB{1} \
                                    \RIGHTPHRASE , 
                 \SEMREF{rval} \LEFTPHRASE \
                                      \VAR{Exp}\SUB{2} \
                                    \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{<}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{<}{=}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{>}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{>}{=}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater-or-equal}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{=}{=}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{!}{=}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                (  \SEMREF{rval} \LEFTPHRASE \
                                            \VAR{Exp}\SUB{1} \
                                          \RIGHTPHRASE , 
                       \SEMREF{rval} \LEFTPHRASE \
                                            \VAR{Exp}\SUB{2} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{Exp} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{rval} \LEFTPHRASE \
                            \VARREF{Exp}\SUB{1} \ \LEX{{|}{|}} \ \VARREF{Exp}\SUB{2} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (  \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{1} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}, 
               \SEMREF{rval} \LEFTPHRASE \
                                    \VAR{Exp}\SUB{2} \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Exps} : \SYN{exps}
      \ ::= \ & \
      \SYNREF{exp} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{exps} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{rvals} \LEFTPHRASE \ \_ : \SYNREF{exps}\QUERY \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} )\STAR 
\\
  \KEY{Rule} \quad
    & \SEMREF{rvals} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{rvals} \LEFTPHRASE \
                            \VARREF{Exp} \
                          \RIGHTPHRASE  = 
      \SEMREF{rval} \LEFTPHRASE \
                            \VAR{Exp} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{rvals} \LEFTPHRASE \
                            \VARREF{Exp} \ \LEX{{,}} \ \VARREF{Exps} \
                          \RIGHTPHRASE  = 
      \SEMREF{rval} \LEFTPHRASE \
                            \VAR{Exp} \
                          \RIGHTPHRASE , 
       \SEMREF{rvals} \LEFTPHRASE \
                            \VAR{Exps} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{LExp} : \SYN{lexp}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \mid \SYNREF{lexp} \ \LEX{{[}} \ \SYNREF{exps} \ \LEX{{]}}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \VARREF{LExp} \ \LEX{{[}} \ \VARREF{Exp} \ \LEX{{,}} \ \VARREF{Exps} \ \LEX{{]}} \
      \RIGHTPHRASE : \SYNREF{lexp} = \\&
      \LEFTPHRASE \
        \VAR{LExp} \ \LEX{{[}} \ \VAR{Exp} \ \LEX{{]}} \ \LEX{{[}} \ \VAR{Exps} \ \LEX{{]}} \
      \RIGHTPHRASE
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{lval} \LEFTPHRASE \ \_ : \SYNREF{lexp} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} 
\\
  \KEY{Rule} \quad
    & \SEMREF{lval} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
        (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{lval} \LEFTPHRASE \
                            \VARREF{LExp} \ \LEX{{[}} \ \VARREF{Exp} \ \LEX{{]}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
          (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                  (  1, 
                         \SEMREF{rval} \LEFTPHRASE \
                                              \VAR{Exp} \
                                            \RIGHTPHRASE  ), 
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
                  (  \SEMREF{rval} \LEFTPHRASE \
                                              \VAR{LExp} \
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
[SIMPLE-2-Expressions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
