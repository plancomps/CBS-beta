---
layout: default
title: "Maps"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Maps.cbs]

### Maps
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{maps} \\
  \KEY{Funcon} ~ & \NAMEREF{map} \\
  \KEY{Funcon} ~ & \NAMEREF{map-elements} \\
  \KEY{Funcon} ~ & \NAMEREF{map-lookup} \\
  \KEY{Alias} ~ & \NAMEREF{lookup} \\
  \KEY{Funcon} ~ & \NAMEREF{map-domain} \\
  \KEY{Alias} ~ & \NAMEREF{dom} \\
  \KEY{Funcon} ~ & \NAMEREF{map-override} \\
  \KEY{Funcon} ~ & \NAMEREF{map-unite} \\
  \KEY{Funcon} ~ & \NAMEREF{map-delete}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values} \VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{values}\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{maps}(\VAR{GT} , \VAR{T}\QUERY )  
  
\end{aligned}$$


  $$\SHADE{\NAMEREF{maps}
           ( \VAR{GT},   
             \VAR{T}\QUERY )}$$ is the type of possibly-empty finite maps from values of 
  type $$\SHADE{\VAR{GT}}$$ to optional values of type $$\SHADE{\VAR{T}\QUERY}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map}(\_ : ( \NAMEHYPER{../.}{Tuples}{tuples}
                                  ( \VAR{GT},   
                                    \VAR{T}\QUERY ) )\STAR) :  \TO ( \NAMEREF{maps}
                                                                           ( \VAR{GT},   
                                                                             \VAR{T}\QUERY ) )\QUERY
\end{aligned}$$

 
  $$\SHADE{\NAMEREF{map}
           ( \NAMEHYPER{../.}{Tuples}{tuple}
               ( \VAR{K}\SUB{1},    
                 \VAR{V}\SUB{1}\QUERY ),   
             \cdots,   
             \NAMEHYPER{../.}{Tuples}{tuple}
               ( \VAR{Kn},    
                 \VAR{Vn}\QUERY ) )}$$ constructs a map from 
  $$\SHADE{\VAR{K}\SUB{1}}$$ to $$\SHADE{\VAR{V}\SUB{1}\QUERY}$$, ..., $$\SHADE{\VAR{Kn}}$$ to $$\SHADE{\VAR{Vn}\QUERY}$$, provided that $$\SHADE{\VAR{K}\SUB{1}}$$, ..., $$\SHADE{\VAR{Kn}}$$
  are distinct, otherwise the result is $$\SHADE{(  ~  )}$$.
  
  Note that $$\SHADE{\NAMEREF{map}
           ( \cdots )}$$ is not a constructor operation.
  
  The built-in notation $$\SHADE{\{ \VAR{K}\SUB{1} \mapsto 
              \VAR{V}\SUB{1}\QUERY, \cdots, \VAR{Kn} \mapsto 
              \VAR{Vn}\QUERY \}}$$ is equivalent to 
  $$\SHADE{\NAMEREF{map}
           ( \NAMEHYPER{../.}{Tuples}{tuple}
               ( \VAR{K}\SUB{1},    
                 \VAR{V}\SUB{1}\QUERY ),   
             \cdots,   
             \NAMEHYPER{../.}{Tuples}{tuple}
               ( \VAR{Kn},    
                 \VAR{Vn}\QUERY ) )}$$. Note however that in general, 
  maps cannot be identified with sets of tuples, since the values $$\SHADE{\VAR{Vi}\QUERY}$$ are 
  not restricted to $$\SHADE{\NAMEHYPER{../..}{Value-Types}{ground-values}}$$.
  
  When $$\SHADE{\VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{types}}$$, $$\SHADE{\NAMEREF{maps}
           ( \VAR{GT},   
             \VAR{T}\QUERY ) <: \NAMEHYPER{../..}{Value-Types}{types}}$$. The type $$\SHADE{\VAR{MT} : \NAMEREF{maps}
                     ( \VAR{GT},   
                       \VAR{T}\QUERY )}$$
  represents the set of value-maps $$\SHADE{\VAR{MV} : \NAMEREF{maps}
                     ( \VAR{GT},   
                       \NAMEHYPER{../..}{Value-Types}{values}\QUERY )}$$ such that 
  $$\SHADE{\NAMEREF{dom}
           ( \VAR{MV} )}$$ is a subset of $$\SHADE{\NAMEREF{dom}
           ( \VAR{MT} )}$$ and for all $$\SHADE{\VAR{K}}$$ in $$\SHADE{\NAMEREF{dom}
           ( \VAR{MV} )}$$, 
  $$\SHADE{ \NAMEREF{map-lookup}
                       ( \VAR{MV},   
                         \VAR{K} ) : \NAMEREF{map-lookup}
                                 ( \VAR{MT},   
                                   \VAR{K} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-elements}(\_ : \NAMEREF{maps}
                                ( \VAR{GT},   
                                  \VAR{T}\QUERY )) :  \TO ( \NAMEHYPER{../.}{Tuples}{tuples}
                                                                           ( \VAR{GT},   
                                                                             \VAR{T}\QUERY ) )\STAR
\end{aligned}$$


  The sequence of tuples $$\SHADE{( \NAMEHYPER{../.}{Tuples}{tuple}
             ( \VAR{K}\SUB{1},   
               \VAR{V}\SUB{1}\QUERY ),  
           \cdots,  
           \NAMEHYPER{../.}{Tuples}{tuple}
             ( \VAR{Kn},   
               \VAR{Vn}\QUERY ) )}$$ given by
  $$\SHADE{\NAMEREF{map-elements}
           ( \VAR{M} )}$$ contains each mapped value $$\SHADE{\VAR{Ki}}$$ just once. The order of
  the elements is unspecified, and may vary between maps.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{map}
      ( \NAMEREF{map-elements}
          ( \VAR{M} ) ) == 
      \VAR{M}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-lookup}(\_ : \NAMEREF{maps}
                                ( \VAR{GT},   
                                  \VAR{T}\QUERY ), \VAR{K} : \VAR{GT}) :  \TO ( \VAR{T}\QUERY )\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{lookup} = \NAMEREF{map-lookup}
