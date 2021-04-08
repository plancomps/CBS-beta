---
title: "Flowing"
math: katex
parent: Normal
ancestor: Funcons-beta

---
[Funcons-beta] : [Flowing.cbs] \| [PLAIN] \| [PDF]

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

### Flowing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{left-to-right} \\
  \KEY{Alias} \quad & \NAMEREF{l-to-r} \\
  \KEY{Funcon} \quad & \NAMEREF{right-to-left} \\
  \KEY{Alias} \quad & \NAMEREF{r-to-l} \\
  \KEY{Funcon} \quad & \NAMEREF{sequential} \\
  \KEY{Alias} \quad & \NAMEREF{seq} \\
  \KEY{Funcon} \quad & \NAMEREF{effect} \\
  \KEY{Funcon} \quad & \NAMEREF{choice} \\
  \KEY{Funcon} \quad & \NAMEREF{if-true-else} \\
  \KEY{Alias} \quad & \NAMEREF{if-else} \\
  \KEY{Funcon} \quad & \NAMEREF{while-true} \\
  \KEY{Alias} \quad & \NAMEREF{while} \\
  \KEY{Funcon} \quad & \NAMEREF{do-while-true} \\
  \KEY{Alias} \quad & \NAMEREF{do-while} \\
  \KEY{Funcon} \quad & \NAMEREF{interleave} \\
  \KEY{Datatype} \quad & \NAMEREF{yielding} \\
  \KEY{Funcon} \quad & \NAMEREF{signal} \\
  \KEY{Funcon} \quad & \NAMEREF{yielded} \\
  \KEY{Funcon} \quad & \NAMEREF{yield} \\
  \KEY{Funcon} \quad & \NAMEREF{yield-on-value} \\
  \KEY{Funcon} \quad & \NAMEREF{yield-on-abrupt} \\
  \KEY{Funcon} \quad & \NAMEREF{atomic}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values} \qquad \\& \VAR{T}\STAR <: \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR
\end{align*}$$

#### Sequencing
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{left-to-right}(
                       \_ : (   \TO (  \VAR{T} )\STAR )\STAR) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{l-to-r} = \NAMEREF{left-to-right}
