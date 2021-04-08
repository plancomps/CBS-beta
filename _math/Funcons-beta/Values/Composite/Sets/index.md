---
title: "Sets"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Sets.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Sets
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{sets} \\
  \KEY{Funcon} \quad & \NAMEREF{set} \\
  \KEY{Funcon} \quad & \NAMEREF{set-elements} \\
  \KEY{Funcon} \quad & \NAMEREF{is-in-set} \\
  \KEY{Funcon} \quad & \NAMEREF{is-subset} \\
  \KEY{Funcon} \quad & \NAMEREF{set-insert} \\
  \KEY{Funcon} \quad & \NAMEREF{set-unite} \\
  \KEY{Funcon} \quad & \NAMEREF{set-intersect} \\
  \KEY{Funcon} \quad & \NAMEREF{set-difference} \\
  \KEY{Funcon} \quad & \NAMEREF{set-size} \\
  \KEY{Funcon} \quad & \NAMEREF{some-element} \\
  \KEY{Funcon} \quad & \NAMEREF{element-not-in}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{sets}(
                       \VAR{GT} )  
\end{align*}$$


  $$\SHADE{\NAMEREF{sets}
           (  \VAR{GT} )}$$ is the type of possibly-empty finite sets $$\SHADE{\{  \VAR{V}\SUB{1}, 
                 \cdots, 
                 \VAR{V}\SUB{n} \}}$$ 
  where $$\SHADE{\VAR{V}\SUB{1} : \VAR{GT}}$$, ..., $$\SHADE{\VAR{V}\SUB{n} : \VAR{GT}}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set}(
                       \_ : (  \VAR{GT} )\STAR) 
    :  \TO \NAMEREF{sets}
                     (  \VAR{GT} ) 
\end{align*}$$


  The notation $$\SHADE{\{  \VAR{V}\SUB{1}, 
                 \cdots, 
                 \VAR{V}\SUB{n} \}}$$ for $$\SHADE{\NAMEREF{set}
           (  \VAR{V}\SUB{1}, 
                  \cdots, 
                  \VAR{V}\SUB{n} )}$$ is built-in.


$$\begin{align*}
  \KEY{Assert} \quad
  & \{  \VAR{V}\STAR : (  \VAR{GT} )\STAR \} 
    == \NAMEREF{set}
         (  \VAR{V}\STAR )
\end{align*}$$


  Note that $$\SHADE{\NAMEREF{set}
           (  \cdots )}$$ is not a constructor operation. The order and duplicates
  of argument values are ignored (e.g., $$\SHADE{\{  1, 
                 2, 
                 1 \}}$$ denotes the same set as $$\SHADE{\{  1, 
                 2 \}}$$ 
  and $$\SHADE{\{  2, 
                 1 \}}$$).


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-elements}(
                       \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO (  \VAR{GT} )\STAR 
\end{align*}$$


  For each set $$\SHADE{\VAR{S}}$$, the sequence of values $$\SHADE{\VAR{V}\STAR}$$ returned by $$\SHADE{\NAMEREF{set-elements}
           (  \VAR{S} )}$$
  contains each element of $$\SHADE{\VAR{S}}$$ just once. The order of the values in $$\SHADE{\VAR{V}\STAR}$$ is
  unspecified, and may vary between sets (e.g., $$\SHADE{\NAMEREF{set-elements} \ 
           \{  1, 
                   2 \}}$$ could be
  $$\SHADE{(  1, 
                2 )}$$ and $$\SHADE{\NAMEREF{set-elements} \ 
           \{  1, 
                   2, 
                   3 \}}$$ could be $$\SHADE{(  3, 
                2, 
                1 )}$$). 


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{set}
      (  \NAMEREF{set-elements}
              (  \VAR{S} ) ) 
    == \VAR{S}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{is-in-set}(
                       \_ : \VAR{GT}, \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{is-in-set}
           (  \VAR{GV}, 
                  \VAR{S} )}$$ tests whether $$\SHADE{\VAR{GV}}$$ is in the set $$\SHADE{\VAR{S}}$$.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{is-in-set}
      (  \VAR{GV} : \VAR{GT}, 
             \{   \  \} ) 
    == \NAMEHYPER{../../Primitive}{Booleans}{false}
\\
  \KEY{Assert} \quad
  & \NAMEREF{is-in-set}
      (  \VAR{GV} : \VAR{GT}, 
             \{  \VAR{GV} \} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{is-subset}(
                       \_ : \NAMEREF{sets}
                                 (  \VAR{GT} ), \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{is-subset}
           (  \VAR{S}\SUB{1}, 
                  \VAR{S}\SUB{2} )}$$ tests whether $$\SHADE{\VAR{S}\SUB{1}}$$ is a subset of $$\SHADE{\VAR{S}\SUB{2}}$$.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{is-subset}
      (  \{   \  \}, 
             \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEHYPER{../../Primitive}{Booleans}{true}
\\
  \KEY{Assert} \quad
  & \NAMEREF{is-subset}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S} ) 
    == \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-insert}(
                       \_ : \VAR{GT}, \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEREF{sets}
                     (  \VAR{GT} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{set-insert}
           (  \VAR{GV}, 
                  \VAR{S} )}$$ returns the set union of $$\SHADE{\{  \VAR{GV} \}}$$ and $$\SHADE{\VAR{S}}$$.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{is-in-set}
      (  \VAR{GV} : \VAR{GT}, 
             \NAMEREF{set-insert}
              (  \VAR{GV} : \VAR{GT}, 
                     \VAR{S} : \NAMEREF{sets}
                                (  \VAR{GT} ) ) ) 
    == \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-unite}(
                       \_ : (  \NAMEREF{sets}
                                       (  \VAR{GT} ) )\STAR) 
    :  \TO \NAMEREF{sets}
                     (  \VAR{GT} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{set-unite}
           (  \cdots )}$$ unites a sequence of sets.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S} ) 
    == \VAR{S}
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{2} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEREF{set-unite}
         (  \VAR{S}\SUB{2}, 
                \VAR{S}\SUB{1} )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \NAMEREF{set-unite}
              (  \VAR{S}\SUB{2} : \NAMEREF{sets}
                                (  \VAR{GT} ), 
                     \VAR{S}\SUB{3} : \NAMEREF{sets}
                                (  \VAR{GT} ) ) ) \\&\quad
    == \NAMEREF{set-unite}
         (  \NAMEREF{set-unite}
                 (  \VAR{S}\SUB{1}, 
                        \VAR{S}\SUB{2} ), 
                \VAR{S}\SUB{3} )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{2} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{3} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) \\&\quad
    == \NAMEREF{set-unite}
         (  \VAR{S}\SUB{1}, 
                \NAMEREF{set-unite}
                 (  \VAR{S}\SUB{2}, 
                        \VAR{S}\SUB{3} ) )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \VAR{S}
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-unite}
      (   \  ) 
    == \{   \  \}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-intersect}(
                       \_ : (  \NAMEREF{sets}
                                       (  \VAR{GT} ) )\PLUS) 
    :  \TO \NAMEREF{sets}
                     (  \VAR{GT} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{set-intersect}
           (  \VAR{GT}, 
                  \cdots )}$$ intersects a non-empty sequence of sets.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{set-intersect}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S} ) 
    == \VAR{S}
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-intersect}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{2} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEREF{set-intersect}
         (  \VAR{S}\SUB{2}, 
                \VAR{S}\SUB{1} )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-intersect}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \NAMEREF{set-intersect}
              (  \VAR{S}\SUB{2} : \NAMEREF{sets}
                                (  \VAR{GT} ), 
                     \VAR{S}\SUB{3} : \NAMEREF{sets}
                                (  \VAR{GT} ) ) ) \\&\quad
    == \NAMEREF{set-intersect}
         (  \NAMEREF{set-intersect}
                 (  \VAR{S}\SUB{1}, 
                        \VAR{S}\SUB{2} ), 
                \VAR{S}\SUB{3} )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-intersect}
      (  \VAR{S}\SUB{1} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{2} : \NAMEREF{sets}
                        (  \VAR{GT} ), 
             \VAR{S}\SUB{3} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) \\&\quad
    == \NAMEREF{set-intersect}
         (  \VAR{S}\SUB{1}, 
                \NAMEREF{set-intersect}
                 (  \VAR{S}\SUB{2}, 
                        \VAR{S}\SUB{3} ) )
