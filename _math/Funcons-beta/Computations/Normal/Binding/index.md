---
title: "Binding"
math: katex
parent: Normal
ancestor: Funcons-beta

---
[Funcons-beta] : [Binding.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

### Binding
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{environments} \\
  \KEY{Alias} \quad & \NAMEREF{envs} \\
  \KEY{Datatype} \quad & \NAMEREF{identifiers} \\
  \KEY{Alias} \quad & \NAMEREF{ids} \\
  \KEY{Funcon} \quad & \NAMEREF{identifier-tagged} \\
  \KEY{Alias} \quad & \NAMEREF{id-tagged} \\
  \KEY{Funcon} \quad & \NAMEREF{fresh-identifier} \\
  \KEY{Entity} \quad & \NAMEREF{environment} \\
  \KEY{Alias} \quad & \NAMEREF{env} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-binding} \\
  \KEY{Funcon} \quad & \NAMEREF{bind-value} \\
  \KEY{Alias} \quad & \NAMEREF{bind} \\
  \KEY{Funcon} \quad & \NAMEREF{unbind} \\
  \KEY{Funcon} \quad & \NAMEREF{bound-directly} \\
  \KEY{Funcon} \quad & \NAMEREF{bound-value} \\
  \KEY{Alias} \quad & \NAMEREF{bound} \\
  \KEY{Funcon} \quad & \NAMEREF{closed} \\
  \KEY{Funcon} \quad & \NAMEREF{scope} \\
  \KEY{Funcon} \quad & \NAMEREF{accumulate} \\
  \KEY{Funcon} \quad & \NAMEREF{collateral} \\
  \KEY{Funcon} \quad & \NAMEREF{bind-recursively} \\
  \KEY{Funcon} \quad & \NAMEREF{recursive}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

#### Environments
               


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{environments}  
    \leadsto \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
               (  \NAMEREF{identifiers}, 
                      \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{envs} = \NAMEREF{environments}
\end{align*}$$


  An environment represents bindings of identifiers to values.
  Mapping an identifier to $$\SHADE{(   \  )}$$ represents that its binding is hidden.
  
  Circularity in environments (due to recursive bindings) is represented using
  bindings to cut-points called $$\SHADE{\NAMEHYPER{../.}{Linking}{links}}$$. Funcons are provided for making
  declarations recursive and for referring to bound values without explicit
  mention of links, so their existence can generally be ignored.


$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{identifiers} 
  \ ::= \ &
  \{ \_ : \NAMEHYPER{../../../Values/Composite}{Strings}{strings} \} \mid \NAMEDECL{identifier-tagged}(
                     \_ : \NAMEREF{identifiers}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values})
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{ids} = \NAMEREF{identifiers}
\\
  \KEY{Alias} \quad
  & \NAMEDECL{id-tagged} = \NAMEREF{identifier-tagged}
\end{align*}$$


  An identifier is either a string of characters, or an identifier tagged with
  some value (e.g., with the identifier of a namespace).


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fresh-identifier} 
    :  \TO \NAMEREF{identifiers} 
\end{align*}$$


  $$\SHADE{\NAMEREF{fresh-identifier}}$$ computes an identifier distinct from all previously
  computed identifiers.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{fresh-identifier} \leadsto 
        \NAMEREF{identifier-tagged}
          (  \STRING{generated}, 
                 \NAMEHYPER{../.}{Generating}{fresh-atom} )
\end{align*}$$

#### Current bindings
               


