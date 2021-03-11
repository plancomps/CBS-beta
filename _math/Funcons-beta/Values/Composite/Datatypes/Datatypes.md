### Datatypes
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{datatype-values} \\
  \KEY{Funcon} ~ & \NAMEREF{datatype-value} \\
  \KEY{Funcon} ~ & \NAMEREF{datatype-value-id} \\
  \KEY{Funcon} ~ & \NAMEREF{datatype-value-elements}
  ~ ]
\end{aligned}$$


  A datatype value consists of an identifier and a sequence of values.

  'Datatype T ::= ...' declares the type $$\SHADE{\VAR{T}}$$ to refer to a fresh value
  constructor in $$\SHADE{\NAMEHYPER{../..}{Value-Types}{types}}$$, and asserts $$\SHADE{\VAR{T} <: \NAMEREF{datatype-values}}$$. 
  
  Each constructor funcon 'F(_:T1,...,_:Tn)' of the datatype declaration
  generates values in $$\SHADE{\VAR{T}}$$ of the form $$\SHADE{\NAMEREF{datatype-value}
           ( \STRING{F},   
             \VAR{V}\SUB{1},   
             \cdots,   
             \VAR{Vn} )}$$ from
  $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}\SUB{1}}$$, ..., $$\SHADE{\VAR{Vn} : \VAR{Tn}}$$.
  
  Note that a computation $$\SHADE{\VAR{X}}$$ cannot be directly included in datatype values:
  it is necessary to encapsulate it in $$\SHADE{\NAMEHYPER{../../Abstraction}{Generic}{abstraction}
           ( \VAR{X} )}$$.
  
  'Datatype T', followed by declarations of constructor funcons for 'T',
  allows specification of GADTs.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{datatype-values}  
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{datatype-value}(\_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) : \NAMEREF{datatype-values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{datatype-value-id}(\_ : \NAMEREF{datatype-values}) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{datatype-value-id}
        ( \NAMEREF{datatype-value}
            ( \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
              \_\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) ) \leadsto
        \VAR{I}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{datatype-value-elements}(\_ : \NAMEREF{datatype-values}) :  \TO \NAMEHYPER{../..}{Value-Types}{values}\STAR
\\
  \KEY{Rule} ~ 
    & \NAMEREF{datatype-value-elements}
        ( \NAMEREF{datatype-value}
            ( \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
              \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) ) \leadsto
        \VAR{V}\STAR
\end{aligned}$$



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