\\
  \KEY{Assert} \quad
  & \NAMEREF{set-intersect}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \VAR{S}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-difference}(
                       \_ : \NAMEREF{sets}
                                 (  \VAR{GT} ), \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEREF{sets}
                     (  \VAR{GT} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{set-difference}
           (  \VAR{S}\SUB{1}, 
                  \VAR{S}\SUB{2} )}$$ returns the set containing those elements of $$\SHADE{\VAR{S}\SUB{1}}$$
  that are not in $$\SHADE{\VAR{S}\SUB{2}}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{set-size}(
                       \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers} 
\end{align*}$$

$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{set-size}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEHYPER{../.}{Sequences}{length}
         (  \NAMEREF{set-elements}
                 (  \VAR{S} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{some-element}(
                       \_ : \NAMEREF{sets}
                                 (  \VAR{GT} )) 
    :  \TO \VAR{GT}\QUERY 
\\
  \KEY{Assert} \quad
  & \NAMEREF{some-element}
      (  \VAR{S} : \NAMEREF{sets}
                        (  \VAR{GT} ) ) 
    == \NAMEHYPER{../.}{Sequences}{index}
         (  1, 
                \NAMEREF{set-elements}
                 (  \VAR{S} ) )
\\
  \KEY{Assert} \quad
  & \NAMEREF{some-element} \ 
      \{   \  \} 
    == (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{element-not-in}(
                       \VAR{GT} : \NAMEHYPER{../..}{Value-Types}{types}, \_ : \NAMEREF{set}
                                 (  \VAR{GT} )) 
    :  \TO \VAR{GT}\QUERY 
\end{align*}$$


  $$\SHADE{\NAMEREF{element-not-in}
           (  \VAR{GT}, 
                  \VAR{S} )}$$ gives an element of the type $$\SHADE{\VAR{GT}}$$ not in the set 
  $$\SHADE{\VAR{S}}$$, or $$\SHADE{(   \  )}$$ when $$\SHADE{\VAR{S}}$$ is empty. When the set of elements of $$\SHADE{\VAR{GT}}$$ is infinite,
  $$\SHADE{\NAMEREF{element-not-in}
           (  \VAR{GT}, 
                  \VAR{S} )}$$ never gives $$\SHADE{(   \  )}$$.




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
[Sets.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sets/Sets.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Sets
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Sets
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sets/Sets.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Sets/Sets.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
