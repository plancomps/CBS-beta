### Multisets (bags)
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{multisets} \\
  \KEY{Funcon} ~ & \NAMEREF{multiset} \\
  \KEY{Funcon} ~ & \NAMEREF{multiset-elements} \\
  \KEY{Funcon} ~ & \NAMEREF{multiset-occurrences} \\
  \KEY{Funcon} ~ & \NAMEREF{multiset-insert} \\
  \KEY{Funcon} ~ & \NAMEREF{multiset-delete} \\
  \KEY{Funcon} ~ & \NAMEREF{is-submultiset}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{multisets}(\VAR{GT} )  
  
\end{aligned}$$


  $$\SHADE{\NAMEREF{multisets}
           ( \VAR{GT} )}$$ is the type of possibly-empty finite multisets of elements
  of $$\SHADE{\VAR{GT}}$$. 


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{multiset}(\_ : ( \VAR{GT} )\STAR) :  \TO \NAMEREF{multisets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  Note that $$\SHADE{\NAMEREF{multiset}
           ( \cdots )}$$ is not a constructor operation. The order of
  argument values is ignored, but duplicates are significant, e.g., 
  $$\SHADE{\NAMEREF{multiset}
           ( 1,   
             2,   
             2 )}$$ is equivalent to $$\SHADE{\NAMEREF{multiset}
           ( 2,   
             1,   
             2 )}$$, but not to
  $$\SHADE{\NAMEREF{multiset}
           ( 1,   
             2 )}$$ or $$\SHADE{\NAMEREF{multiset}
           ( 2,   
             1 )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{multiset-elements}(\_ : \NAMEREF{multisets}
                                ( \VAR{GT} )) :  \TO ( \VAR{GT} )\STAR
\end{aligned}$$


  For each multiset $$\SHADE{\VAR{MS}}$$, the sequence of values $$\SHADE{\VAR{V}\STAR}$$ returned by 
  $$\SHADE{\NAMEREF{multiset-elements}
           ( \VAR{MS} )}$$ contains each element of $$\SHADE{\VAR{MS}}$$ the same number of times
  as $$\SHADE{\VAR{MS}}$$ does.
  The order of the values in $$\SHADE{\VAR{V}\STAR}$$ is unspecified, and may vary between multisets.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{multiset}
      ( \NAMEREF{multiset-elements}
          ( \VAR{S} ) ) == 
      \VAR{S}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{multiset-occurrences}(\_ : \VAR{GT}, \_ : \NAMEREF{multisets}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{multiset-occurrences}
           ( \VAR{GV},   
             \VAR{MS} )}$$ returns the number of occurrences of $$\SHADE{\VAR{GV}}$$
  in $$\SHADE{\VAR{MS}}$$. 


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{multiset-insert}(\_ : \VAR{GT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \_ : \NAMEREF{multisets}
                                ( \VAR{GT} )) :  \TO \NAMEREF{multisets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{multiset-insert}
           ( \VAR{GV},   
             \VAR{N},   
             \VAR{MS} )}$$ returns the multiset that differs from $$\SHADE{\VAR{MS}}$$ 
  by containing $$\SHADE{\VAR{N}}$$ more copies of $$\SHADE{\VAR{GV}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{multiset-delete}(\_ : \NAMEREF{multisets}
                                ( \VAR{GT} ), \_ : \VAR{GT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEREF{multisets}
                                                                         ( \VAR{GT} )
\end{aligned}$$


 $$\SHADE{\NAMEREF{multiset-delete}
           ( \VAR{MS},   
             \VAR{GV},   
             \VAR{N} )}$$ removes $$\SHADE{\VAR{N}}$$ copies of $$\SHADE{\VAR{V}}$$ from the multiset $$\SHADE{\VAR{MS}}$$,
 or all copies of $$\SHADE{\VAR{GV}}$$ if there are fewer than $$\SHADE{\VAR{N}}$$ in $$\SHADE{\VAR{MS}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{is-submultiset}(\_ : \NAMEREF{multisets}
                                ( \VAR{GT} ), \_ : \NAMEREF{multisets}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{is-submultiset}
           ( \VAR{MS}\SUB{1},   
             \VAR{MS}\SUB{2} )}$$ tests whether every element of $$\SHADE{\VAR{MS}\SUB{1}}$$ has equal or
  fewer occurrences in $$\SHADE{\VAR{MS}\SUB{1}}$$ than in $$\SHADE{\VAR{MS}\SUB{2}}$$. 




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