\end{align*}$$


  $$\SHADE{\NAMEREF{left-to-right}
           (  \cdots )}$$ computes its arguments sequentially, from left to right,
  and gives the resulting sequence of values, provided all terminate normally.
  For example, $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Integers}{integer-add}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ may interleave the computations of $$\SHADE{\VAR{X}}$$ and
  $$\SHADE{\VAR{Y}}$$, whereas $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Integers}{integer-add} \ 
           \NAMEREF{left-to-right}
             (  \VAR{X}, 
                    \VAR{Y} )}$$ always computes $$\SHADE{\VAR{X}}$$ before $$\SHADE{\VAR{Y}}$$.

  When each argument of $$\SHADE{\NAMEREF{left-to-right}
           (  \cdots )}$$ computes a single value, the type
  of the result is the same as that of the argument sequence. For instance,
  when $$\SHADE{\VAR{X} : \VAR{T}}$$ and $$\SHADE{\VAR{Y} : \VAR{T}'}$$, the result of $$\SHADE{\NAMEREF{left-to-right}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is of type $$\SHADE{(  \VAR{T}, 
                \VAR{T}' )}$$.
  The only effect of wrapping an argument sequence in $$\SHADE{\NAMEREF{left-to-right}
           (  \cdots )}$$ is to
  ensure that when the arguments are to be evaluated, it is done in the
  specified order.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{Y} \TRANS 
          \VAR{Y}'
      }{
      &  \NAMEREF{left-to-right}
                      (  \VAR{V}\STAR : (  \VAR{T} )\STAR, 
                             \VAR{Y}, 
                             \VAR{Z}\STAR ) \TRANS 
          \NAMEREF{left-to-right}
            (  \VAR{V}\STAR, 
                   \VAR{Y}', 
                   \VAR{Z}\STAR )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{left-to-right}
        (  \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        \VAR{V}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{right-to-left}(
                       \_ : (   \TO (  \VAR{T} )\STAR )\STAR) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{r-to-l} = \NAMEREF{right-to-left}
\end{align*}$$


  $$\SHADE{\NAMEREF{right-to-left}
           (  \cdots )}$$ computes its arguments sequentially, from right to left,
  and gives the resulting sequence of values, provided all terminate normally.

  Note that $$\SHADE{\NAMEREF{right-to-left}
           (  \VAR{X}\STAR )}$$ and $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Sequences}{reverse} \ 
           \NAMEREF{left-to-right} \ 
             \NAMEHYPER{../../../Values/Composite}{Sequences}{reverse}
               (  \VAR{X}\STAR )}$$ are
  not equivalent: $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Sequences}{reverse}
           (  \VAR{X}\STAR )}$$ interleaves the evaluation of $$\SHADE{\VAR{X}\STAR}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{Y} \TRANS 
          \VAR{Y}'
      }{
      &  \NAMEREF{right-to-left}
                      (  \VAR{X}\STAR, 
                             \VAR{Y}, 
                             \VAR{V}\STAR : (  \VAR{T} )\STAR ) \TRANS 
          \NAMEREF{right-to-left}
            (  \VAR{X}\STAR, 
                   \VAR{Y}', 
                   \VAR{V}\STAR )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{right-to-left}
        (  \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        \VAR{V}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{sequential}(
                       \_ : (   \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} )\STAR, \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{seq} = \NAMEREF{sequential}
\end{align*}$$


  $$\SHADE{\NAMEREF{sequential}
           (  \VAR{X}, 
                  \cdots )}$$ computes its arguments in the given order. On normal
  termination, it returns the value of the last argument; the other arguments
  all compute $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.

  Binary $$\SHADE{\NAMEREF{sequential}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is associative, with unit $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \TRANS 
          \VAR{X}'
      }{
      &  \NAMEREF{sequential}
                      (  \VAR{X}, 
                             \VAR{Y}\PLUS ) \TRANS 
          \NAMEREF{sequential}
            (  \VAR{X}', 
                   \VAR{Y}\PLUS )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{sequential}
        (  \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, 
               \VAR{Y}\PLUS ) \leadsto 
        \NAMEREF{sequential}
          (  \VAR{Y}\PLUS )
\\
  \KEY{Rule} \quad
    & \NAMEREF{sequential}
        (  \VAR{Y} ) \leadsto 
        \VAR{Y}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{effect}(
                       \VAR{V}\STAR : \VAR{T}\STAR) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
\end{align*}$$


  $$\SHADE{\NAMEREF{effect}
           (  \cdots )}$$ interleaves the computations of its arguments, then discards
  all the computed values.


#### Choosing
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{choice}(
                       \_ : (   \TO \VAR{T} )\PLUS) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{choice}
           (  \VAR{Y}, 
                  \cdots )}$$ selects one of its arguments, then computes it.
  It is associative and commutative.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{choice}
        (  \VAR{X}\STAR, 
               \VAR{Y}, 
               \VAR{Z}\STAR ) \leadsto 
        \VAR{Y}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{if-true-else}(
                       \_ : \NAMEHYPER{../../../Values/Primitive}{Booleans}{booleans}, \_ :  \TO \VAR{T}, \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{if-else} = \NAMEREF{if-true-else}
\end{align*}$$


  $$\SHADE{\NAMEREF{if-true-else}
           (  \VAR{B}, 
                  \VAR{X}, 
                  \VAR{Y} )}$$ evaluates $$\SHADE{\VAR{B}}$$ to a Boolean value, then reduces
  to $$\SHADE{\VAR{X}}$$ or $$\SHADE{\VAR{Y}}$$, depending on the value of $$\SHADE{\VAR{B}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{if-true-else}
        (  \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}, 
               \VAR{X}, 
               \VAR{Y} ) \leadsto 
        \VAR{X}
\\
  \KEY{Rule} \quad
    & \NAMEREF{if-true-else}
        (  \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}, 
               \VAR{X}, 
               \VAR{Y} ) \leadsto 
        \VAR{Y}
\end{align*}$$

#### Iterating
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{while-true}(
                       \VAR{B} :  \TO \NAMEHYPER{../../../Values/Primitive}{Booleans}{booleans}, \VAR{X} :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEREF{if-true-else}
               (  \VAR{B}, 
                      \NAMEREF{sequential}
                       (  \VAR{X}, 
                              \NAMEREF{while-true}
                               (  \VAR{B}, 
                                      \VAR{X} ) ), 
                      \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{while} = \NAMEREF{while-true}
\end{align*}$$


  $$\SHADE{\NAMEREF{while-true}
           (  \VAR{B}, 
                  \VAR{X} )}$$ evaluates $$\SHADE{\VAR{B}}$$ to a Boolean value. Depending on the value
  of $$\SHADE{\VAR{B}}$$, it either executes $$\SHADE{\VAR{X}}$$ and iterates, or terminates normally.

  The effect of abruptly breaking the iteration is obtained by the combination
  $$\SHADE{\NAMEHYPER{../../Abnormal}{Breaking}{handle-break}
           (  \NAMEREF{while-true}
                   (  \VAR{B}, 
                          \VAR{X} ) )}$$, and that of abruptly continuing the iteration by
  $$\SHADE{\NAMEREF{while-true}
           (  \VAR{B}, 
                  \NAMEHYPER{../../Abnormal}{Continuing}{handle-continue}
                   (  \VAR{X} ) )}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{do-while-true}(
                       \VAR{X} :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}, \VAR{B} :  \TO \NAMEHYPER{../../../Values/Primitive}{Booleans}{booleans}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEREF{sequential}
               (  \VAR{X}, 
                      \NAMEREF{if-true-else}
                       (  \VAR{B}, 
                              \NAMEREF{do-while-true}
                               (  \VAR{X}, 
                                      \VAR{B} ), 
                              \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} ) )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{do-while} = \NAMEREF{do-while-true}
\end{align*}$$


  $$\SHADE{\NAMEREF{do-while-true}
           (  \VAR{X}, 
                  \VAR{B} )}$$ is equivalent to $$\SHADE{\NAMEREF{sequential}
           (  \VAR{X}, 
                  \NAMEREF{while-true}
                   (  \VAR{B}, 
                          \VAR{X} ) )}$$.


#### Interleaving
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{interleave}(
                       \_ : \VAR{T}\STAR) 
    :  \TO \VAR{T}\STAR 
\end{align*}$$


  $$\SHADE{\NAMEREF{interleave}
           (  \cdots )}$$ computes its arguments in any order, possibly interleaved,
  and returns the resulting sequence of values, provided all terminate normally.
  Fairness of interleaving is not required, so pure left-to-right computation
  is allowed.

  $$\SHADE{\NAMEREF{atomic}
           (  \VAR{X} )}$$ prevents interleaving in $$\SHADE{\VAR{X}}$$, except after transitions that emit
  a $$\SHADE{\NAMEREF{yielded}
           (  \NAMEREF{signal} )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{interleave}
        (  \VAR{V}\STAR : \VAR{T}\STAR ) \leadsto 
        \VAR{V}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{yielding} 
  \ ::= \ & \NAMEDECL{signal}
\end{align*}$$

$$\begin{align*}
  \KEY{Entity} \quad
  & \_ \xrightarrow{\NAMEDECL{yielded}(\_ : \NAMEREF{yielding}\QUERY)} \_
\end{align*}$$


  $$\SHADE{\NAMEREF{yielded}
           (  \NAMEREF{signal} )}$$ in a label on a transition allows interleaving at that point
  in the enclosing atomic computation.
  $$\SHADE{\NAMEREF{yielded}
           (   \  )}$$ indicates interleaving at that point in an atomic computation
  is not allowed.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{yield} 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEREF{yield-on-value}
               (  \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{yield-on-value}(
                       \_ : \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{yield-on-value}
           (  \VAR{X} )}$$ allows interleaving in an enclosing atomic computation
  on normal termination of $$\SHADE{\VAR{X}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{yield-on-value}
                    (  \VAR{V} : \VAR{T} ) \xrightarrow{\NAMEREF{yielded}(  \NAMEREF{signal} )}_{} 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{yield-on-abrupt}(
                       \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{yield-on-abrupt}
           (  \VAR{X} )}$$ ensures that abrupt termination of $$\SHADE{\VAR{X}}$$ is propagated
  through an enclosing atomic computation.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../../Abnormal}{Abrupting}{abrupt}(  \VAR{V} : \VAR{T} ), \NAMEREF{yielded}(  \_\QUERY )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{yield-on-abrupt}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../../Abnormal}{Abrupting}{abrupt}(  \VAR{V} ), \NAMEREF{yielded}(  \NAMEREF{signal} )}_{} 
          \NAMEREF{yield-on-abrupt}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../../Abnormal}{Abrupting}{abrupt}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{yield-on-abrupt}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../../Abnormal}{Abrupting}{abrupt}(   \  )}_{} 
          \NAMEREF{yield-on-abrupt}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{yield-on-abrupt}
        (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{atomic}(
                       \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{atomic}
           (  \VAR{X} )}$$ computes $$\SHADE{\VAR{X}}$$, but controls its potential interleaving with other
  computations: interleaving is only allowed following a transition of $$\SHADE{\VAR{X}}$$ that
  emits $$\SHADE{\NAMEREF{yielded}
           (  \NAMEREF{signal} )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{yielded}(   \  )}_{1} 
          \VAR{X}'\\&
         \NAMEREF{atomic}
                      (  \VAR{X}' ) \xrightarrow{\NAMEREF{yielded}(   \  )}_{2} 
          \VAR{X}''
      }{
      &  \NAMEREF{atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{yielded}(   \  )}_{1} ; \xrightarrow{\NAMEREF{yielded}(   \  )}_{2} 
          \VAR{X}''
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{yielded}(   \  )}_{} 
          \VAR{V}\\&
         \VAR{V} : \VAR{T}
      }{
      &  \NAMEREF{atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{yielded}(   \  )}_{} 
          \VAR{V}
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{atomic}
        (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{yielded}(  \NAMEREF{signal} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{yielded}(   \  )}_{} 
          \NAMEREF{atomic}
            (  \VAR{X}' )
      }
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
[Flowing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Flowing/Flowing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Flowing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Flowing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Flowing/Flowing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Flowing/Flowing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
