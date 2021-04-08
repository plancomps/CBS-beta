---
title: "Functions"
math: katex
parent: Abstraction
ancestor: Funcons-beta

---
[Funcons-beta] : [Functions.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Functions
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{functions} \\
  \KEY{Funcon} \quad & \NAMEREF{function} \\
  \KEY{Funcon} \quad & \NAMEREF{apply} \\
  \KEY{Funcon} \quad & \NAMEREF{supply} \\
  \KEY{Funcon} \quad & \NAMEREF{compose} \\
  \KEY{Funcon} \quad & \NAMEREF{uncurry} \\
  \KEY{Funcon} \quad & \NAMEREF{curry} \\
  \KEY{Funcon} \quad & \NAMEREF{partial-apply}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}, \VAR{T}', \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{functions}(
                     \VAR{T} , \VAR{T}' ) 
  \ ::= \ & \NAMEDECL{function}(
                               \VAR{A} : \NAMEHYPER{../.}{Generic}{abstractions}
                                         (  \VAR{T} \TO \VAR{T}' ))
\end{align*}$$


  $$\SHADE{\NAMEREF{functions}
           (  \VAR{T}, 
                  \VAR{T}' )}$$ consists of abstractions whose bodies may depend on
  a given value of type $$\SHADE{\VAR{T}}$$, and whose executions normally compute values 
  of type $$\SHADE{\VAR{T}'}$$.
  $$\SHADE{\NAMEREF{function}
           (  \NAMEHYPER{../.}{Generic}{abstraction}
                   (  \VAR{X} ) )}$$ evaluates to a function with dynamic bindings,
  $$\SHADE{\NAMEREF{function}
           (  \NAMEHYPER{../.}{Generic}{closure}
                   (  \VAR{X} ) )}$$ computes a function with static bindings.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{apply}(
                       \_ : \NAMEREF{functions}
                                 (  \VAR{T}, 
                                        \VAR{T}' ), \_ : \VAR{T}) 
    :  \TO \VAR{T}' 
\end{align*}$$


  $$\SHADE{\NAMEREF{apply}
           (  \VAR{F}, 
                  \VAR{V} )}$$ applies the function $$\SHADE{\VAR{F}}$$ to the argument value $$\SHADE{\VAR{V}}$$.
  This corresponds to call by value; using thunks as argument values
  corresponds to call by name. Moreover, using tuples as argument values 
  corresponds to application to multiple arguments.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{apply}
        (  \NAMEREF{function}
                (  \NAMEHYPER{../.}{Generic}{abstraction}
                        (  \VAR{X} ) ), 
               \VAR{V} : \VAR{T} ) \leadsto 
        \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
          (  \VAR{V}, 
                 \VAR{X} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{supply}(
                       \_ : \NAMEREF{functions}
                                 (  \VAR{T}, 
                                        \VAR{T}' ), \_ : \VAR{T}) 
    :  \TO \NAMEHYPER{../.}{Thunks}{thunks}
                     (  \VAR{T}' ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{supply}
           (  \VAR{F}, 
                  \VAR{V} )}$$ determines the argument value of a function application,
  but returns a thunk that defers executing the body of the function.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{supply}
        (  \NAMEREF{function}
                (  \NAMEHYPER{../.}{Generic}{abstraction}
                        (  \VAR{X} ) ), 
               \VAR{V} : \VAR{T} ) \leadsto 
        \NAMEHYPER{../.}{Thunks}{thunk}
          (  \NAMEHYPER{../.}{Generic}{abstraction}
                  (  \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
                          (  \VAR{V}, 
                                 \VAR{X} ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{compose}(
                       \_ : \NAMEREF{functions}
                                 (  \VAR{T}\SUB{2}, 
                                        \VAR{T}' ), \_ : \NAMEREF{functions}
                                 (  \VAR{T}\SUB{1}, 
                                        \VAR{T}\SUB{2} )) 
    :  \TO \NAMEREF{functions}
                     (  \VAR{T}\SUB{1}, 
                            \VAR{T}' ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{compose}
           (  \VAR{F}\SUB{2}, 
                  \VAR{F}\SUB{1} )}$$ returns the function that applies $$\SHADE{\VAR{F}\SUB{1}}$$ to its argument,
  then applies $$\SHADE{\VAR{F}\SUB{2}}$$ to the result of $$\SHADE{\VAR{F}\SUB{1}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{compose}
        (  \NAMEREF{function}
                (  \NAMEHYPER{../.}{Generic}{abstraction}
                        (  \VAR{Y} ) ), 
               \NAMEREF{function}
                (  \NAMEHYPER{../.}{Generic}{abstraction}
                        (  \VAR{X} ) ) ) \leadsto \\&\quad
        \NAMEREF{function}
          (  \NAMEHYPER{../.}{Generic}{abstraction}
                  (  \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
                          (  \VAR{X}, 
                                 \VAR{Y} ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{uncurry}(
                       \VAR{F} : \NAMEREF{functions}
                                 (  \VAR{T}\SUB{1}, 
                                        \NAMEREF{functions}
                                         (  \VAR{T}\SUB{2}, 
                                                \VAR{T}' ) )) \\&\quad
    :  \TO \NAMEREF{functions}
                     (  \NAMEHYPER{../../Composite}{Tuples}{tuples}
                             (  \VAR{T}\SUB{1}, 
                                    \VAR{T}\SUB{2} ), 
                            \VAR{T}' ) \\&\quad
    \leadsto \NAMEREF{function}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../.}{Generic}{abstraction}
                       ( \\&\quad\quad\quad\quad\quad \NAMEREF{apply}
                               ( \\&\quad\quad\quad\quad\quad\quad \NAMEREF{apply}
                                       (  \VAR{F}, 
                                              \NAMEHYPER{../../../Computations/Abnormal}{Failing}{checked} \ 
                                               \NAMEHYPER{../../Composite}{Sequences}{index}
                                                 (  1, 
                                                        \NAMEHYPER{../../Composite}{Tuples}{tuple-elements} \ 
                                                         \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ), \\&\quad\quad\quad\quad\quad\quad
                                      \NAMEHYPER{../../../Computations/Abnormal}{Failing}{checked} \ 
                                       \NAMEHYPER{../../Composite}{Sequences}{index}
                                         (  2, 
                                                \NAMEHYPER{../../Composite}{Tuples}{tuple-elements} \ 
                                                 \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{uncurry}
           (  \VAR{F} )}$$ takes a curried function $$\SHADE{\VAR{F}}$$ and returns a function that takes
  a pair of arguments..


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{curry}(
                       \VAR{F} : \NAMEREF{functions}
                                 (  \NAMEHYPER{../../Composite}{Tuples}{tuples}
                                         (  \VAR{T}\SUB{1}, 
                                                \VAR{T}\SUB{2} ), 
                                        \VAR{T}' )) 
    :  \TO \NAMEREF{functions}
                     (  \VAR{T}\SUB{1}, 
                            \NAMEREF{functions}
                             (  \VAR{T}\SUB{2}, 
                                    \VAR{T}' ) ) \\&\quad
    \leadsto \NAMEREF{function}
               (  \NAMEHYPER{../.}{Generic}{abstraction}
                       (  \NAMEREF{partial-apply}
                               (  \VAR{F}, 
                                      \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{curry}
           (  \VAR{F} )}$$ takes a function $$\SHADE{\VAR{F}}$$ that takes a pair of arguments, and returns
  the corresponding 'curried' function.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{partial-apply}(
                       \VAR{F} : \NAMEREF{functions}
                                 (  \NAMEHYPER{../../Composite}{Tuples}{tuples}
                                         (  \VAR{T}\SUB{1}, 
                                                \VAR{T}\SUB{2} ), 
                                        \VAR{T}' ), \VAR{V} : \VAR{T}\SUB{1}) 
    :  \TO \NAMEREF{functions}
                     (  \VAR{T}\SUB{2}, 
                            \VAR{T}' ) \\&\quad
    \leadsto \NAMEREF{function}
               (  \NAMEHYPER{../.}{Generic}{abstraction}
                       (  \NAMEREF{apply}
                               (  \VAR{F}, 
                                      \NAMEHYPER{../../Composite}{Tuples}{tuple}
                                       (  \VAR{V}, 
                                              \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{partial-apply}
           (  \VAR{F}, 
                  \VAR{V} )}$$ takes a function $$\SHADE{\VAR{F}}$$ that takes a pair of arguments, 
  and determines the first argument, returning a function of the second 
  argument.




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
[Functions.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Functions/Functions.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Abstraction/Functions
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Abstraction/Functions
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Functions/Functions.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Functions/Functions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
