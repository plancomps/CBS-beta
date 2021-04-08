---
title: "Indexing"
math: katex
parent: Normal
ancestor: Unstable-Funcons-beta

---
[Unstable-Funcons-beta] : [Indexing.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Value indexing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEREF{value-index} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-index} \\
  \KEY{Funcon} \quad & \NAMEREF{allocate-index} \\
  \KEY{Funcon} \quad & \NAMEREF{lookup-index}
  \ ]
\end{align*}$$


The following funcons support indexing of values by natural numbers.
They could be enhanced to ensure that each value has at most one index,
and to allow finding the index of a value.


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{value-index}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}\STAR) \rangle \TRANS  \\& 
    \langle \_, \NAME{value-index}(\_ : \NAME{ground-values}\STAR) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-index} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{initialise-index}, \NAMEREF{value-index} (  \_ ) \rangle \TRANS 
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{value-index} (   \  ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{allocate-index}(
                       \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{allocate-index}
                            (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ), \NAMEREF{value-index} (  \VAR{V}\STAR ) \rangle \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sequences}{length}
                  (  \VAR{V}\STAR, 
                         \VAR{V} ), \NAMEREF{value-index} (  \VAR{V}\STAR, 
                                                    \VAR{V} ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{lookup-index}(
                       \_ : \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{lookup-index}
                            (  \VAR{N} : \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} ), \NAMEREF{value-index} (  \VAR{V}\STAR ) \rangle \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sequences}{index}
                  (  \VAR{N}, 
                         \VAR{V}\STAR ), \NAMEREF{value-index} (  \VAR{V}\STAR ) \rangle
\\
  \KEY{Assert} \quad
  &  \NAMEREF{lookup-index}
                  (  \NAMEREF{allocate-index}
                          (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ) ) \TRANS 
      \VAR{V}
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
[Indexing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Indexing/Indexing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Normal/Indexing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Normal/Indexing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Indexing/Indexing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Indexing/Indexing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
