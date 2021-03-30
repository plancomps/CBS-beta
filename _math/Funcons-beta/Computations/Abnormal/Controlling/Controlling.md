{::comment}{% raw %}{:/}

### Controlling
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{continuations} \\
  \KEY{Funcon} \ & \NAMEREF{continuation} \\
  \KEY{Entity} \ & \NAMEREF{plug-signal} \\
  \KEY{Funcon} \ & \NAMEREF{hole} \\
  \KEY{Funcon} \ & \NAMEREF{resume-continuation} \\
  \KEY{Entity} \ & \NAMEREF{control-signal} \\
  \KEY{Funcon} \ & \NAMEREF{control} \\
  \KEY{Funcon} \ & \NAMEREF{delimit-current-continuation} \\
  \KEY{Alias} \ & \NAMEREF{delimit-cc}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T}, \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{continuations}(
                     \VAR{T}\SUB{1} , \VAR{T}\SUB{2} ) 
  \ ::= \ & \NAMEDECL{continuation}(
                               \_ : \NAMEHYPER{../../../Values/Abstraction}{Generic}{abstractions}
                                         (  (   \  ) \TO \VAR{T}\SUB{2} ))
\end{align*}$$


  $$\SHADE{\NAMEREF{continuations}
           (  \VAR{T}\SUB{1}, 
                  \VAR{T}\SUB{2} )}$$ consists of abstractions whose bodies contain a $$\SHADE{\NAMEREF{hole}}$$,
  and which will normally compute a value of type $$\SHADE{\VAR{T}\SUB{2}}$$ when the $$\SHADE{\NAMEREF{hole}}$$ is plugged
  with a value of type $$\SHADE{\VAR{T}\SUB{1}}$$.


$$\begin{align*}
  \KEY{Entity} \
  & \_ \xrightarrow{\NAMEDECL{plug-signal}(\VAR{V}\QUERY : \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY)} \_
\end{align*}$$


   A plug-signal contains the value to be filled into a $$\SHADE{\NAMEREF{hole}}$$ in a continuation,
   thereby allowing a continuation to resume.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{hole} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  A $$\SHADE{\NAMEREF{hole}}$$ in a term cannot proceed until it receives a plug-signal
  containing a value to plug the hole.


$$\begin{align*}
  \KEY{Rule} \
    &  \NAMEREF{hole} \xrightarrow{\NAMEREF{plug-signal}(  \VAR{V} )}_{} 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{resume-continuation}(
                       \VAR{K} : \NAMEREF{continuations}
                                 (  \VAR{T}\SUB{1}, 
                                        \VAR{T}\SUB{2} ), \VAR{V} : \VAR{T}\SUB{1}) 
    :  \TO \VAR{T}\SUB{2} 
\end{align*}$$


 $$\SHADE{\NAMEREF{resume-continuation}
           (  \VAR{K}, 
                  \VAR{V} )}$$ resumes a continuation $$\SHADE{\VAR{K}}$$ by plugging the value
 $$\SHADE{\VAR{V}}$$ into the $$\SHADE{\NAMEREF{hole}}$$ in the continuation.


$$\begin{align*}
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{plug-signal}(  \VAR{V} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{resume-continuation}
                      (  \NAMEREF{continuation}
                              (  \NAMEHYPER{../../../Values/Abstraction}{Generic}{abstraction}
                                      (  \VAR{X} ) ), 
                             \VAR{V} : \VAR{T} ) \xrightarrow{\NAMEREF{plug-signal}(   \  )}_{} 
          \VAR{X}'
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Entity} \
  & \_ \xrightarrow{\NAMEDECL{control-signal}(\VAR{F}\QUERY : (  \NAMEHYPER{../../../Values/Abstraction}{Functions}{functions}
                                                                      (  \NAMEREF{continuations}
                                                                              (  \VAR{T}\SUB{1}, 
                                                                                     \VAR{T}\SUB{2} ), 
                                                                             \VAR{T}\SUB{2} ) )\QUERY)} \_
\end{align*}$$


   A control-signal contains the function to which control is about to be passed
   by the enclosing $$\SHADE{\NAMEREF{delimit-current-continuation}
           (  \VAR{X} )}$$.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{control}(
                       \VAR{F} : \NAMEHYPER{../../../Values/Abstraction}{Functions}{functions}
                                 (  \NAMEREF{continuations}
                                         (  \VAR{T}\SUB{1}, 
                                                \VAR{T}\SUB{2} ), 
                                        \VAR{T}\SUB{2} )) 
    :  \TO \VAR{T}\SUB{1} 
\end{align*}$$


  $$\SHADE{\NAMEREF{control}
           (  \VAR{F} )}$$ emits a control-signal that, when handled by an enclosing
  $$\SHADE{\NAMEREF{delimit-current-continuation}
           (  \VAR{X} )}$$, will apply $$\SHADE{\VAR{F}}$$ to the current continuation of
  $$\SHADE{\NAMEREF{control}
           (  \VAR{F} )}$$, (rather than proceeding with that current continuation).


$$\begin{align*}
  \KEY{Rule} \
    &  \NAMEREF{control}
                    (  \VAR{F} : \NAMEHYPER{../../../Values/Abstraction}{Functions}{functions}
                                      (  \_, 
                                             \_ ) ) \xrightarrow{\NAMEREF{control-signal}(  \VAR{F} )}_{} 
        \NAMEREF{hole}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{delimit-current-continuation}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\\
  \KEY{Alias} \
  & \NAMEDECL{delimit-cc} = \NAMEREF{delimit-current-continuation}
\end{align*}$$


  $$\SHADE{\NAMEREF{delimit-current-continuation}
           (  \VAR{X} )}$$ delimits the scope of captured continuations.


$$\begin{align*}
  \KEY{Rule} \
    & \NAMEREF{delimit-current-continuation}
        (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{control-signal}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{delimit-current-continuation}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{control-signal}(   \  )}_{} \\&\quad
          \NAMEREF{delimit-current-continuation}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{control-signal}(  \VAR{F} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{delimit-current-continuation}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{control-signal}(   \  )}_{} \\&\quad
          \NAMEREF{delimit-current-continuation}
            (  \NAMEHYPER{../../../Values/Abstraction}{Functions}{apply}
                    (  \VAR{F}, 
                           \NAMEREF{continuation} \ 
                            \NAMEHYPER{../../../Values/Abstraction}{Generic}{closure}
                              (  \VAR{X}' ) ) )
      }
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
[Controlling.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Controlling/Controlling.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Controlling
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Controlling
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Controlling/Controlling.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
