---
title: "SIMPLE-4-Declarations"
math: katex
parent: SIMPLE
ancestor: Languages-beta

---
[Languages-beta] : [SIMPLE-4-Declarations.cbs] \| [PLAIN] \| [PDF]

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

# $$\SECT{4}$$ Declarations
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Decl} : \SYN{decl}
      \ ::= \ & \
      \SYNREF{vars-decl} \mid \SYNREF{func-decl}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare} \LEFTPHRASE \ \_ : \SYNREF{decl} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\end{align*}$$

## $$\SECT{4.1}$$ Variable Declarations
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{VarsDecl} : \SYN{vars-decl}
      \ ::= \ & \
      \LEX{var} \ \SYNREF{declarators} \ \LEX{{;}}
    \\
    \VARDECL{Declarators} : \SYN{declarators}
      \ ::= \ & \
      \SYNREF{declarator} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{declarators} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{var} \ \VARREF{Declarator} \ \LEX{{,}} \ \VARREF{Declarators} \ \LEX{{;}} \ \VARHYPER{../.}{SIMPLE-3-Statements}{Stmts}\QUERY \
      \RIGHTPHRASE : \SYNHYPER{../.}{SIMPLE-3-Statements}{stmts} = \\&
      \LEFTPHRASE \
        \LEX{var} \ \VAR{Declarator} \ \LEX{{;}} \ \LEX{var} \ \VAR{Declarators} \ \LEX{{;}} \ \VAR{Stmts}\QUERY \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{var} \ \VARREF{Declarator} \ \LEX{{,}} \ \VARREF{Declarators} \ \LEX{{;}} \ \VARHYPER{../.}{SIMPLE-5-Programs}{Decls}\QUERY \
      \RIGHTPHRASE : \SYNHYPER{../.}{SIMPLE-5-Programs}{decls} = \\&
      \LEFTPHRASE \
        \LEX{var} \ \VAR{Declarator} \ \LEX{{;}} \ \LEX{var} \ \VAR{Declarators} \ \LEX{{;}} \ \VAR{Decls}\QUERY \
      \RIGHTPHRASE
\\
  \KEY{Rule} \quad
    & \SEMREF{declare} \LEFTPHRASE \
                            \LEX{var} \ \VARREF{Declarator} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \SEMREF{var-declare} \LEFTPHRASE \
                            \VAR{Declarator} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Declarator} : \SYN{declarator}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \\
      \ \mid \ & \ \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \ \LEX{{=}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \\
      \ \mid \ & \ \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \ \SYNREF{ranks}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{var-declare} \LEFTPHRASE \ \_ : \SYNREF{declarator} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \SEMREF{var-declare} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
                (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{var-declare} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \LEX{{=}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, 
                       \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                                            \VAR{Exp} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{var-declare} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \VARREF{Ranks} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE , 
               \NAMEREF{allocate-nested-vectors}
                (  \SEMREF{ranks} \LEFTPHRASE \
                                            \VAR{Ranks} \
                                          \RIGHTPHRASE  ) )
\end{align*}$$

## $$\SECT{4.2}$$ Arrays
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Ranks} : \SYN{ranks}
      \ ::= \ & \
      \LEX{{[}} \ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exps} \ \LEX{{]}} \ \SYNREF{ranks}\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \LEFTPHRASE \
        \LEX{{[}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{,}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exps} \ \LEX{{]}} \ \VARREF{Ranks}\QUERY \
      \RIGHTPHRASE : \SYNREF{ranks} = \\&
      \LEFTPHRASE \
        \LEX{{[}} \ \VAR{Exp} \ \LEX{{]}} \ \LEX{{[}} \ \VAR{Exps} \ \LEX{{]}} \ \VAR{Ranks}\QUERY \
      \RIGHTPHRASE
\end{align*}$$

 Compare this with p28 of the K version. 

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{ranks} \LEFTPHRASE \ \_ : \SYNREF{ranks} \ \RIGHTPHRASE  
    : (   \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} )\PLUS 
