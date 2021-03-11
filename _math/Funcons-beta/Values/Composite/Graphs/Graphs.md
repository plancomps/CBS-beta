### Graphs
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{directed-graphs} \\
  \KEY{Funcon} ~ & \NAMEREF{is-cyclic} \\
  \KEY{Funcon} ~ & \NAMEREF{topological-sort}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{directed-graphs}(\VAR{GT} )  
  \leadsto \NAMEHYPER{../.}{Maps}{maps}
             ( \VAR{GT},      
               \NAMEHYPER{../.}{Sets}{sets}
                 ( \VAR{GT} ) )
\end{aligned}$$


  $$\SHADE{\NAMEREF{directed-graphs}
           ( \VAR{GT} )}$$ models directed graphs with vertices of type $$\SHADE{\VAR{GT}}$$,
  represented as maps from vertices to the set of vertices to which the
  vertex has an edge.  E.g., the graph

    (1)--->(2)

  would be represented as $$\SHADE{\{ 1 \mapsto 
              \{ 2 \}, 2 \mapsto 
              \{  ~  \} \}}$$  


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{is-cyclic}(\_ : \NAMEREF{directed-graphs}
                                ( \VAR{GT} )) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{topological-sort}(\_ : \NAMEREF{directed-graphs}
                                ( \VAR{GT} )) :  \TO ( \VAR{GT} )\STAR
\end{aligned}$$


  $$\SHADE{\NAMEREF{topological-sort}
           ( \VAR{DG} )}$$ returns a topological ordering of the vertices
  of the graph $$\SHADE{\VAR{DG}}$$, as a sequence of vertices, provided that $$\SHADE{\VAR{DG}}$$ is not
  cyclic.




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
