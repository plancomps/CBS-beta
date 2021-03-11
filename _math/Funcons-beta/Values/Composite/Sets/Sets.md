### Sets
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{sets} \\
  \KEY{Funcon} ~ & \NAMEREF{set} \\
  \KEY{Funcon} ~ & \NAMEREF{set-elements} \\
  \KEY{Funcon} ~ & \NAMEREF{is-in-set} \\
  \KEY{Funcon} ~ & \NAMEREF{is-subset} \\
  \KEY{Funcon} ~ & \NAMEREF{set-insert} \\
  \KEY{Funcon} ~ & \NAMEREF{set-unite} \\
  \KEY{Funcon} ~ & \NAMEREF{set-intersect} \\
  \KEY{Funcon} ~ & \NAMEREF{set-difference} \\
  \KEY{Funcon} ~ & \NAMEREF{set-size} \\
  \KEY{Funcon} ~ & \NAMEREF{some-element} \\
  \KEY{Funcon} ~ & \NAMEREF{element-not-in}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{sets}(\VAR{GT} )  
  
\end{aligned}$$


  $$\SHADE{\NAMEREF{sets}
           ( \VAR{GT} )}$$ is the type of possibly-empty finite sets $$\SHADE{\{ \VAR{V}\SUB{1},  
            \cdots,  
            \VAR{Vn} \}}$$ 
  where $$\SHADE{\VAR{V}\SUB{1} : \VAR{GT}}$$, ..., $$\SHADE{\VAR{Vn} : \VAR{GT}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set}(\_ : ( \VAR{GT} )\STAR) :  \TO \NAMEREF{sets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  The notation $$\SHADE{\{ \VAR{V}\SUB{1},  
            \cdots,  
            \VAR{Vn} \}}$$ for $$\SHADE{\NAMEREF{set}
           ( \VAR{V}\SUB{1},   
             \cdots,   
             \VAR{Vn} )}$$ is built-in.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \{ \VAR{V}\STAR : ( \VAR{GT} )\STAR \} == 
      \NAMEREF{set}
        ( \VAR{V}\STAR )
\end{aligned}$$


  Note that $$\SHADE{\NAMEREF{set}
           ( \cdots )}$$ is not a constructor operation. The order and duplicates
  of argument values are ignored (e.g., $$\SHADE{\{ 1,  
            2,  
            1 \}}$$ denotes the same set as $$\SHADE{\{ 1,  
            2 \}}$$ 
  and $$\SHADE{\{ 2,  
            1 \}}$$).


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-elements}(\_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO ( \VAR{GT} )\STAR
\end{aligned}$$


  For each set $$\SHADE{\VAR{S}}$$, the sequence of values $$\SHADE{\VAR{V}\STAR}$$ returned by $$\SHADE{\NAMEREF{set-elements}
           ( \VAR{S} )}$$
  contains each element of $$\SHADE{\VAR{S}}$$ just once. The order of the values in $$\SHADE{\VAR{V}\STAR}$$ is
  unspecified, and may vary between sets (e.g., $$\SHADE{\NAMEREF{set-elements} ~
           \{ 1,   
              2 \}}$$ could be
  $$\SHADE{( 1,  
           2 )}$$ and $$\SHADE{\NAMEREF{set-elements} ~
           \{ 1,   
              2,   
              3 \}}$$ could be $$\SHADE{( 3,  
           2,  
           1 )}$$). 


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{set}
      ( \NAMEREF{set-elements}
          ( \VAR{S} ) ) == 
      \VAR{S}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{is-in-set}(\_ : \VAR{GT}, \_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{is-in-set}
           ( \VAR{GV},   
             \VAR{S} )}$$ tests whether $$\SHADE{\VAR{GV}}$$ is in the set $$\SHADE{\VAR{S}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{is-in-set}
      ( \VAR{GV} : \VAR{GT},   
        \{  ~  \} ) == 
      \NAMEHYPER{../../Primitive}{Booleans}{false}
\\
  \KEY{Assert} ~ 
  & \NAMEREF{is-in-set}
      ( \VAR{GV} : \VAR{GT},   
        \{ \VAR{GV} \} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{is-subset}(\_ : \NAMEREF{sets}
                                ( \VAR{GT} ), \_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{is-subset}
           ( \VAR{S}\SUB{1},   
             \VAR{S}\SUB{2} )}$$ tests whether $$\SHADE{\VAR{S}\SUB{1}}$$ is a subset of $$\SHADE{\VAR{S}\SUB{2}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{is-subset}
      ( \{  ~  \},   
        \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEHYPER{../../Primitive}{Booleans}{true}
\\
  \KEY{Assert} ~ 
  & \NAMEREF{is-subset}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S} ) == 
      \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-insert}(\_ : \VAR{GT}, \_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \NAMEREF{sets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{set-insert}
           ( \VAR{GV},   
             \VAR{S} )}$$ returns the set union of $$\SHADE{\{ \VAR{GV} \}}$$ and $$\SHADE{\VAR{S}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{is-in-set}
      ( \VAR{GV} : \VAR{GT},   
        \NAMEREF{set-insert}
          ( \VAR{GV} : \VAR{GT},    
            \VAR{S} : \NAMEREF{sets}
                        ( \VAR{GT} ) ) ) == 
      \NAMEHYPER{../../Primitive}{Booleans}{true}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-unite}(\_ : ( \NAMEREF{sets}
                                  ( \VAR{GT} ) )\STAR) :  \TO \NAMEREF{sets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{set-unite}
           ( \cdots )}$$ unites a sequence of sets.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S} ) == 
      \VAR{S}
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{2} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEREF{set-unite}
        ( \VAR{S}\SUB{2},   
          \VAR{S}\SUB{1} )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \NAMEREF{set-unite}
          ( \VAR{S}\SUB{2} : \NAMEREF{sets}
                        ( \VAR{GT} ),    
            \VAR{S}\SUB{3} : \NAMEREF{sets}
                        ( \VAR{GT} ) ) ) == 
      \NAMEREF{set-unite}
        ( \NAMEREF{set-unite}
            ( \VAR{S}\SUB{1},    
              \VAR{S}\SUB{2} ),   
          \VAR{S}\SUB{3} )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{2} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{3} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEREF{set-unite}
        ( \VAR{S}\SUB{1},   
          \NAMEREF{set-unite}
            ( \VAR{S}\SUB{2},    
              \VAR{S}\SUB{3} ) )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \VAR{S}
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-unite}
      (  ~  ) == 
      \{  ~  \}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-intersect}(\_ : ( \NAMEREF{sets}
                                  ( \VAR{GT} ) )\PLUS) :  \TO \NAMEREF{sets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{set-intersect}
           ( \VAR{GT},   
             \cdots )}$$ intersects a non-empty sequence of sets.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{set-intersect}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S} ) == 
      \VAR{S}
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-intersect}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{2} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEREF{set-intersect}
        ( \VAR{S}\SUB{2},   
          \VAR{S}\SUB{1} )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-intersect}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \NAMEREF{set-intersect}
          ( \VAR{S}\SUB{2} : \NAMEREF{sets}
                        ( \VAR{GT} ),    
            \VAR{S}\SUB{3} : \NAMEREF{sets}
                        ( \VAR{GT} ) ) ) == 
      \NAMEREF{set-intersect}
        ( \NAMEREF{set-intersect}
            ( \VAR{S}\SUB{1},    
              \VAR{S}\SUB{2} ),   
          \VAR{S}\SUB{3} )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-intersect}
      ( \VAR{S}\SUB{1} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{2} : \NAMEREF{sets}
                    ( \VAR{GT} ),   
        \VAR{S}\SUB{3} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEREF{set-intersect}
        ( \VAR{S}\SUB{1},   
          \NAMEREF{set-intersect}
            ( \VAR{S}\SUB{2},    
              \VAR{S}\SUB{3} ) )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{set-intersect}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \VAR{S}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-difference}(\_ : \NAMEREF{sets}
                                ( \VAR{GT} ), \_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \NAMEREF{sets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{set-difference}
           ( \VAR{S}\SUB{1},   
             \VAR{S}\SUB{2} )}$$ returns the set containing those elements of $$\SHADE{\VAR{S}\SUB{1}}$$
  that are not in $$\SHADE{\VAR{S}\SUB{2}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{set-size}(\_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{set-size}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEHYPER{../.}{Sequences}{length}
        ( \NAMEREF{set-elements}
            ( \VAR{S} ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{some-element}(\_ : \NAMEREF{sets}
                                ( \VAR{GT} )) :  \TO \VAR{GT}\QUERY
\\
  \KEY{Assert} ~ 
  & \NAMEREF{some-element}
      ( \VAR{S} : \NAMEREF{sets}
                    ( \VAR{GT} ) ) == 
      \NAMEHYPER{../.}{Sequences}{index}
        ( 1,   
          \NAMEREF{set-elements}
            ( \VAR{S} ) )
\\
  \KEY{Assert} ~ 
  & \NAMEREF{some-element} ~
      \{  ~  \} == 
      (  ~  )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{element-not-in}(\VAR{GT} : \NAMEHYPER{../..}{Value-Types}{types}, \_ : \NAMEREF{set}
                                ( \VAR{GT} )) :  \TO \VAR{GT}\QUERY
\end{aligned}$$


  $$\SHADE{\NAMEREF{element-not-in}
           ( \VAR{GT},   
             \VAR{S} )}$$ gives an element of the type $$\SHADE{\VAR{GT}}$$ not in the set 
  $$\SHADE{\VAR{S}}$$, or $$\SHADE{(  ~  )}$$ when $$\SHADE{\VAR{S}}$$ is empty. When the set of elements of $$\SHADE{\VAR{GT}}$$ is infinite,
  $$\SHADE{\NAMEREF{element-not-in}
           ( \VAR{GT},   
             \VAR{S} )}$$ never gives $$\SHADE{(  ~  )}$$.




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
