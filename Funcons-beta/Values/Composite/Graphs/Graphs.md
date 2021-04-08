{::comment}{% raw %}{:/}


----

### Graphs
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{directed-graphs} \\
  \KEY{Funcon} \quad & \NAMEREF{is-cyclic} \\
  \KEY{Funcon} \quad & \NAMEREF{topological-sort}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{directed-graphs}(
                       \VAR{GT} )  
    \leadsto \NAMEHYPER{../.}{Maps}{maps}
               (  \VAR{GT}, 
                      \NAMEHYPER{../.}{Sets}{sets}
                       (  \VAR{GT} ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{directed-graphs}
           (  \VAR{GT} )}$$ models directed graphs with vertices of type $$\SHADE{\VAR{GT}}$$,
  represented as maps from vertices to the set of vertices to which the
  vertex has an edge.  E.g., the graph

    (1)--->(2)

  would be represented as $$\SHADE{\{ 1 \mapsto 
              \{  2 \}, 
            2 \mapsto 
              \{   \  \} \}}$$  


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{is-cyclic}(
                       \_ : \NAMEREF{directed-graphs}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} 
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{topological-sort}(
                       \_ : \NAMEREF{directed-graphs}
                                 (  \VAR{GT} )) 
    :  \TO (  \VAR{GT} )\STAR 
\end{align*}$$


  $$\SHADE{\NAMEREF{topological-sort}
           (  \VAR{DG} )}$$ returns a topological ordering of the vertices
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
[Graphs.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Graphs/Graphs.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Graphs
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Graphs
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Graphs/Graphs.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
