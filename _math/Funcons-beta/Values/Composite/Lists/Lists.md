### Lists
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{lists} \\
  \KEY{Funcon} ~ & \NAMEREF{list} \\
  \KEY{Funcon} ~ & \NAMEREF{list-elements} \\
  \KEY{Funcon} ~ & \NAMEREF{list-nil} \\
  \KEY{Alias} ~ & \NAMEREF{nil} \\
  \KEY{Funcon} ~ & \NAMEREF{list-cons} \\
  \KEY{Alias} ~ & \NAMEREF{cons} \\
  \KEY{Funcon} ~ & \NAMEREF{list-head} \\
  \KEY{Alias} ~ & \NAMEREF{head} \\
  \KEY{Funcon} ~ & \NAMEREF{list-tail} \\
  \KEY{Alias} ~ & \NAMEREF{tail} \\
  \KEY{Funcon} ~ & \NAMEREF{list-length} \\
  \KEY{Funcon} ~ & \NAMEREF{list-append}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{lists}(\VAR{T} )  
  ~ ::= ~ & \NAMEDECL{list} (\_ : ( \VAR{T} )\STAR)
\end{aligned}$$


  $$\SHADE{\NAMEREF{lists}
           ( \VAR{T} )}$$ is the type of possibly-empty finite lists $$\SHADE{[ \VAR{V}\SUB{1},  
           \cdots,  
           \VAR{Vn} ]}$$ 
  where $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}}$$, ..., $$\SHADE{\VAR{Vn} : \VAR{T}}$$.
  
  N.B. $$\SHADE{[ \VAR{T} ]}$$ is always a single list value, and *not* interpreted as the
  type $$\SHADE{\NAMEREF{lists}
           ( \VAR{T} )}$$.
  
  The notation $$\SHADE{[ \VAR{V}\SUB{1},  
           \cdots,  
           \VAR{Vn} ]}$$ for $$\SHADE{\NAMEREF{list}
           ( \VAR{V}\SUB{1},   
             \cdots,   
             \VAR{Vn} )}$$ is built-in.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & [ \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] == 
      \NAMEREF{list}
        ( \VAR{V}\STAR )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-elements}(\_ : \NAMEREF{lists}
                                ( \VAR{T} )) :  \TO ( \VAR{T} )\STAR
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-elements}
        ( \NAMEREF{list}
            ( \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) ) \leadsto
        \VAR{V}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-nil} :  \TO \NAMEREF{lists}
                                                                         ( \_ ) \\
  & \quad \leadsto [  ~  ]
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{nil} = \NAMEREF{list-nil}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-cons}(\_ : \VAR{T}, \_ : \NAMEREF{lists}
                                ( \VAR{T} )) :  \TO \NAMEREF{lists}
                                                                         ( \VAR{T} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{cons} = \NAMEREF{list-cons}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{list-cons}
        ( \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values},   
          [ \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] ) \leadsto
        [ \VAR{V},  
          \VAR{V}\STAR ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-head}(\_ : \NAMEREF{lists}
                                ( \VAR{T} )) :  \TO ( \VAR{T} )\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{head} = \NAMEREF{list-head}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{list-head} ~
        [ \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values},   
          \_\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] \leadsto
        \VAR{V}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-head} ~
        [  ~  ] \leadsto
        (  ~  )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-tail}(\_ : \NAMEREF{lists}
                                ( \VAR{T} )) :  \TO ( \NAMEREF{lists}
                                                                           ( \VAR{T} ) )\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{tail} = \NAMEREF{list-tail}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{list-tail} ~
        [ \_ : \NAMEHYPER{../..}{Value-Types}{values},   
          \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] \leadsto
        [ \VAR{V}\STAR ]
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-tail} ~
        [  ~  ] \leadsto
        (  ~  )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-length}(\_ : \NAMEREF{lists}
                                ( \VAR{T} )) :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-length} ~
        [ \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] \leadsto
        \NAMEHYPER{../.}{Sequences}{length}
          ( \VAR{V}\STAR )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{list-append}(\_ : ( \NAMEREF{lists}
                                  ( \VAR{T} ) )\STAR) :  \TO \NAMEREF{lists}
                                                                         ( \VAR{T} )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-append}
        ( [ \VAR{V}\SUB{1}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ],   
          [ \VAR{V}\SUB{2}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ] ) \leadsto
        [ \VAR{V}\SUB{1}\STAR,  
          \VAR{V}\SUB{2}\STAR ]
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-append}
        ( \VAR{L}\SUB{1} : \NAMEREF{lists}
                      ( \_ ),   
          \VAR{L}\SUB{2} : \NAMEREF{lists}
                      ( \_ ),   
          \VAR{L}\SUB{3} : \NAMEREF{lists}
                      ( \_ ),   
          \VAR{L}\STAR : ( \NAMEREF{lists}
                        ( \_ ) )\STAR ) \leadsto
        \NAMEREF{list-append}
          ( \VAR{L}\SUB{1},   
            \NAMEREF{list-append}
              ( \VAR{L}\SUB{2},    
                \VAR{L}\SUB{3},    
                \VAR{L}\STAR ) )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-append}
        (  ~  ) \leadsto
        [  ~  ]
\\
  \KEY{Rule} ~ 
    & \NAMEREF{list-append}
        ( \VAR{L} : \NAMEREF{lists}
                      ( \_ ) ) \leadsto
        \VAR{L}
\end{aligned}$$


  Datatypes of infinite and possibly-infinite lists can be specified as
  algebraic datatypes using abstractions.




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
