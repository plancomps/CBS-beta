---
title: "Multisets"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Multisets.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Multisets (bags)
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{multisets} \\
  \KEY{Funcon} \quad & \NAMEREF{multiset} \\
  \KEY{Funcon} \quad & \NAMEREF{multiset-elements} \\
  \KEY{Funcon} \quad & \NAMEREF{multiset-occurrences} \\
  \KEY{Funcon} \quad & \NAMEREF{multiset-insert} \\
  \KEY{Funcon} \quad & \NAMEREF{multiset-delete} \\
  \KEY{Funcon} \quad & \NAMEREF{is-submultiset}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{GT} <: \NAMEHYPER{../..}{Value-Types}{ground-values}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{multisets}(
                       \VAR{GT} )  
\end{align*}$$


  $$\SHADE{\NAMEREF{multisets}
           (  \VAR{GT} )}$$ is the type of possibly-empty finite multisets of elements
  of $$\SHADE{\VAR{GT}}$$. 


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{multiset}(
                       \_ : (  \VAR{GT} )\STAR) 
    :  \TO \NAMEREF{multisets}
                     (  \VAR{GT} ) 
\end{align*}$$


  Note that $$\SHADE{\NAMEREF{multiset}
           (  \cdots )}$$ is not a constructor operation. The order of
  argument values is ignored, but duplicates are significant, e.g., 
  $$\SHADE{\NAMEREF{multiset}
           (  1, 
                  2, 
                  2 )}$$ is equivalent to $$\SHADE{\NAMEREF{multiset}
           (  2, 
                  1, 
                  2 )}$$, but not to
  $$\SHADE{\NAMEREF{multiset}
           (  1, 
                  2 )}$$ or $$\SHADE{\NAMEREF{multiset}
           (  2, 
                  1 )}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{multiset-elements}(
                       \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} )) 
    :  \TO (  \VAR{GT} )\STAR 
\end{align*}$$


  For each multiset $$\SHADE{\VAR{MS}}$$, the sequence of values $$\SHADE{\VAR{V}\STAR}$$ returned by 
  $$\SHADE{\NAMEREF{multiset-elements}
           (  \VAR{MS} )}$$ contains each element of $$\SHADE{\VAR{MS}}$$ the same number of times
  as $$\SHADE{\VAR{MS}}$$ does.
  The order of the values in $$\SHADE{\VAR{V}\STAR}$$ is unspecified, and may vary between multisets.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{multiset}
      (  \NAMEREF{multiset-elements}
              (  \VAR{S} ) ) 
    == \VAR{S}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{multiset-occurrences}(
                       \_ : \VAR{GT}, \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers} 
\end{align*}$$


  $$\SHADE{\NAMEREF{multiset-occurrences}
           (  \VAR{GV}, 
                  \VAR{MS} )}$$ returns the number of occurrences of $$\SHADE{\VAR{GV}}$$
  in $$\SHADE{\VAR{MS}}$$. 


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{multiset-insert}(
                       \_ : \VAR{GT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEREF{multisets}
                     (  \VAR{GT} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{multiset-insert}
           (  \VAR{GV}, 
                  \VAR{N}, 
                  \VAR{MS} )}$$ returns the multiset that differs from $$\SHADE{\VAR{MS}}$$ 
  by containing $$\SHADE{\VAR{N}}$$ more copies of $$\SHADE{\VAR{GV}}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{multiset-delete}(
                       \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} ), \_ : \VAR{GT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) 
    :  \TO \NAMEREF{multisets}
                     (  \VAR{GT} ) 
\end{align*}$$


 $$\SHADE{\NAMEREF{multiset-delete}
           (  \VAR{MS}, 
                  \VAR{GV}, 
                  \VAR{N} )}$$ removes $$\SHADE{\VAR{N}}$$ copies of $$\SHADE{\VAR{V}}$$ from the multiset $$\SHADE{\VAR{MS}}$$,
 or all copies of $$\SHADE{\VAR{GV}}$$ if there are fewer than $$\SHADE{\VAR{N}}$$ in $$\SHADE{\VAR{MS}}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{is-submultiset}(
                       \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} ), \_ : \NAMEREF{multisets}
                                 (  \VAR{GT} )) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} 
\end{align*}$$


  $$\SHADE{\NAMEREF{is-submultiset}
           (  \VAR{MS}\SUB{1}, 
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
[Multisets.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Multisets/Multisets.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Multisets
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Multisets
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Multisets/Multisets.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Multisets/Multisets.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
