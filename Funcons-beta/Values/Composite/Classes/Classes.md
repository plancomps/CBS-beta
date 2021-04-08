{::comment}{% raw %}{:/}


----

### Classes
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{classes} \\
  \KEY{Funcon} \quad & \NAMEREF{class} \\
  \KEY{Funcon} \quad & \NAMEREF{class-instantiator} \\
  \KEY{Funcon} \quad & \NAMEREF{class-feature-map} \\
  \KEY{Funcon} \quad & \NAMEREF{class-superclass-name-sequence} \\
  \KEY{Funcon} \quad & \NAMEREF{class-name-tree} \\
  \KEY{Funcon} \quad & \NAMEREF{is-subclass-name} \\
  \KEY{Funcon} \quad & \NAMEREF{class-name-single-inheritance-feature-map}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{classes} 
  \ ::= \ & \NAMEDECL{class}(
                               \_ : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                                         (  \NAMEHYPER{../.}{References}{references}
                                                 (  \NAMEHYPER{../.}{Objects}{objects} ) ), \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR)
\end{align*}$$


  $$\SHADE{\NAMEREF{class}
           (  \VAR{Thunk}, 
                  \VAR{Env}, 
                  \VAR{C}\STAR )}$$ is a class with:
  * a thunk $$\SHADE{\VAR{Thunk}}$$ for instantiating the class,
  * an environment $$\SHADE{\VAR{Env}}$$ with the features declared by the class, and
  * a sequence $$\SHADE{\VAR{C}\STAR}$$ of names of direct superclasses.
  $$\SHADE{\NAMEREF{class}
           (  \VAR{Thunk}, 
                  \VAR{Env} )}$$ is a base class, having no superclasses.
  $$\SHADE{\NAMEREF{class}
           (  \VAR{Thunk}, 
                  \VAR{Env}, 
                  \VAR{C} )}$$ is a class with a single superclass.
  
  Class instantiation forces its thunk to compute a reference to an object.

  Features are inherited from superclasses. When features with the same name
  are declared in simultaneously inherited classes, the order of the superclass
  identifiers in $$\SHADE{\VAR{C}\STAR}$$ may affect resolution of references to features. 
  Overloading of feature names is supported by using type maps as features.

  The class table is represented by binding class names to classes. 
  The class superclass hierarchy is assumed to be acyclic.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{class-instantiator}(
                       \_ : \NAMEREF{classes}) 
    :  \TO \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                     (  \NAMEHYPER{../.}{References}{references}
                             (  \NAMEHYPER{../.}{Objects}{objects} ) ) 
\\
  \KEY{Rule} \quad
    & \NAMEREF{class-instantiator} \\&\quad 
        \NAMEREF{class}
          (  \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                            (  \_ ), 
                 \VAR{Envs} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto \\&\quad
        \VAR{Thunk}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{class-feature-map}(
                       \_ : \NAMEREF{classes}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{class-feature-map} \\&\quad 
        \NAMEREF{class}
          (  \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                            (  \_ ), 
                 \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto \\&\quad
        \VAR{Env}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{class-superclass-name-sequence}(
                       \_ : \NAMEREF{classes}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{class-superclass-name-sequence} \\&\quad 
        \NAMEREF{class}
          (  \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                            (  \_ ), 
                 \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, 
                 \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto \\&\quad
        \VAR{C}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{class-name-tree}(
                       \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) 
    :  \TO \NAMEHYPER{../.}{Trees}{trees}
                     (  \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{class-name-tree} \ 
           \VAR{C}}$$ forms a tree where the branches are the class name
  trees for the superclasses of $$\SHADE{\VAR{C}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{class-name-tree}
        (  \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} ) \leadsto \\&\quad
        \NAMEHYPER{../.}{Trees}{tree}
          ( \\&\quad\quad \VAR{C}, \\&\quad\quad
                 \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
                  ( \\&\quad\quad\quad \NAMEREF{class-name-tree} \ 
                          \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad\quad\quad
                         \NAMEREF{class-superclass-name-sequence} \ 
                          \NAMEHYPER{../../../Computations/Normal}{Binding}{bound-value} \ 
                            \VAR{C} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-subclass-name}(
                       \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \VAR{C}' : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} \\&\quad
    \leadsto \NAMEHYPER{../.}{Sets}{is-in-set}
               (  \VAR{C}, 
                      \{  \NAMEHYPER{../.}{Trees}{forest-value-sequence} \ 
                              \NAMEREF{class-name-tree} \ 
                                \VAR{C}' \} )
\end{align*}$$


  The result of $$\SHADE{\NAMEREF{is-subclass-name}
           (  \VAR{C}, 
                  \VAR{C}' )}$$ does not depend on the order of
  the names in $$\SHADE{\NAMEHYPER{../.}{Trees}{forest-value-sequence} \ 
           \NAMEREF{class-name-tree} \ 
             \VAR{C}'}$$. 


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{class-name-single-inheritance-feature-map}(
                       \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} \\&\quad
    \leadsto \NAMEHYPER{../.}{Maps}{map-override} \ 
               \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
                 ( \\&\quad\quad\quad\quad \NAMEREF{class-feature-map} \ 
                         \NAMEHYPER{../../../Computations/Normal}{Binding}{bound-value} \ 
                           \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad
                        \NAMEHYPER{../.}{Trees}{single-branching-sequence} \ 
                         \NAMEREF{class-name-tree} \ 
                           \VAR{C} )
\end{align*}$$


  For multiple inheritance, different resolution orders can be specified
  by using different linearisations of the class name tree.




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
[Classes.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Classes/Classes.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Classes
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Classes
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Classes/Classes.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
