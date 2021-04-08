{::comment}{% raw %}{:/}


----

## Computation Types
               


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{computation-types} 
    : \NAMEHYPER{../../Values}{Value-Types}{types} 
\end{align*}$$


  For any value type $$\SHADE{\VAR{T}}$$, the term $$\SHADE{ \TO \VAR{T}}$$ is the type of computations that
  compute values of type $$\SHADE{\VAR{T}}$$ whenever they terminate normally.
  
  For any subtypes $$\SHADE{\VAR{S}}$$, $$\SHADE{\VAR{T}}$$ of $$\SHADE{\NAMEHYPER{../../Values}{Value-Types}{values}}$$, $$\SHADE{\VAR{S} \TO \VAR{T}}$$ is the type of computations
  that compute values of type $$\SHADE{\VAR{T}}$$ whenever they terminate normally, and
  either do not refer at all to the $$\SHADE{\NAMEHYPER{../Normal}{Giving}{given}}$$ entity, or require the $$\SHADE{\NAMEHYPER{../Normal}{Giving}{given}}$$
  entity to have type $$\SHADE{\VAR{S}}$$.




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
[Computation-Types.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Computation-Types/Computation-Types.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Computation-Types
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Computation-Types
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Computation-Types/Computation-Types.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
