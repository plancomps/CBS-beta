---
title: "Maps"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Maps.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{maps} \\
  \KEY{Funcon} \quad & \NAMEREF{map} \\
  \KEY{Funcon} \quad & \NAMEREF{map-elements} \\
  \KEY{Funcon} \quad & \NAMEREF{map-lookup} \\
  \KEY{Alias} \quad & \NAMEREF{lookup} \\
  \KEY{Funcon} \quad & \NAMEREF{map-domain} \\
  \KEY{Alias} \quad & \NAMEREF{dom} \\
  \KEY{Funcon} \quad & \NAMEREF{map-override} \\
  \KEY{Funcon} \quad & \NAMEREF{map-unite} \\
  \KEY{Funcon} \quad & \NAMEREF{map-delete}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values} \qquad \\& \VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{values}\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{maps}(
                       \VAR{GT} , \VAR{T}\QUERY )  
\end{align*}$$


  $$\SHADE{\NAMEREF{maps}
           (  \VAR{GT}, 
                  \VAR{T}\QUERY )}$$ is the type of possibly-empty finite maps from values of 
  type $$\SHADE{\VAR{GT}}$$ to optional values of type $$\SHADE{\VAR{T}\QUERY}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map}(
                       \_ : (  \NAMEHYPER{../.}{Tuples}{tuples}
                                       (  \VAR{GT}, 
                                              \VAR{T}\QUERY ) )\STAR) 
    :  \TO (  \NAMEREF{maps}
                           (  \VAR{GT}, 
                                  \VAR{T}\QUERY ) )\QUERY 
\end{align*}$$

 
  $$\SHADE{\NAMEREF{map}
           (  \NAMEHYPER{../.}{Tuples}{tuple}
                   (  \VAR{K}\SUB{1}, 
                          \VAR{V}\SUB{1}\QUERY ), 
                  \cdots, 
                  \NAMEHYPER{../.}{Tuples}{tuple}
                   (  \VAR{K}\SUB{n}, 
                          \VAR{V}\SUB{n}\QUERY ) )}$$ constructs a map from 
  $$\SHADE{\VAR{K}\SUB{1}}$$ to $$\SHADE{\VAR{V}\SUB{1}\QUERY}$$, ..., $$\SHADE{\VAR{K}\SUB{n}}$$ to $$\SHADE{\VAR{V}\SUB{n}\QUERY}$$, provided that $$\SHADE{\VAR{K}\SUB{1}}$$, ..., $$\SHADE{\VAR{K}\SUB{n}}$$
  are distinct, otherwise the result is $$\SHADE{(   \  )}$$.
  
  Note that $$\SHADE{\NAMEREF{map}
           (  \cdots )}$$ is not a constructor operation.
  
  The built-in notation $$\SHADE{\{ \VAR{K}\SUB{1} \mapsto 
              \VAR{V}\SUB{1}\QUERY, 
            \cdots, 
            \VAR{K}\SUB{n} \mapsto 
              \VAR{V}\SUB{n}\QUERY \}}$$ is equivalent to 
  $$\SHADE{\NAMEREF{map}
           (  \NAMEHYPER{../.}{Tuples}{tuple}
                   (  \VAR{K}\SUB{1}, 
                          \VAR{V}\SUB{1}\QUERY ), 
                  \cdots, 
                  \NAMEHYPER{../.}{Tuples}{tuple}
                   (  \VAR{K}\SUB{n}, 
                          \VAR{V}\SUB{n}\QUERY ) )}$$. Note however that in general, 
  maps cannot be identified with sets of tuples, since the values $$\SHADE{\VAR{V}\SUB{i}\QUERY}$$ are 
  not restricted to $$\SHADE{\NAMEHYPER{../..}{Value-Types}{ground-values}}$$.
  
  When $$\SHADE{\VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{types}}$$, $$\SHADE{\NAMEREF{maps}
           (  \VAR{GT}, 
                  \VAR{T}\QUERY ) <: \NAMEHYPER{../..}{Value-Types}{types}}$$. The type $$\SHADE{\VAR{MT} : \NAMEREF{maps}
                     (  \VAR{GT}, 
                            \VAR{T}\QUERY )}$$
  represents the set of value-maps $$\SHADE{\VAR{MV} : \NAMEREF{maps}
                     (  \VAR{GT}, 
                            \NAMEHYPER{../..}{Value-Types}{values}\QUERY )}$$ such that 
  $$\SHADE{\NAMEREF{dom}
           (  \VAR{MV} )}$$ is a subset of $$\SHADE{\NAMEREF{dom}
           (  \VAR{MT} )}$$ and for all $$\SHADE{\VAR{K}}$$ in $$\SHADE{\NAMEREF{dom}
           (  \VAR{MV} )}$$, 
  $$\SHADE{ \NAMEREF{map-lookup}
                       (  \VAR{MV}, 
                              \VAR{K} ) : \NAMEREF{map-lookup}
                                 (  \VAR{MT}, 
                                        \VAR{K} )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-elements}(
                       \_ : \NAMEREF{maps}
                                 (  \VAR{GT}, 
                                        \VAR{T}\QUERY )) 
    :  \TO (  \NAMEHYPER{../.}{Tuples}{tuples}
                           (  \VAR{GT}, 
                                  \VAR{T}\QUERY ) )\STAR 
