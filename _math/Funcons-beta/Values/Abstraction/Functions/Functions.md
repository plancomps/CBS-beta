### Functions
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{functions} \\
  \KEY{Funcon} ~ & \NAMEREF{function} \\
  \KEY{Funcon} ~ & \NAMEREF{apply} \\
  \KEY{Funcon} ~ & \NAMEREF{supply} \\
  \KEY{Funcon} ~ & \NAMEREF{compose} \\
  \KEY{Funcon} ~ & \NAMEREF{uncurry} \\
  \KEY{Funcon} ~ & \NAMEREF{curry} \\
  \KEY{Funcon} ~ & \NAMEREF{partial-apply}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T}, \VAR{T}', \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{functions}(\VAR{T} , \VAR{T}' )  
  ~ ::= ~ & \NAMEDECL{function} (\VAR{A} : \NAMEHYPER{../.}{Generic}{abstractions}
                                         ( \VAR{T} \TO \VAR{T}' ))
\end{aligned}$$


  $$\SHADE{\NAMEREF{functions}
           ( \VAR{T},   
             \VAR{T}' )}$$ consists of abstractions whose bodies may depend on
  a given value of type $$\SHADE{\VAR{T}}$$, and whose executions normally compute values 
  of type $$\SHADE{\VAR{T}'}$$.
  $$\SHADE{\NAMEREF{function}
           ( \NAMEHYPER{../.}{Generic}{abstraction}
               ( \VAR{X} ) )}$$ evaluates to a function with dynamic bindings,
  $$\SHADE{\NAMEREF{function}
           ( \NAMEHYPER{../.}{Generic}{closure}
               ( \VAR{X} ) )}$$ computes a function with static bindings.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{apply}(\_ : \NAMEREF{functions}
                                ( \VAR{T},   
                                  \VAR{T}' ), \_ : \VAR{T}) :  \TO \VAR{T}'
\end{aligned}$$


  $$\SHADE{\NAMEREF{apply}
           ( \VAR{F},   
             \VAR{V} )}$$ applies the function $$\SHADE{\VAR{F}}$$ to the argument value $$\SHADE{\VAR{V}}$$.
  This corresponds to call by value; using thunks as argument values
  corresponds to call by name. Moreover, using tuples as argument values 
  corresponds to application to multiple arguments.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{apply}
        ( \NAMEREF{function}
            ( \NAMEHYPER{../.}{Generic}{abstraction}
                ( \VAR{X} ) ),   
          \VAR{V} : \VAR{T} ) \leadsto
        \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
          ( \VAR{V},   
            \VAR{X} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{supply}(\_ : \NAMEREF{functions}
                                ( \VAR{T},   
                                  \VAR{T}' ), \_ : \VAR{T}) :  \TO \NAMEHYPER{../.}{Thunks}{thunks}
                                                                         ( \VAR{T}' )
\end{aligned}$$


  $$\SHADE{\NAMEREF{supply}
           ( \VAR{F},   
             \VAR{V} )}$$ determines the argument value of a function application,
  but returns a thunk that defers executing the body of the function.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{supply}
        ( \NAMEREF{function}
            ( \NAMEHYPER{../.}{Generic}{abstraction}
                ( \VAR{X} ) ),   
          \VAR{V} : \VAR{T} ) \leadsto
        \NAMEHYPER{../.}{Thunks}{thunk}
          ( \NAMEHYPER{../.}{Generic}{abstraction}
              ( \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
                  ( \VAR{V},     
                    \VAR{X} ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{compose}(\_ : \NAMEREF{functions}
                                ( \VAR{T}\SUB{2},   
                                  \VAR{T}' ), \_ : \NAMEREF{functions}
                                ( \VAR{T}\SUB{1},   
                                  \VAR{T}\SUB{2} )) :  \TO \NAMEREF{functions}
                                                                         ( \VAR{T}\SUB{1},   
                                                                           \VAR{T}' )
\end{aligned}$$


  $$\SHADE{\NAMEREF{compose}
           ( \VAR{F}\SUB{2},   
             \VAR{F}\SUB{1} )}$$ returns the function that applies $$\SHADE{\VAR{F}\SUB{1}}$$ to its argument,
  then applies $$\SHADE{\VAR{F}\SUB{2}}$$ to the result of $$\SHADE{\VAR{F}\SUB{1}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{compose}
        ( \NAMEREF{function}
            ( \NAMEHYPER{../.}{Generic}{abstraction}
                ( \VAR{Y} ) ),   
          \NAMEREF{function}
            ( \NAMEHYPER{../.}{Generic}{abstraction}
                ( \VAR{X} ) ) ) \leadsto
        \NAMEREF{function}
          ( \NAMEHYPER{../.}{Generic}{abstraction}
              ( \NAMEHYPER{../../../Computations/Normal}{Giving}{give}
                  ( \VAR{X},     
                    \VAR{Y} ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{uncurry}(\VAR{F} : \NAMEREF{functions}
                                ( \VAR{T}\SUB{1},   
                                  \NAMEREF{functions}
                                    ( \VAR{T}\SUB{2},    
                                      \VAR{T}' ) )) :  \TO \NAMEREF{functions}
                                                                         ( \NAMEHYPER{../../Composite}{Tuples}{tuples}
                                                                             ( \VAR{T}\SUB{1},    
                                                                               \VAR{T}\SUB{2} ),   
                                                                           \VAR{T}' ) \\
  & \quad \leadsto \NAMEREF{function}
                     ( \NAMEHYPER{../.}{Generic}{abstraction}
                         ( \NAMEREF{apply}
                             ( \NAMEREF{apply}
                                 ( \VAR{F}, \\&\quad \quad \quad \quad \quad \quad \quad 
                                   \NAMEHYPER{../../../Computations/Abnormal}{Failing}{checked} ~
                                     \NAMEHYPER{../../Composite}{Sequences}{index}
                                       ( 1, \\&\quad \quad \quad \quad \quad \quad \quad \quad \quad 
                                         \NAMEHYPER{../../Composite}{Tuples}{tuple-elements} ~
                                           \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ), \\&\quad \quad \quad \quad \quad \quad 
                               \NAMEHYPER{../../../Computations/Abnormal}{Failing}{checked} ~
                                 \NAMEHYPER{../../Composite}{Sequences}{index}
                                   ( 2, \\&\quad \quad \quad \quad \quad \quad \quad \quad 
                                     \NAMEHYPER{../../Composite}{Tuples}{tuple-elements} ~
                                       \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) ) )
\end{aligned}$$


  $$\SHADE{\NAMEREF{uncurry}
           ( \VAR{F} )}$$ takes a curried function $$\SHADE{\VAR{F}}$$ and returns a function that takes
  a pair of arguments..


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{curry}(\VAR{F} : \NAMEREF{functions}
                                ( \NAMEHYPER{../../Composite}{Tuples}{tuples}
                                    ( \VAR{T}\SUB{1},    
                                      \VAR{T}\SUB{2} ),   
                                  \VAR{T}' )) :  \TO \NAMEREF{functions}
                                                                         ( \VAR{T}\SUB{1},   
                                                                           \NAMEREF{functions}
                                                                             ( \VAR{T}\SUB{2},    
                                                                               \VAR{T}' ) ) \\
  & \quad \leadsto \NAMEREF{function}
                     ( \NAMEHYPER{../.}{Generic}{abstraction}
                         ( \NAMEREF{partial-apply}
                             ( \VAR{F}, \\&\quad \quad \quad \quad \quad \quad 
                               \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) )
\end{aligned}$$


  $$\SHADE{\NAMEREF{curry}
           ( \VAR{F} )}$$ takes a function $$\SHADE{\VAR{F}}$$ that takes a pair of arguments, and returns
  the corresponding 'curried' function.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{partial-apply}(\VAR{F} : \NAMEREF{functions}
                                ( \NAMEHYPER{../../Composite}{Tuples}{tuples}
                                    ( \VAR{T}\SUB{1},    
                                      \VAR{T}\SUB{2} ),   
                                  \VAR{T}' ), \VAR{V} : \VAR{T}\SUB{1}) :  \TO \NAMEREF{functions}
                                                                         ( \VAR{T}\SUB{2},   
                                                                           \VAR{T}' ) \\
  & \quad \leadsto \NAMEREF{function}
                     ( \NAMEHYPER{../.}{Generic}{abstraction}
                         ( \NAMEREF{apply}
                             ( \VAR{F}, \\&\quad \quad \quad \quad \quad \quad 
                               \NAMEHYPER{../../Composite}{Tuples}{tuple}
                                 ( \VAR{V}, \\&\quad \quad \quad \quad \quad \quad \quad 
                                   \NAMEHYPER{../../../Computations/Normal}{Giving}{given} ) ) ) )
\end{aligned}$$


  $$\SHADE{\NAMEREF{partial-apply}
           ( \VAR{F},   
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
