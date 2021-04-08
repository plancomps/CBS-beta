---
title: "Objects"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Objects.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Objects
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{objects} \\
  \KEY{Funcon} \quad & \NAMEREF{object} \\
  \KEY{Funcon} \quad & \NAMEREF{object-identity} \\
  \KEY{Funcon} \quad & \NAMEREF{object-class-name} \\
  \KEY{Funcon} \quad & \NAMEREF{object-feature-map} \\
  \KEY{Funcon} \quad & \NAMEREF{object-subobject-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{object-tree} \\
  \KEY{Funcon} \quad & \NAMEREF{object-single-inheritance-feature-map}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{objects} 
  \ ::= \ & \NAMEDECL{object}(
                               \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, \_ : \NAMEREF{objects}\STAR)
\end{align*}$$


  $$\SHADE{\NAMEREF{object}
           (  \VAR{A}, 
                  \VAR{C}, 
                  \VAR{Env}, 
                  \VAR{O}\STAR )}$$ is an object:
  * distinguished by an atom $$\SHADE{\VAR{A}}$$,
  * of a class named $$\SHADE{\VAR{C}}$$,
  * with an environment $$\SHADE{\VAR{Env}}$$ with the features of the object, and 
  * a sequence $$\SHADE{\VAR{O}\STAR}$$ of subobjects of the direct superclasses of $$\SHADE{\VAR{C}}$$.
  $$\SHADE{\NAMEREF{object}
           (  \VAR{A}, 
                  \VAR{C}, 
                  \VAR{Env} )}$$ is an object of a base class.
  $$\SHADE{\NAMEREF{object}
           (  \VAR{A}, 
                  \VAR{C}, 
                  \VAR{Env}, 
                  \VAR{O}' )}$$ is an object of a class with a single superclass.
  With multiple inheritance, subobjects due to repeated inheritance of the 
  same class may be shared.
  
  Implementations of objects generally represent an object as a vector of
  fields, and use pointers and offsets for efficient access to individual
  fields. The representation of objects used in this specification is
  independent of such implementation concerns.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-identity}(
                       \_ : \NAMEREF{objects}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{object-identity} \\&\quad 
        \NAMEREF{object}
          (  \VAR{A} : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \_\STAR : \NAMEREF{objects}\STAR ) \leadsto \\&\quad
        \VAR{A}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-class-name}(
                       \_ : \NAMEREF{objects}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{object-class-name} \\&\quad 
        \NAMEREF{object}
          (  \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, 
                 \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \_\STAR : \NAMEREF{objects}\STAR ) \leadsto \\&\quad
        \VAR{C}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-feature-map}(
                       \_ : \NAMEREF{objects}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{object-feature-map} \\&\quad 
        \NAMEREF{object}
          (  \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                 \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \_\STAR : \NAMEREF{objects}\STAR ) \leadsto \\&\quad
        \VAR{Env}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-subobject-sequence}(
                       \_ : \NAMEREF{objects}) 
    :  \TO \NAMEREF{objects}\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{object-subobject-sequence} \\&\quad 
        \NAMEREF{object}
          (  \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                 \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \VAR{O}\STAR : \NAMEREF{objects}\STAR ) \leadsto \\&\quad
        \VAR{O}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-tree}(
                       \_ : \NAMEREF{objects}) 
    :  \TO \NAMEHYPER{../.}{Trees}{trees}
                     (  \NAMEREF{objects} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{object-tree} \ 
           \VAR{O}}$$ forms a tree where the branches are the object trees for
  the direct subobjects of $$\SHADE{\VAR{O}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{object-tree}
        (  \VAR{O} : \NAMEREF{objects} ) \leadsto \\&\quad
        \NAMEHYPER{../.}{Trees}{tree}
          ( \\&\quad\quad \VAR{O}, \\&\quad\quad
                 \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
                  ( \\&\quad\quad\quad \NAMEREF{object-tree} \ 
                          \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad\quad\quad
                         \NAMEREF{object-subobject-sequence} \ 
                          \VAR{O} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{object-single-inheritance-feature-map}(
                       \VAR{O} : \NAMEREF{objects}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} \\&\quad
    \leadsto \NAMEHYPER{../.}{Maps}{map-override} \ 
               \NAMEHYPER{../../../Computations/Normal}{Giving}{left-to-right-map}
                 ( \\&\quad\quad\quad\quad \NAMEREF{object-feature-map} \ 
                         \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad
                        \NAMEHYPER{../.}{Trees}{single-branching-sequence} \ 
                         \NAMEREF{object-tree} \ 
                           \VAR{O} )
\end{align*}$$


  For multiple inheritance, different resolution orders can be specified
  by using difference linearisations of the object tree.




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
[Objects.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Objects/Objects.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Objects
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Objects
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Objects/Objects.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Objects/Objects.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