\end{align*}$$


  The sequence of tuples $$\SHADE{(  \NAMEHYPER{../.}{Tuples}{tuple}
                 (  \VAR{K}\SUB{1}, 
                        \VAR{V}\SUB{1}\QUERY ), 
                \cdots, 
                \NAMEHYPER{../.}{Tuples}{tuple}
                 (  \VAR{K}\SUB{n}, 
                        \VAR{V}\SUB{n}\QUERY ) )}$$ given by
  $$\SHADE{\NAMEREF{map-elements}
           (  \VAR{M} )}$$ contains each mapped value $$\SHADE{\VAR{K}\SUB{i}}$$ just once. The order of
  the elements is unspecified, and may vary between maps.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{map}
      (  \NAMEREF{map-elements}
              (  \VAR{M} ) ) 
    == \VAR{M}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-lookup}(
                       \_ : \NAMEREF{maps}
                                 (  \VAR{GT}, 
                                        \VAR{T}\QUERY ), \VAR{K} : \VAR{GT}) 
    :  \TO (  \VAR{T}\QUERY )\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{lookup} = \NAMEREF{map-lookup}
\end{align*}$$


  $$\SHADE{\NAMEREF{map-lookup}
           (  \VAR{M}, 
                  \VAR{K} )}$$ gives the optional value to which $$\SHADE{\VAR{K}}$$ is mapped by $$\SHADE{\VAR{M}}$$,
  if any, and otherwise $$\SHADE{(   \  )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-domain}(
                       \_ : \NAMEREF{maps}
                                 (  \VAR{GT}, 
                                        \VAR{T}\QUERY )) 
    :  \TO \NAMEHYPER{../.}{Sets}{sets}
                     (  \VAR{GT} ) 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{dom} = \NAMEREF{map-domain}
\end{align*}$$


  $$\SHADE{\NAMEREF{map-domain}
           (  \VAR{M} )}$$ gives the set of values mapped by $$\SHADE{\VAR{M}}$$.
  
  $$\SHADE{\NAMEREF{map-lookup}
           (  \VAR{M}, 
                  \VAR{K} )}$$ is always $$\SHADE{(   \  )}$$ when $$\SHADE{\VAR{K}}$$ is not in $$\SHADE{\NAMEREF{map-domain}
           (  \VAR{M} )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-override}(
                       \_ : (  \NAMEREF{maps}
                                       (  \VAR{GT}, 
                                              \VAR{T}\QUERY ) )\STAR) 
    :  \TO \NAMEREF{maps}
                     (  \VAR{GT}, 
                            \VAR{T}\QUERY ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{map-override}
           (  \cdots )}$$ takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the first map in the sequence in whose domain 
  it occurs
  . 
  When the domains of the $$\SHADE{\VAR{M}\STAR}$$ are disjoint, $$\SHADE{\NAMEREF{map-override}
           (  \VAR{M}\STAR )}$$ is equivalent
  to $$\SHADE{\NAMEREF{map-unite}
           (  \VAR{M}\STAR )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-unite}(
                       \_ : (  \NAMEREF{maps}
                                       (  \VAR{GT}, 
                                              \VAR{T}\QUERY ) )\STAR) 
    :  \TO (  \NAMEREF{maps}
                           (  \VAR{GT}, 
                                  \VAR{T}\QUERY ) )\QUERY 
\end{align*}$$


  $$\SHADE{\NAMEREF{map-unite}
           (  \cdots )}$$ takes a sequence of maps. It returns the map whose
  domain is the union of their domains, and which maps each of those values
  to the same optional value as the map in the sequence in whose domain it occurs,
  provided that those domains are disjoint - otherwise the result is $$\SHADE{(   \  )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{map-delete}(
                       \_ : \NAMEREF{maps}
                                 (  \VAR{GT}, 
                                        \VAR{T}\QUERY ), \_ : \NAMEHYPER{../.}{Sets}{sets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEREF{maps}
                     (  \VAR{GT}, 
                            \VAR{T}\QUERY ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{map-delete}
           (  \VAR{M}, 
                  \VAR{S} )}$$ takes a map $$\SHADE{\VAR{M}}$$ and a set of values $$\SHADE{\VAR{S}}$$, and returns the
  map obtained from $$\SHADE{\VAR{M}}$$ by removing $$\SHADE{\VAR{S}}$$ from its domain. 


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{map-domain}
      (  \NAMEREF{map-delete}
              (  \VAR{M}, 
                     \VAR{S} ) ) 
    == \NAMEHYPER{../.}{Sets}{set-difference}
         (  \NAMEREF{map-domain}
                 (  \VAR{M} ), 
                \VAR{S} )
\end{align*}$$



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
[Maps.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Maps/Maps.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Maps
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Maps
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Maps/Maps.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Maps/Maps.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
