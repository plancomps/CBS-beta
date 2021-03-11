---
layout: default
title: "Classes"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Classes.cbs]

### Classes
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{classes} \\
  \KEY{Funcon} ~ & \NAMEREF{class} \\
  \KEY{Funcon} ~ & \NAMEREF{class-instantiator} \\
  \KEY{Funcon} ~ & \NAMEREF{class-feature-map} \\
  \KEY{Funcon} ~ & \NAMEREF{class-superclass-name-sequence} \\
  \KEY{Funcon} ~ & \NAMEREF{class-name-tree} \\
  \KEY{Funcon} ~ & \NAMEREF{is-subclass-name} \\
  \KEY{Funcon} ~ & \NAMEREF{class-name-single-inheritance-feature-map}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{classes}  
  ~ ::= ~ & \NAMEDECL{class} (\_ : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                                         ( \NAMEHYPER{../.}{References}{references}
                                             ( \NAMEHYPER{../.}{Objects}{objects} ) ), \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR)
\end{aligned}$$


  $$\SHADE{\NAMEREF{class}
           ( \VAR{Thunk},   
             \VAR{Env},   
             \VAR{C}\STAR )}$$ is a class with:
  * a thunk $$\SHADE{\VAR{Thunk}}$$ for instantiating the class,
  * an environment $$\SHADE{\VAR{Env}}$$ with the features declared by the class, and
  * a sequence $$\SHADE{\VAR{C}\STAR}$$ of names of direct superclasses.
  $$\SHADE{\NAMEREF{class}
           ( \VAR{Thunk},   
             \VAR{Env} )}$$ is a base class, having no superclasses.
  $$\SHADE{\NAMEREF{class}
           ( \VAR{Thunk},   
             \VAR{Env},   
             \VAR{C} )}$$ is a class with a single superclass.
  
  Class instantiation forces its thunk to compute a reference to an object.

  Features are inherited from superclasses. When features with the same name
  are declared in simultaneously inherited classes, the order of the superclass
  identifiers in $$\SHADE{\VAR{C}\STAR}$$ may affect resolution of references to features. 
  Overloading of feature names is supported by using type maps as features.

  The class table is represented by binding class names to classes. 
  The class superclass hierarchy is assumed to be acyclic.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{class-instantiator}(\_ : \NAMEREF{classes}) :  \TO \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                                                                         ( \NAMEHYPER{../.}{References}{references}
                                                                             ( \NAMEHYPER{../.}{Objects}{objects} ) )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{class-instantiator} ~
        \NAMEREF{class}
          ( \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                        ( \_ ),    
            \VAR{Envs} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto
        \VAR{Thunk}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{class-feature-map}(\_ : \NAMEREF{classes}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{class-feature-map} ~
        \NAMEREF{class}
          ( \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                        ( \_ ),    
            \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto
        \VAR{Env}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{class-superclass-name-sequence}(\_ : \NAMEREF{classes}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR
\\
  \KEY{Rule} ~ 
    & \NAMEREF{class-superclass-name-sequence} ~
        \NAMEREF{class}
          ( \VAR{Thunk} : \NAMEHYPER{../../Abstraction}{Thunks}{thunks}
                        ( \_ ),    
            \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \VAR{C}\STAR : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}\STAR ) \leadsto
        \VAR{C}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{class-name-tree}(\_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) :  \TO \NAMEHYPER{../.}{Trees}{trees}
                                                                         ( \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{class-name-tree} ~
           \VAR{C}}$$ forms a tree where the branches are the class name
  trees for the superclasses of $$\SHADE{\VAR{C}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{class-name-tree}
        ( \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} ) \leadsto
        \NAMEHYPER{../.}{Trees}{tree}
          ( \VAR{C},   
            \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
              ( \NAMEREF{class-name-tree} ~
                  \NAMEHYPER{../../../Computations/Normal}{Giving}{given},    
                \NAMEREF{class-superclass-name-sequence} ~
                  \NAMEHYPER{../../../Computations/Normal}{Binding}{bound-value} ~
                    \VAR{C} ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-subclass-name}(\VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \VAR{C}' : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} \\
  & \quad \leadsto \NAMEHYPER{../.}{Sets}{is-in-set}
                     ( \VAR{C}, \\&\quad \quad \quad \quad 
                       \{ \NAMEHYPER{../.}{Trees}{forest-value-sequence} ~
                            \NAMEREF{class-name-tree} ~
                              \VAR{C}' \} )
\end{aligned}$$


  The result of $$\SHADE{\NAMEREF{is-subclass-name}
           ( \VAR{C},   
             \VAR{C}' )}$$ does not depend on the order of
  the names in $$\SHADE{\NAMEHYPER{../.}{Trees}{forest-value-sequence} ~
           \NAMEREF{class-name-tree} ~
             \VAR{C}'}$$. 


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{class-name-single-inheritance-feature-map}(\VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} \\
  & \quad \leadsto \NAMEHYPER{../.}{Maps}{map-override} ~
                     \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
                       ( \NAMEREF{class-feature-map} ~
                           \NAMEHYPER{../../../Computations/Normal}{Binding}{bound-value} ~
                             \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                         \NAMEHYPER{../.}{Trees}{single-branching-sequence} ~
                           \NAMEREF{class-name-tree} ~
                             \VAR{C} )
\end{aligned}$$


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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Classes.cbs]: /CBS-beta/Funcons-beta/Values/Composite/Classes/Classes.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Classes/Classes.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