$$\begin{align*}
  \KEY{Entity} \quad
  & \NAMEDECL{environment}(\_ : \NAMEREF{environments}) \vdash \_ \TRANS  \_
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{env} = \NAMEREF{environment}
\end{align*}$$


  The environment entity allows a computation to refer to the current bindings
  of identifiers to values.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-binding}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../.}{Linking}{initialise-linking}
               (  \NAMEHYPER{../.}{Generating}{initialise-generating}
                       (  \NAMEREF{closed}
                               (  \VAR{X} ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{initialise-binding}
           (  \VAR{X} )}$$ ensures that $$\SHADE{\VAR{X}}$$ does not depend on non-local bindings.
  It also ensures that the linking entity (used to represent potentially cyclic
  bindings) and the generating entity (for creating fresh identifiers) are 
  initialised.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{bind-value}(
                       \VAR{I} : \NAMEREF{identifiers}, \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \{ \VAR{I} \mapsto 
                  \VAR{V} \}
\\
  \KEY{Alias} \quad
  & \NAMEDECL{bind} = \NAMEREF{bind-value}
\end{align*}$$


  $$\SHADE{\NAMEREF{bind-value}
           (  \VAR{I}, 
                  \VAR{X} )}$$ computes the environment that binds only $$\SHADE{\VAR{I}}$$ to the value
  computed by $$\SHADE{\VAR{X}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{unbind}(
                       \VAR{I} : \NAMEREF{identifiers}) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \{ \VAR{I} \mapsto 
                  (   \  ) \}
\end{align*}$$


  $$\SHADE{\NAMEREF{unbind}
           (  \VAR{I} )}$$ computes the environment that hides the binding of $$\SHADE{\VAR{I}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{bound-directly}(
                       \_ : \NAMEREF{identifiers}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$

 
  $$\SHADE{\NAMEREF{bound-directly}
           (  \VAR{I} )}$$ returns the value to which $$\SHADE{\VAR{I}}$$ is currently bound, if any,
  and otherwise fails.

  $$\SHADE{\NAMEREF{bound-directly}
           (  \VAR{I} )}$$ does *not* follow links. It is used only in connection with
  recursively-bound values when references are not encapsulated in abstractions.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{lookup}
          (  \VAR{$\rho$}, 
                 \VAR{I} ) \leadsto 
          (  \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} )
      }{
      & \NAMEREF{environment} (  \VAR{$\rho$} ) \vdash \NAMEREF{bound-directly}
                      (  \VAR{I} : \NAMEREF{identifiers} ) \TRANS 
          \VAR{V}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{lookup}
          (  \VAR{$\rho$}, 
                 \VAR{I} ) \leadsto 
          (   \  )
      }{
      & \NAMEREF{environment} (  \VAR{$\rho$} ) \vdash \NAMEREF{bound-directly}
                      (  \VAR{I} : \NAMEREF{identifiers} ) \TRANS 
          \NAMEHYPER{../../Abnormal}{Failing}{fail}
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{bound-value}(
                       \VAR{I} : \NAMEREF{identifiers}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} \\&\quad
    \leadsto \NAMEHYPER{../.}{Linking}{follow-if-link}
               (  \NAMEREF{bound-directly}
                       (  \VAR{I} ) )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{bound} = \NAMEREF{bound-value}
\end{align*}$$

 
   $$\SHADE{\NAMEREF{bound-value}
           (  \VAR{I} )}$$ inspects the value to which $$\SHADE{\VAR{I}}$$ is currently bound, if any,
   and otherwise fails. If the value is a link, $$\SHADE{\NAMEREF{bound-value}
           (  \VAR{I} )}$$ returns the
   value obtained by following the link, if any, and otherwise fails. If the 
   inspected value is not a link, $$\SHADE{\NAMEREF{bound-value}
           (  \VAR{I} )}$$ returns it. 
   
   $$\SHADE{\NAMEREF{bound-value}
           (  \VAR{I} )}$$ is used for references to non-recursive bindings and to
   recursively-bound values when references are encapsulated in abstractions.


#### Scope
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{closed}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{closed}
           (  \VAR{X} )}$$ ensures that $$\SHADE{\VAR{X}}$$ does not depend on non-local bindings.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEREF{environment} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map}
                                     (   \  ) ) \vdash \VAR{X} \TRANS 
          \VAR{X}'
      }{
      & \NAMEREF{environment} (  \_ ) \vdash \NAMEREF{closed}
                      (  \VAR{X} ) \TRANS 
          \NAMEREF{closed}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{closed}
        (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{scope}(
                       \_ : \NAMEREF{environments}, \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{scope}
           (  \VAR{D}, 
                  \VAR{X} )}$$ executes $$\SHADE{\VAR{D}}$$ with the current bindings, to compute an environment
  $$\SHADE{\VAR{$\rho$}}$$ representing local bindings. It then executes $$\SHADE{\VAR{X}}$$ to compute the result,
  with the current bindings extended by $$\SHADE{\VAR{$\rho$}}$$, which may shadow or hide previous
  bindings.
  
  $$\SHADE{\NAMEREF{closed}
           (  \NAMEREF{scope}
                   (  \VAR{$\rho$}, 
                          \VAR{X} ) )}$$ ensures that $$\SHADE{\VAR{X}}$$ can reference only the bindings
  provided by $$\SHADE{\VAR{$\rho$}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEREF{environment} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                     (  \VAR{$\rho$}\SUB{1}, 
                                            \VAR{$\rho$}\SUB{0} ) ) \vdash \VAR{X} \TRANS 
          \VAR{X}'
      }{
      & \NAMEREF{environment} (  \VAR{$\rho$}\SUB{0} ) \vdash \NAMEREF{scope}
                      (  \VAR{$\rho$}\SUB{1} : \NAMEREF{environments}, 
                             \VAR{X} ) \TRANS 
          \NAMEREF{scope}
            (  \VAR{$\rho$}\SUB{1}, 
                   \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{scope}
        (  \_ : \NAMEREF{environments}, 
               \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{accumulate}(
                       \_ : (   \TO \NAMEREF{environments} )\STAR) 
    :  \TO \NAMEREF{environments} 
\end{align*}$$


  $$\SHADE{\NAMEREF{accumulate}
           (  \VAR{D}\SUB{1}, 
                  \VAR{D}\SUB{2} )}$$ executes $$\SHADE{\VAR{D}\SUB{1}}$$ with the current bindings, to compute an
  environment $$\SHADE{\VAR{$\rho$}\SUB{1}}$$ representing some local bindings. It then executes $$\SHADE{\VAR{D}\SUB{2}}$$ to
  compute an environment $$\SHADE{\VAR{$\rho$}\SUB{2}}$$ representing further local bindings, with the
  current bindings extended by $$\SHADE{\VAR{$\rho$}\SUB{1}}$$, which may shadow or hide previous
  current bindings. The result is $$\SHADE{\VAR{$\rho$}\SUB{1}}$$ extended by $$\SHADE{\VAR{$\rho$}\SUB{2}}$$, which may shadow
  or hide the bindings of $$\SHADE{\VAR{$\rho$}\SUB{1}}$$.
  
  $$\SHADE{\NAMEREF{accumulate}
           (  \_, 
                  \_ )}$$ is associative, with $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Maps}{map}
           (   \  )}$$ as unit, and extends to any
  number of arguments.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{D}\SUB{1} \TRANS 
          \VAR{D}\SUB{1}'
      }{
      &  \NAMEREF{accumulate}
                      (  \VAR{D}\SUB{1}, 
                             \VAR{D}\SUB{2} ) \TRANS 
          \NAMEREF{accumulate}
            (  \VAR{D}\SUB{1}', 
                   \VAR{D}\SUB{2} )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{accumulate}
        (  \VAR{$\rho$}\SUB{1} : \NAMEREF{environments}, 
               \VAR{D}\SUB{2} ) \leadsto 
        \NAMEREF{scope}
          (  \VAR{$\rho$}\SUB{1}, 
                 \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                  (  \VAR{D}\SUB{2}, 
                         \VAR{$\rho$}\SUB{1} ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{accumulate}
        (   \  ) \leadsto 
        \NAMEHYPER{../../../Values/Composite}{Maps}{map}
          (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{accumulate}
        (  \VAR{D}\SUB{1} ) \leadsto 
        \VAR{D}\SUB{1}
\\
  \KEY{Rule} \quad
    & \NAMEREF{accumulate}
        (  \VAR{D}\SUB{1}, 
               \VAR{D}\SUB{2}, 
               \VAR{D}\PLUS ) \leadsto 
        \NAMEREF{accumulate}
          (  \VAR{D}\SUB{1}, 
                 \NAMEREF{accumulate}
                  (  \VAR{D}\SUB{2}, 
                         \VAR{D}\PLUS ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{collateral}(
                       \VAR{$\rho$}\STAR : \NAMEREF{environments}\STAR) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \NAMEHYPER{../../Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../Values/Composite}{Maps}{map-unite}
                 (  \VAR{$\rho$}\STAR )
\end{align*}$$

 
  $$\SHADE{\NAMEREF{collateral}
           (  \VAR{D}\SUB{1}, 
                  \cdots )}$$ pre-evaluates its arguments with the current bindings,
  and unites the resulting maps, which fails if the domains are not pairwise
  disjoint.

  $$\SHADE{\NAMEREF{collateral}
           (  \VAR{D}\SUB{1}, 
                  \VAR{D}\SUB{2} )}$$ is associative and commutative with $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Maps}{map}
           (   \  )}$$ as unit, 
  and extends to any number of arguments.


#### Recurse
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{bind-recursively}(
                       \VAR{I} : \NAMEREF{identifiers}, \VAR{E} :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \NAMEREF{recursive}
               (  \{  \VAR{I} \}, 
                      \NAMEREF{bind-value}
                       (  \VAR{I}, 
                              \VAR{E} ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{bind-recursively}
           (  \VAR{I}, 
                  \VAR{E} )}$$ binds $$\SHADE{\VAR{I}}$$ to a link that refers to the value of $$\SHADE{\VAR{E}}$$, 
  representing a recursive binding of $$\SHADE{\VAR{I}}$$ to the value of $$\SHADE{\VAR{E}}$$.
  Since $$\SHADE{\NAMEREF{bound-value}
           (  \VAR{I} )}$$ follows links, it should not be executed during the
  evaluation of $$\SHADE{\VAR{E}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{recursive}(
                       \VAR{SI} : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                 (  \NAMEREF{identifiers} ), \VAR{D} :  \TO \NAMEREF{environments}) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \NAMEREF{re-close}
               (  \NAMEREF{bind-to-forward-links}
                       (  \VAR{SI} ), 
                      \VAR{D} )
\end{align*}$$


  $$\SHADE{\NAMEREF{recursive}
           (  \VAR{SI}, 
                  \VAR{D} )}$$ executes $$\SHADE{\VAR{D}}$$ with potential recursion on the bindings of 
  the identifiers in the set $$\SHADE{\VAR{SI}}$$ (which need not be the same as the set of
  identifiers bound by $$\SHADE{\VAR{D}}$$).


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{re-close}(
                       \VAR{M} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                 (  \NAMEREF{identifiers}, 
                                        \NAMEHYPER{../.}{Linking}{links} ), \VAR{D} :  \TO \NAMEREF{environments}) 
    :  \TO \NAMEREF{environments} \\&\quad
    \leadsto \NAMEREF{accumulate}
               (  \NAMEREF{scope}
                       (  \VAR{M}, 
                              \VAR{D} ), 
                      \NAMEHYPER{../.}{Flowing}{sequential}
                       (  \NAMEREF{set-forward-links}
                               (  \VAR{M} ), 
                              \NAMEHYPER{../../../Values/Composite}{Maps}{map}
                               (   \  ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{re-close}
           (  \VAR{M}, 
                  \VAR{D} )}$$ first executes $$\SHADE{\VAR{D}}$$ in the scope $$\SHADE{\VAR{M}}$$, which maps identifiers
  to freshly allocated links. This computes an environment $$\SHADE{\VAR{$\rho$}}$$ where the bound
  values may contain links, or implicit references to links in abstraction
  values. It then sets the link for each identifier in the domain of $$\SHADE{\VAR{M}}$$ to
  refer to its bound value in $$\SHADE{\VAR{$\rho$}}$$, and returns $$\SHADE{\VAR{$\rho$}}$$ as the result.


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{bind-to-forward-links}(
                       \VAR{SI} : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                 (  \NAMEREF{identifiers} )) 
    :  \TO \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                     (  \NAMEREF{identifiers}, 
                            \NAMEHYPER{../.}{Linking}{links} ) \\&\quad
    \leadsto \NAMEHYPER{../../../Values/Composite}{Maps}{map-unite}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../.}{Giving}{interleave-map}
                       ( \\&\quad\quad\quad\quad\quad \NAMEREF{bind-value}
                               (  \NAMEHYPER{../.}{Giving}{given}, 
                                      \NAMEHYPER{../.}{Linking}{fresh-link}
                                       (  \NAMEHYPER{../../../Values}{Value-Types}{values} ) ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../Values/Composite}{Sets}{set-elements}
                               (  \VAR{SI} ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{bind-to-forward-links}
           (  \VAR{SI} )}$$ binds each identifier in the set $$\SHADE{\VAR{SI}}$$ to a
  freshly allocated link.


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{set-forward-links}(
                       \VAR{M} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                 (  \NAMEREF{identifiers}, 
                                        \NAMEHYPER{../.}{Linking}{links} )) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Flowing}{effect}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../.}{Giving}{interleave-map}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../.}{Linking}{set-link}
                               (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                                       (  \VAR{M}, 
                                              \NAMEHYPER{../.}{Giving}{given} ), 
                                      \NAMEREF{bound-value}
                                       (  \NAMEHYPER{../.}{Giving}{given} ) ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../Values/Composite}{Sets}{set-elements}
                               (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-domain}
                                       (  \VAR{M} ) ) ) )
\end{align*}$$


  For each identifier $$\SHADE{\VAR{I}}$$ in the domain of $$\SHADE{\VAR{M}}$$, $$\SHADE{\NAMEREF{set-forward-links}
           (  \VAR{M} )}$$ sets the 
  link to which $$\SHADE{\VAR{I}}$$ is mapped by $$\SHADE{\VAR{M}}$$ to the current bound value of $$\SHADE{\VAR{I}}$$.




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
[Binding.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Binding/Binding.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Binding
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Binding
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Binding/Binding.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Binding/Binding.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