\\
  \KEY{Rule} \quad
    & \SEMREF{ranks} \LEFTPHRASE \
                            \LEX{{[}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{]}} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                            \VAR{Exp} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{ranks} \LEFTPHRASE \
                            \LEX{{[}} \ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} \ \LEX{{]}} \ \VARREF{Ranks} \
                          \RIGHTPHRASE  = 
      \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE \
                            \VAR{Exp} \
                          \RIGHTPHRASE , 
       \SEMREF{ranks} \LEFTPHRASE \
                            \VAR{Ranks} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{allocate-nested-vectors}(
                       \_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats}\PLUS) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{allocate-nested-vectors}
        (  \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                  (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} ), \\&\quad\quad
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
                  (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-repeat}
                          (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
                                  (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ), 
                                 1, 
                                 \VAR{N} ) ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{allocate-nested-vectors}
        (  \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats}, 
               \VAR{N}\PLUS : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats}\PLUS ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                  (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} ), \\&\quad\quad
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
                  (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-repeat}
                          (  \NAMEREF{allocate-nested-vectors}
                                  (  \VAR{N}\PLUS ), 
                                 1, 
                                 \VAR{N} ) ) )
\end{align*}$$

## $$\SECT{4.3}$$ Function Declarations
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{FuncDecl} : \SYN{func-decl}
      \ ::= \ & \
      \LEX{function} \ \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \ \LEX{{(}} \ \SYNREF{ids}\QUERY \ \LEX{{)}} \ \SYNHYPER{../.}{SIMPLE-3-Statements}{block}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{declare} \LEFTPHRASE \
                            \LEX{function} \ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \LEX{{(}} \ \VARREF{Ids}\QUERY \ \LEX{{)}} \ \VARHYPER{../.}{SIMPLE-3-Statements}{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        ( \\&\quad\quad \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                    \VAR{Id} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
                (  \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                                (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}\STAR ), 
                               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{initialise} \LEFTPHRASE \ \_ : \SYNREF{decl} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{initialise} \LEFTPHRASE \
                            \LEX{var} \ \VARREF{Declarators} \ \LEX{{;}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} \quad
    & \SEMREF{initialise} \LEFTPHRASE \
                            \LEX{function} \ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \LEX{{(}} \ \VARREF{Ids}\QUERY \ \LEX{{)}} \ \VARHYPER{../.}{SIMPLE-3-Statements}{Block} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                (  \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                            \VAR{Id} \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
                \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
                  ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                          ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                                  (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                          (  \SEMREF{patts} \LEFTPHRASE \
                                                                      \VAR{Ids}\QUERY \
                                                                    \RIGHTPHRASE  ) ), \\&\quad\quad\quad\quad
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{handle-return}
                                  (  \SEMHYPER{../.}{SIMPLE-3-Statements}{exec} \LEFTPHRASE \
                                                              \VAR{Block} \
                                                            \RIGHTPHRASE  ) ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{Ids} : \SYN{ids}
      \ ::= \ & \
      \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{ids} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{patts} \LEFTPHRASE \ \_ : \SYNREF{ids}\QUERY \ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns}\STAR 
\\
  \KEY{Rule} \quad
    & \SEMREF{patts} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{patts} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
                  ( \\&\quad\quad\quad \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE \
                                              \VAR{Id} \
                                            \RIGHTPHRASE , \\&\quad\quad\quad
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                          (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{patts} \LEFTPHRASE \
                            \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} \ \LEX{{,}} \ \VARREF{Ids} \
                          \RIGHTPHRASE  = \\&\quad
      \SEMREF{patts} \LEFTPHRASE \
                            \VAR{Id} \
                          \RIGHTPHRASE , 
       \SEMREF{patts} \LEFTPHRASE \
                            \VAR{Ids} \
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
[SIMPLE-4-Declarations.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-4-Declarations/SIMPLE-4-Declarations.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
