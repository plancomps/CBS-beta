---
layout: default
title: "Binding"
math: katex
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Binding.cbs]

### Binding


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{environments} \\
  \KEY{Alias} ~ & \NAMEREF{envs} \\
  \KEY{Datatype} ~ & \NAMEREF{identifiers} \\
  \KEY{Alias} ~ & \NAMEREF{ids} \\
  \KEY{Funcon} ~ & \NAMEREF{identifier-tagged} \\
  \KEY{Alias} ~ & \NAMEREF{id-tagged} \\
  \KEY{Funcon} ~ & \NAMEREF{fresh-identifier} \\
  \KEY{Entity} ~ & \NAMEREF{environment} \\
  \KEY{Alias} ~ & \NAMEREF{env} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-binding} \\
  \KEY{Funcon} ~ & \NAMEREF{bind-value} \\
  \KEY{Alias} ~ & \NAMEREF{bind} \\
  \KEY{Funcon} ~ & \NAMEREF{unbind} \\
  \KEY{Funcon} ~ & \NAMEREF{bound-directly} \\
  \KEY{Funcon} ~ & \NAMEREF{bound-value} \\
  \KEY{Alias} ~ & \NAMEREF{bound} \\
  \KEY{Funcon} ~ & \NAMEREF{closed} \\
  \KEY{Funcon} ~ & \NAMEREF{scope} \\
  \KEY{Funcon} ~ & \NAMEREF{accumulate} \\
  \KEY{Funcon} ~ & \NAMEREF{collateral} \\
  \KEY{Funcon} ~ & \NAMEREF{bind-recursively} \\
  \KEY{Funcon} ~ & \NAMEREF{recursive}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../Values}{Value-Types}{values}
\end{aligned}$$

