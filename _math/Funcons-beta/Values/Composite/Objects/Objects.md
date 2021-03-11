### Objects
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{objects} \\
  \KEY{Funcon} ~ & \NAMEREF{object} \\
  \KEY{Funcon} ~ & \NAMEREF{object-identity} \\
  \KEY{Funcon} ~ & \NAMEREF{object-class-name} \\
  \KEY{Funcon} ~ & \NAMEREF{object-feature-map} \\
  \KEY{Funcon} ~ & \NAMEREF{object-subobject-sequence} \\
  \KEY{Funcon} ~ & \NAMEREF{object-tree} \\
  \KEY{Funcon} ~ & \NAMEREF{object-single-inheritance-feature-map}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{objects}  
  ~ ::= ~ & \NAMEDECL{object} (\_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}, \_ : \NAMEREF{objects}\STAR)
\end{aligned}$$


  $$\SHADE{\NAMEREF{object}
           ( \VAR{A},   
             \VAR{C},   
             \VAR{Env},   
             \VAR{O}\STAR )}$$ is an object:
  * distinguished by an atom $$\SHADE{\VAR{A}}$$,
  * of a class named $$\SHADE{\VAR{C}}$$,
  * with an environment $$\SHADE{\VAR{Env}}$$ with the features of the object, and 
  * a sequence $$\SHADE{\VAR{O}\STAR}$$ of subobjects of the direct superclasses of $$\SHADE{\VAR{C}}$$.
  $$\SHADE{\NAMEREF{object}
           ( \VAR{A},   
             \VAR{C},   
             \VAR{Env} )}$$ is an object of a base class.
  $$\SHADE{\NAMEREF{object}
           ( \VAR{A},   
             \VAR{C},   
             \VAR{Env},   
             \VAR{O}' )}$$ is an object of a class with a single superclass.
  With multiple inheritance, subobjects due to repeated inheritance of the 
  same class may be shared.
  
  Implementations of objects generally represent an object as a vector of
  fields, and use pointers and offsets for efficient access to individual
  fields. The representation of objects used in this specification is
  independent of such implementation concerns.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-identity}(\_ : \NAMEREF{objects}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{object-identity} ~
        \NAMEREF{object}
          ( \VAR{A} : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \_\STAR : \NAMEREF{objects}\STAR ) \leadsto
        \VAR{A}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-class-name}(\_ : \NAMEREF{objects}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{object-class-name} ~
        \NAMEREF{object}
          ( \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms},    
            \VAR{C} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \_\STAR : \NAMEREF{objects}\STAR ) \leadsto
        \VAR{C}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-feature-map}(\_ : \NAMEREF{objects}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{object-feature-map} ~
        \NAMEREF{object}
          ( \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
            \VAR{Env} : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \_\STAR : \NAMEREF{objects}\STAR ) \leadsto
        \VAR{Env}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-subobject-sequence}(\_ : \NAMEREF{objects}) :  \TO \NAMEREF{objects}\STAR
\\
  \KEY{Rule} ~ 
    & \NAMEREF{object-subobject-sequence} ~
        \NAMEREF{object}
          ( \_ : \NAMEHYPER{../../../Computations/Normal}{Generating}{atoms},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
            \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{environments},    
            \VAR{O}\STAR : \NAMEREF{objects}\STAR ) \leadsto
        \VAR{O}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-tree}(\_ : \NAMEREF{objects}) :  \TO \NAMEHYPER{../.}{Trees}{trees}
                                                                         ( \NAMEREF{objects} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{object-tree} ~
           \VAR{O}}$$ forms a tree where the branches are the object trees for
  the direct subobjects of $$\SHADE{\VAR{O}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{object-tree}
        ( \VAR{O} : \NAMEREF{objects} ) \leadsto
        \NAMEHYPER{../.}{Trees}{tree}
          ( \VAR{O},   
            \NAMEHYPER{../../../Computations/Normal}{Giving}{interleave-map}
              ( \NAMEREF{object-tree} ~
                  \NAMEHYPER{../../../Computations/Normal}{Giving}{given},    
                \NAMEREF{object-subobject-sequence} ~
                  \VAR{O} ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{object-single-inheritance-feature-map}(\VAR{O} : \NAMEREF{objects}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{environments} \\
  & \quad \leadsto \NAMEHYPER{../.}{Maps}{map-override} ~
                     \NAMEHYPER{../../../Computations/Normal}{Giving}{left-to-right-map}
                       ( \NAMEREF{object-feature-map} ~
                           \NAMEHYPER{../../../Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                         \NAMEHYPER{../.}{Trees}{single-branching-sequence} ~
                           \NAMEREF{object-tree} ~
                             \VAR{O} )
\end{aligned}$$


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
