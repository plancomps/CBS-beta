---
title: "Booleans"
math: katex
parent: Primitive
ancestor: Funcons-beta

---
[Funcons-beta] : [Booleans.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Booleans
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{booleans} \\
  \KEY{Alias} \quad & \NAMEREF{bools} \\
  \KEY{Funcon} \quad & \NAMEREF{true} \\
  \KEY{Funcon} \quad & \NAMEREF{false} \\
  \KEY{Funcon} \quad & \NAMEREF{not} \\
  \KEY{Funcon} \quad & \NAMEREF{implies} \\
  \KEY{Funcon} \quad & \NAMEREF{and} \\
  \KEY{Funcon} \quad & \NAMEREF{or} \\
  \KEY{Funcon} \quad & \NAMEREF{exclusive-or} \\
  \KEY{Alias} \quad & \NAMEREF{xor}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{booleans} 
  \ ::= \ &
  \NAMEDECL{true} \mid \NAMEDECL{false}
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{bools} = \NAMEREF{booleans}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{not}(
                       \_ : \NAMEREF{booleans}) 
    :  \TO \NAMEREF{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{not}
           (  \VAR{B} )}$$   is logical negation.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{not}
        (  \NAMEREF{false} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{not}
        (  \NAMEREF{true} ) \leadsto 
        \NAMEREF{false}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{implies}(
                       \_ : \NAMEREF{booleans}, \_ : \NAMEREF{booleans}) 
    :  \TO \NAMEREF{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{implies}
           (  \VAR{B}\SUB{1}, 
                  \VAR{B}\SUB{2} )}$$ is logical implication.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{implies}
        (  \NAMEREF{false}, 
               \NAMEREF{false} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{implies}
        (  \NAMEREF{false}, 
               \NAMEREF{true} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{implies}
        (  \NAMEREF{true}, 
               \NAMEREF{true} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{implies}
        (  \NAMEREF{true}, 
               \NAMEREF{false} ) \leadsto 
        \NAMEREF{false}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{and}(
                       \_ : \NAMEREF{booleans}\STAR) 
    :  \TO \NAMEREF{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{and}
           (  \VAR{B}, 
                  \cdots )}$$ is logical conjunction of any number of Boolean values.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{and}
        (   \  ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{and}
        (  \NAMEREF{false}, 
               \_\STAR : \NAMEREF{booleans}\STAR ) \leadsto 
        \NAMEREF{false}
\\
  \KEY{Rule} \quad
    & \NAMEREF{and}
        (  \NAMEREF{true}, 
               \VAR{B}\STAR : \NAMEREF{booleans}\STAR ) \leadsto 
        \NAMEREF{and}
          (  \VAR{B}\STAR )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{or}(
                       \_ : \NAMEREF{booleans}\STAR) 
    :  \TO \NAMEREF{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{or}
           (  \VAR{B}, 
                  \cdots )}$$ is logical disjunction of any number of Boolean values.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{or}
        (   \  ) \leadsto 
        \NAMEREF{false}
\\
  \KEY{Rule} \quad
    & \NAMEREF{or}
        (  \NAMEREF{true}, 
               \_\STAR : \NAMEREF{booleans}\STAR ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{or}
        (  \NAMEREF{false}, 
               \VAR{B}\STAR : \NAMEREF{booleans}\STAR ) \leadsto 
        \NAMEREF{or}
          (  \VAR{B}\STAR )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{exclusive-or}(
                       \_ : \NAMEREF{booleans}, \_ : \NAMEREF{booleans}) 
    :  \TO \NAMEREF{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{xor} = \NAMEREF{exclusive-or}
\end{align*}$$


  $$\SHADE{\NAMEREF{exclusive-or}
           (  \VAR{B}\SUB{1}, 
                  \VAR{B}\SUB{2} )}$$ is exclusive disjunction.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{exclusive-or}
        (  \NAMEREF{false}, 
               \NAMEREF{false} ) \leadsto 
        \NAMEREF{false}
\\
  \KEY{Rule} \quad
    & \NAMEREF{exclusive-or}
        (  \NAMEREF{false}, 
               \NAMEREF{true} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{exclusive-or}
        (  \NAMEREF{true}, 
               \NAMEREF{false} ) \leadsto 
        \NAMEREF{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{exclusive-or}
        (  \NAMEREF{true}, 
               \NAMEREF{true} ) \leadsto 
        \NAMEREF{false}
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
[Booleans.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Booleans/Booleans.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Booleans
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Booleans
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Booleans/Booleans.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Booleans/Booleans.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