\end{aligned}$$


  $$\SHADE{\NAMEREF{map-lookup}
           ( \VAR{M},   
             \VAR{K} )}$$ gives the optional value to which $$\SHADE{\VAR{K}}$$ is mapped by $$\SHADE{\VAR{M}}$$,
  if any, and otherwise $$\SHADE{(  ~  )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-domain}(\_ : \NAMEREF{maps}
                                ( \VAR{GT},   
                                  \VAR{T}\QUERY )) :  \TO \NAMEHYPER{../.}{Sets}{sets}
                                                                         ( \VAR{GT} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{dom} = \NAMEREF{map-domain}
\end{aligned}$$


  $$\SHADE{\NAMEREF{map-domain}
           ( \VAR{M} )}$$ gives the set of values mapped by $$\SHADE{\VAR{M}}$$.
  
  $$\SHADE{\NAMEREF{map-lookup}
           ( \VAR{M},   
             \VAR{K} )}$$ is always $$\SHADE{(  ~  )}$$ when $$\SHADE{\VAR{K}}$$ is not in $$\SHADE{\NAMEREF{map-domain}
           ( \VAR{M} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-override}(\_ : ( \NAMEREF{maps}
                                  ( \VAR{GT},   
                                    \VAR{T}\QUERY ) )\STAR) :  \TO \NAMEREF{maps}
                                                                         ( \VAR{GT},   
                                                                           \VAR{T}\QUERY )
\end{aligned}$$


  $$\SHADE{\NAMEREF{map-override}
           ( \cdots )}$$ takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the first map in the sequence in whose domain 
  it occurs
  . 
  When the domains of the $$\SHADE{\VAR{M}\STAR}$$ are disjoint, $$\SHADE{\NAMEREF{map-override}
           ( \VAR{M}\STAR )}$$ is equivalent
  to $$\SHADE{\NAMEREF{map-unite}
           ( \VAR{M}\STAR )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-unite}(\_ : ( \NAMEREF{maps}
                                  ( \VAR{GT},   
                                    \VAR{T}\QUERY ) )\STAR) :  \TO ( \NAMEREF{maps}
                                                                           ( \VAR{GT},   
                                                                             \VAR{T}\QUERY ) )\QUERY
\end{aligned}$$


  $$\SHADE{\NAMEREF{map-unite}
           ( \cdots )}$$ takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the map in the sequence in whose domain it occurs,
  provided that those domains are disjoint - otherwise the result is $$\SHADE{(  ~  )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{map-delete}(\_ : \NAMEREF{maps}
                                ( \VAR{GT},   
                                  \VAR{T}\QUERY ), \_ : \NAMEHYPER{../.}{Sets}{sets}
                                ( \VAR{GT} )) :  \TO \NAMEREF{maps}
                                                                         ( \VAR{GT},   
                                                                           \VAR{T}\QUERY )
\end{aligned}$$


  $$\SHADE{\NAMEREF{map-delete}
           ( \VAR{M},   
             \VAR{S} )}$$ takes a map $$\SHADE{\VAR{M}}$$ and a set of values $$\SHADE{\VAR{S}}$$, and returns the
  map obtained from $$\SHADE{\VAR{M}}$$ by removing $$\SHADE{\VAR{S}}$$ from its domain. 


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{map-domain}
      ( \NAMEREF{map-delete}
          ( \VAR{M},    
            \VAR{S} ) ) == 
      \NAMEHYPER{../.}{Sets}{set-difference}
        ( \NAMEREF{map-domain}
            ( \VAR{M} ),   
          \VAR{S} )
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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Maps.cbs]: /CBS-beta/Funcons-beta/Values/Composite/Maps/Maps.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Maps/Maps.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
