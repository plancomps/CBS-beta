---
title: "Trees"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Trees.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Trees
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{trees} \\
  \KEY{Funcon} \quad & \NAMEREF{tree} \\
  \KEY{Funcon} \quad & \NAMEREF{tree-root-value} \\
  \KEY{Funcon} \quad & \NAMEREF{tree-branch-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{single-branching-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{forest-root-value-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{forest-branch-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{forest-value-sequence}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{trees}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{tree}(
                               \_ : \VAR{T}, \_ : (  \NAMEREF{trees}
                                               (  \VAR{T} ) )\STAR)
\end{align*}$$


  $$\SHADE{\NAMEREF{trees}
           (  \VAR{T} )}$$ consists of finitely-branching trees with elements of type $$\SHADE{\VAR{T}}$$.
  When $$\SHADE{\VAR{V} : \VAR{T}}$$, $$\SHADE{\NAMEREF{tree}
           (  \VAR{V} )}$$ is a leaf, and $$\SHADE{\NAMEREF{tree}
           (  \VAR{V}, 
                  \VAR{B}\SUB{1}, 
                  \cdots, 
                  \VAR{B}\SUB{n} )}$$ is a tree with
  branches $$\SHADE{\VAR{B}\SUB{1}}$$, ..., $$\SHADE{\VAR{B}\SUB{n}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{tree-root-value}(
                       \_ : \NAMEREF{trees}
                                 (  \VAR{T} )) 
    :  \TO (  \VAR{T} )\QUERY 
\\
  \KEY{Rule} \quad
    & \NAMEREF{tree-root-value} \ 
        \NAMEREF{tree}
          (  \VAR{V} : \VAR{T}, 
                 \_\STAR : (  \NAMEREF{trees}
                                  (  \VAR{T} ) )\STAR ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{tree-branch-sequence}(
                       \_ : \NAMEREF{trees}
                                 (  \VAR{T} )) 
    :  \TO (  \NAMEREF{trees}
                           (  \VAR{T} ) )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{tree-branch-sequence} \ 
        \NAMEREF{tree}
          (  \_ : \VAR{T}, 
                 \VAR{B}\STAR : (  \NAMEREF{trees}
                                  (  \VAR{T} ) )\STAR ) \leadsto 
        \VAR{B}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{single-branching-sequence}(
                       \_ : \NAMEREF{trees}
                                 (  \VAR{T} )) 
    :  \TO \VAR{T}\PLUS 
\end{align*}$$


  $$\SHADE{\NAMEREF{single-branching-sequence} \ 
           \VAR{B}}$$ extracts the values in $$\SHADE{\VAR{B}}$$ starting from 
  the root, provided that $$\SHADE{\VAR{B}}$$ is at most single-branching; otherwise it fails.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{single-branching-sequence} \ 
        \NAMEREF{tree}
          (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \NAMEREF{single-branching-sequence} \ 
        \NAMEREF{tree}
          (  \VAR{V} : \VAR{T}, 
                 \VAR{B} : \NAMEREF{trees}
                            (  \VAR{T} ) ) \leadsto \\&\quad
        \NAMEHYPER{../../../Computations/Normal}{Flowing}{left-to-right}
          (  \VAR{V}, 
                 \NAMEREF{single-branching-sequence} \ 
                  \VAR{B} )
\\
  \KEY{Rule} \quad
    & \NAMEREF{single-branching-sequence} \ 
        \NAMEREF{tree}
          (  \_ : \VAR{T}, 
                 \_ : \NAMEREF{trees}
                            (  \VAR{T} ), 
                 \_\PLUS : (  \NAMEREF{trees}
                                  (  \VAR{T} ) )\PLUS ) \leadsto 
        \NAMEHYPER{../../../Computations/Abnormal}{Failing}{fail}
\end{align*}$$


  A sequence of trees corresponds to a forest, and the selector funcons
  on trees $$\SHADE{\VAR{B}}$$ extend to forests $$\SHADE{\VAR{B}\STAR}$$:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{forest-root-value-sequence}(
                       \_ : (  \NAMEREF{trees}
                                       (  \VAR{T} ) )\STAR) 
    :  \TO \VAR{T}\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{forest-root-value-sequence}
        (  \VAR{B} : \NAMEREF{trees}
                          (  \VAR{T} ), 
               \VAR{B}\STAR : (  \NAMEREF{trees}
                                (  \VAR{T} ) )\STAR ) \leadsto \\&\quad
        (  \NAMEREF{tree-root-value} \ 
                \VAR{B}, 
               \NAMEREF{forest-root-value-sequence} \ 
                \VAR{B}\STAR )
\\
  \KEY{Rule} \quad
    & \NAMEREF{forest-root-value-sequence}
        (   \  ) \leadsto 
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{forest-branch-sequence}(
                       \_ : (  \NAMEREF{trees}
                                       (  \VAR{T} ) )\STAR) 
    :  \TO \VAR{T}\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{forest-branch-sequence}
        (  \VAR{B} : \NAMEREF{trees}
                          (  \VAR{T} ), 
               \VAR{B}\STAR : (  \NAMEREF{trees}
                                (  \VAR{T} ) )\STAR ) \leadsto \\&\quad
        (  \NAMEREF{tree-branch-sequence} \ 
                \VAR{B}, 
               \NAMEREF{forest-branch-sequence} \ 
                \VAR{B}\STAR )
\\
  \KEY{Rule} \quad
    & \NAMEREF{forest-branch-sequence}
        (   \  ) \leadsto 
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{forest-value-sequence}(
                       \_ : (  \NAMEREF{trees}
                                       (  \VAR{T} ) )\STAR) 
    :  \TO \VAR{T}\STAR 
\end{align*}$$


  $$\SHADE{\NAMEREF{forest-value-sequence} \ 
           \VAR{B}\STAR}$$ provides the values from a left-to-right pre-order
  depth-first traversal.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{forest-value-sequence}
        (  \NAMEREF{tree}
                (  \VAR{V} : \VAR{T}, 
                       \VAR{B}\SUB{1}\STAR : (  \NAMEREF{trees}
                                        (  \VAR{T} ) )\STAR ), 
               \VAR{B}\SUB{2}\STAR : (  \NAMEREF{trees}
                                (  \VAR{T} ) )\STAR ) \leadsto \\&\quad
        (  \VAR{V}, 
               \NAMEREF{forest-value-sequence} \ 
                \VAR{B}\SUB{1}\STAR, 
               \NAMEREF{forest-value-sequence} \ 
                \VAR{B}\SUB{2}\STAR )
\\
  \KEY{Rule} \quad
    & \NAMEREF{forest-value-sequence}
        (   \  ) \leadsto 
        (   \  )
\end{align*}$$


  Other linearizations of trees can be added: breadth-first, right-to-left,
  C3, etc.




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
[Trees.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Trees/Trees.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Trees
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Trees
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Trees/Trees.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Trees/Trees.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