#### Environments


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{environments}  
  \leadsto \NAMEHYPER{../../Values/Composite}{Maps}{maps}
             (\NAMEREF{identifiers}, \\&\quad 
              \NAMEHYPER{../../Values}{Value-Types}{values}\QUERY)
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{envs} = \NAMEREF{environments}
\end{aligned}$$


  An environment represents bindings of identifiers to values.
  Mapping an identifier to $$\SHADE{( ~ )}$$ represents that its binding is hidden.
  
  Circularity in environments (due to recursive bindings) is represented using
  bindings to cut-points called $$\SHADE{\NAMEHYPER{..}{Linking}{links}}$$. Funcons are provided for making
  declarations recursive and for referring to bound values without explicit
  mention of links, so their existence can generally be ignored.


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{identifiers}  
  ~ ::= ~ & 
  \{ \_ : \NAMEHYPER{../../Values/Composite}{Strings}{strings} \} \\
  ~ \mid ~ & \NAMEDECL{identifier-tagged} (\_ : \NAMEREF{identifiers}, \_ : \NAMEHYPER{../../Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{ids} = \NAMEREF{identifiers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{id-tagged} = \NAMEREF{identifier-tagged}
\end{aligned}$$


  An identifier is either a string of characters, or an identifier tagged with
  some value (e.g., with the identifier of a namespace).


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{fresh-identifier} :  \TO \NAMEREF{identifiers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{fresh-identifier}}$$ computes an identifier distinct from all previously
  computed identifiers.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{fresh-identifier} \leadsto \NAMEREF{identifier-tagged}
                                                 (\STRING{generated},   
                                                  \NAMEHYPER{..}{Generating}{fresh-atom})
\end{aligned}$$

#### Current bindings


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \NAMEDECL{environment}(\_ : \NAMEREF{environments}) \vdash \_ \TRANS  \_
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{env} = \NAMEREF{environment}
\end{aligned}$$


  The environment entity allows a computation to refer to the current bindings
  of identifiers to values.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-binding}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \\
  & \quad \leadsto \NAMEHYPER{..}{Linking}{initialise-linking}
                     (\NAMEHYPER{..}{Generating}{initialise-generating}
                        (\NAMEREF{closed}
                           (\VAR{X})))
\end{aligned}$$


  $$\SHADE{\NAMEREF{initialise-binding}
           (\VAR{X})}$$ ensures that $$\SHADE{\VAR{X}}$$ does not depend on non-local bindings.
  It also ensures that the linking entity (used to represent potentially cyclic
  bindings) and the generating entity (for creating fresh identifiers) are 
  initialised.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{bind-value}(\VAR{I} : \NAMEREF{identifiers}, \VAR{V} : \NAMEHYPER{../../Values}{Value-Types}{values}) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \{ \VAR{I} \mapsto \VAR{V} \}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{bind} = \NAMEREF{bind-value}
\end{aligned}$$


  $$\SHADE{\NAMEREF{bind-value}
           (\VAR{I},   
            \VAR{X})}$$ computes the environment that binds only $$\SHADE{\VAR{I}}$$ to the value
  computed by $$\SHADE{\VAR{X}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{unbind}(\VAR{I} : \NAMEREF{identifiers}) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \{ \VAR{I} \mapsto ( ~ ) \}
\end{aligned}$$


  $$\SHADE{\NAMEREF{unbind}
           (\VAR{I})}$$ computes the environment that hides the binding of $$\SHADE{\VAR{I}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{bound-directly}(\_ : \NAMEREF{identifiers}) :  \TO \NAMEHYPER{../../Values}{Value-Types}{values}
\end{aligned}$$

 
  $$\SHADE{\NAMEREF{bound-directly}
           (\VAR{I})}$$ returns the value to which $$\SHADE{\VAR{I}}$$ is currently bound, if any,
  and otherwise fails.

  $$\SHADE{\NAMEREF{bound-directly}
           (\VAR{I})}$$ does *not* follow links. It is used only in connection with
  recursively-bound values when references are not encapsulated in abstractions.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../Values/Composite}{Maps}{lookup}
        (\VAR{$\rho$},   
         \VAR{I}) \leadsto (\VAR{V} : \NAMEHYPER{../../Values}{Value-Types}{values})
      }{
      \NAMEREF{environment} (\VAR{$\rho$}) \vdash \NAMEREF{bound-directly}
                    (\VAR{I} : \NAMEREF{identifiers}) \TRANS \VAR{V}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../Values/Composite}{Maps}{lookup}
        (\VAR{$\rho$},   
         \VAR{I}) \leadsto ( ~ )
      }{
      \NAMEREF{environment} (\VAR{$\rho$}) \vdash \NAMEREF{bound-directly}
                    (\VAR{I} : \NAMEREF{identifiers}) \TRANS \NAMEHYPER{../Abnormal}{Failing}{fail}
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{bound-value}(\VAR{I} : \NAMEREF{identifiers}) :  \TO \NAMEHYPER{../../Values}{Value-Types}{values} \\
  & \quad \leadsto \NAMEHYPER{..}{Linking}{follow-if-link}
                     (\NAMEREF{bound-directly}
                        (\VAR{I}))
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{bound} = \NAMEREF{bound-value}
\end{aligned}$$

 
   $$\SHADE{\NAMEREF{bound-value}
           (\VAR{I})}$$ inspects the value to which $$\SHADE{\VAR{I}}$$ is currently bound, if any,
   and otherwise fails. If the value is a link, $$\SHADE{\NAMEREF{bound-value}
           (\VAR{I})}$$ returns the
   value obtained by following the link, if any, and otherwise fails. If the 
   inspected value is not a link, $$\SHADE{\NAMEREF{bound-value}
           (\VAR{I})}$$ returns it. 
   
   $$\SHADE{\NAMEREF{bound-value}
           (\VAR{I})}$$ is used for references to non-recursive bindings and to
   recursively-bound values when references are encapsulated in abstractions.


#### Scope


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{closed}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{closed}
           (\VAR{X})}$$ ensures that $$\SHADE{\VAR{X}}$$ does not depend on non-local bindings.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEREF{environment} (\NAMEHYPER{../../Values/Composite}{Maps}{map}
                              ( ~ )) \vdash \VAR{X} \TRANS \VAR{X}'
      }{
      \NAMEREF{environment} (\_) \vdash \NAMEREF{closed}
                    (\VAR{X}) \TRANS \NAMEREF{closed}
                                                               (\VAR{X}')
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{closed}
        (\VAR{V} : \VAR{T}) \leadsto \VAR{V}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{scope}(\_ : \NAMEREF{environments}, \_ :  \TO \VAR{T}) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{scope}
           (\VAR{D},   
            \VAR{X})}$$ executes $$\SHADE{\VAR{D}}$$ with the current bindings, to compute an environment
  $$\SHADE{\VAR{$\rho$}}$$ representing local bindings. It then executes $$\SHADE{\VAR{X}}$$ to compute the result,
  with the current bindings extended by $$\SHADE{\VAR{$\rho$}}$$, which may shadow or hide previous
  bindings.
  
  $$\SHADE{\NAMEREF{closed}
           (\NAMEREF{scope}
              (\VAR{$\rho$},    
               \VAR{X}))}$$ ensures that $$\SHADE{\VAR{X}}$$ can reference only the bindings
  provided by $$\SHADE{\VAR{$\rho$}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEREF{environment} (\NAMEHYPER{../../Values/Composite}{Maps}{map-override}
                              (\VAR{$\rho$}\SUB{1},   
                               \VAR{$\rho$}\SUB{0})) \vdash \VAR{X} \TRANS \VAR{X}'
      }{
      \NAMEREF{environment} (\VAR{$\rho$}\SUB{0}) \vdash \NAMEREF{scope}
                    (\VAR{$\rho$}\SUB{1} : \NAMEREF{environments},   
                     \VAR{X}) \TRANS \NAMEREF{scope}
                                                               (\VAR{$\rho$}\SUB{1},   
                                                                \VAR{X}')
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{scope}
        (\_ : \NAMEREF{environments},   
         \VAR{V} : \VAR{T}) \leadsto \VAR{V}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{accumulate}(\_ : ( \TO \NAMEREF{environments})\STAR) :  \TO \NAMEREF{environments}
\end{aligned}$$


  $$\SHADE{\NAMEREF{accumulate}
           (\VAR{D}\SUB{1},   
            \VAR{D}\SUB{2})}$$ executes $$\SHADE{\VAR{D}\SUB{1}}$$ with the current bindings, to compute an
  environment $$\SHADE{\VAR{$\rho$}\SUB{1}}$$ representing some local bindings. It then executes $$\SHADE{\VAR{D}\SUB{2}}$$ to
  compute an environment $$\SHADE{\VAR{$\rho$}\SUB{2}}$$ representing further local bindings, with the
  current bindings extended by $$\SHADE{\VAR{$\rho$}\SUB{1}}$$, which may shadow or hide previous
  current bindings. The result is $$\SHADE{\VAR{$\rho$}\SUB{1}}$$ extended by $$\SHADE{\VAR{$\rho$}\SUB{2}}$$, which may shadow
  or hide the bindings of $$\SHADE{\VAR{$\rho$}\SUB{1}}$$.
  
  $$\SHADE{\NAMEREF{accumulate}
           (\_,   
            \_)}$$ is associative, with $$\SHADE{\NAMEHYPER{../../Values/Composite}{Maps}{map}
           ( ~ )}$$ as unit, and extends to any
  number of arguments.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{D}\SUB{1} \TRANS \VAR{D}\SUB{1}'
      }{
       \NAMEREF{accumulate}
                    (\VAR{D}\SUB{1},   
                     \VAR{D}\SUB{2}) \TRANS \NAMEREF{accumulate}
                                                               (\VAR{D}\SUB{1}',   
                                                                \VAR{D}\SUB{2})
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{accumulate}
        (\VAR{$\rho$}\SUB{1} : \NAMEREF{environments},   
         \VAR{D}\SUB{2}) \leadsto \NAMEREF{scope}
                                                 (\VAR{$\rho$}\SUB{1},   
                                                  \NAMEHYPER{../../Values/Composite}{Maps}{map-override}
                                                    (\VAR{D}\SUB{2},    
                                                     \VAR{$\rho$}\SUB{1}))
\\
  \KEY{Rule} ~ 
    & \NAMEREF{accumulate}
        ( ~ ) \leadsto \NAMEHYPER{../../Values/Composite}{Maps}{map}
                                                 ( ~ )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{accumulate}
        (\VAR{D}\SUB{1}) \leadsto \VAR{D}\SUB{1}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{accumulate}
        (\VAR{D}\SUB{1},   
         \VAR{D}\SUB{2},   
         \VAR{D}\PLUS) \leadsto \NAMEREF{accumulate}
                                                 (\VAR{D}\SUB{1},   
                                                  \NAMEREF{accumulate}
                                                    (\VAR{D}\SUB{2},    
                                                     \VAR{D}\PLUS))
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{collateral}(\VAR{$\rho$}\STAR : \NAMEREF{environments}\STAR) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \NAMEHYPER{../Abnormal}{Failing}{checked}
                     \NAMEHYPER{../../Values/Composite}{Maps}{map-unite}
                       (\VAR{$\rho$}\STAR)
\end{aligned}$$

 
  $$\SHADE{\NAMEREF{collateral}
           (\VAR{D}\SUB{1},   
            \cdots)}$$ pre-evaluates its arguments with the current bindings,
  and unites the resulting maps, which fails if the domains are not pairwise
  disjoint.

  $$\SHADE{\NAMEREF{collateral}
           (\VAR{D}\SUB{1},   
            \VAR{D}\SUB{2})}$$ is associative and commutative with $$\SHADE{\NAMEHYPER{../../Values/Composite}{Maps}{map}
           ( ~ )}$$ as unit, 
  and extends to any number of arguments.


#### Recurse


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{bind-recursively}(\VAR{I} : \NAMEREF{identifiers}, \VAR{E} :  \TO \NAMEHYPER{../../Values}{Value-Types}{values}) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \NAMEREF{recursive}
                     (\{ \VAR{I} \}, \\&\quad 
                      \NAMEREF{bind-value}
                        (\VAR{I}, \\&\quad \quad 
                         \VAR{E}))
\end{aligned}$$


  $$\SHADE{\NAMEREF{bind-recursively}
           (\VAR{I},   
            \VAR{E})}$$ binds $$\SHADE{\VAR{I}}$$ to a link that refers to the value of $$\SHADE{\VAR{E}}$$, 
  representing a recursive binding of $$\SHADE{\VAR{I}}$$ to the value of $$\SHADE{\VAR{E}}$$.
  Since $$\SHADE{\NAMEREF{bound-value}
           (\VAR{I})}$$ follows links, it should not be executed during the
  evaluation of $$\SHADE{\VAR{E}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{recursive}(\VAR{SI} : \NAMEHYPER{../../Values/Composite}{Sets}{sets}
                                (\NAMEREF{identifiers}), \VAR{D} :  \TO \NAMEREF{environments}) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \NAMEREF{re-close}
                     (\NAMEREF{bind-to-forward-links}
                        (\VAR{SI}), \\&\quad 
                      \VAR{D})
\end{aligned}$$


  $$\SHADE{\NAMEREF{recursive}
           (\VAR{SI},   
            \VAR{D})}$$ executes $$\SHADE{\VAR{D}}$$ with potential recursion on the bindings of 
  the identifiers in the set $$\SHADE{\VAR{SI}}$$ (which need not be the same as the set of
  identifiers bound by $$\SHADE{\VAR{D}}$$).


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{re-close}(\VAR{M} : \NAMEHYPER{../../Values/Composite}{Maps}{maps}
                                (\NAMEREF{identifiers}, \\&\quad 
                                 \NAMEHYPER{..}{Linking}{links}), \VAR{D} :  \TO \NAMEREF{environments}) :  \TO \NAMEREF{environments} \\
  & \quad \leadsto \NAMEREF{accumulate}
                     (\NAMEREF{scope}
                        (\VAR{M}, \\&\quad \quad 
                         \VAR{D}), \\&\quad 
                      \NAMEHYPER{..}{Flowing}{sequential}
                        (\NAMEREF{set-forward-links}
                           (\VAR{M}), \\&\quad \quad 
                         \NAMEHYPER{../../Values/Composite}{Maps}{map}
                           ( ~ )))
\end{aligned}$$


  $$\SHADE{\NAMEREF{re-close}
           (\VAR{M},   
            \VAR{D})}$$ first executes $$\SHADE{\VAR{D}}$$ in the scope $$\SHADE{\VAR{M}}$$, which maps identifiers
  to freshly allocated links. This computes an environment $$\SHADE{\VAR{$\rho$}}$$ where the bound
  values may contain links, or implicit references to links in abstraction
  values. It then sets the link for each identifier in the domain of $$\SHADE{\VAR{M}}$$ to
  refer to its bound value in $$\SHADE{\VAR{$\rho$}}$$, and returns $$\SHADE{\VAR{$\rho$}}$$ as the result.


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{bind-to-forward-links}(\VAR{SI} : \NAMEHYPER{../../Values/Composite}{Sets}{sets}
                                (\NAMEREF{identifiers})) :  \TO \NAMEHYPER{../../Values/Composite}{Maps}{maps}
                                                 (\NAMEREF{identifiers}, \\&\quad 
                                                  \NAMEHYPER{..}{Linking}{links}) \\
  & \quad \leadsto \NAMEHYPER{../../Values/Composite}{Maps}{map-unite}
                     (\NAMEHYPER{..}{Giving}{interleave-map}
                        (\NAMEREF{bind-value}
                           (\NAMEHYPER{..}{Giving}{given}, \\&\quad \quad \quad 
                            \NAMEHYPER{..}{Linking}{fresh-link}
                              (\NAMEHYPER{../../Values}{Value-Types}{values})), \\&\quad \quad 
                         \NAMEHYPER{../../Values/Composite}{Sets}{set-elements}
                           (\VAR{SI})))
\end{aligned}$$


  $$\SHADE{\NAMEREF{bind-to-forward-links}
           (\VAR{SI})}$$ binds each identifier in the set $$\SHADE{\VAR{SI}}$$ to a
  freshly allocated link.


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{set-forward-links}(\VAR{M} : \NAMEHYPER{../../Values/Composite}{Maps}{maps}
                                (\NAMEREF{identifiers}, \\&\quad 
                                 \NAMEHYPER{..}{Linking}{links})) :  \TO \NAMEHYPER{../../Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{..}{Flowing}{effect}
                     (\NAMEHYPER{..}{Giving}{interleave-map}
                        (\NAMEHYPER{..}{Linking}{set-link}
                           (\NAMEHYPER{../../Values/Composite}{Maps}{map-lookup}
                              (\VAR{M}, \\&\quad \quad \quad \quad 
                               \NAMEHYPER{..}{Giving}{given}), \\&\quad \quad \quad 
                            \NAMEREF{bound-value}
                              (\NAMEHYPER{..}{Giving}{given})), \\&\quad \quad 
                         \NAMEHYPER{../../Values/Composite}{Sets}{set-elements}
                           (\NAMEHYPER{../../Values/Composite}{Maps}{map-domain}
                              (\VAR{M}))))
\end{aligned}$$


  For each identifier $$\SHADE{\VAR{I}}$$ in the domain of $$\SHADE{\VAR{M}}$$, $$\SHADE{\NAMEREF{set-forward-links}
           (\VAR{M})}$$ sets the 
  link to which $$\SHADE{\VAR{I}}$$ is mapped by $$\SHADE{\VAR{M}}$$ to the current bound value of $$\SHADE{\VAR{I}}$$.




[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta 
  "CBS-BETA"


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Binding.cbs]: Binding.cbs 
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Binding/Binding.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"