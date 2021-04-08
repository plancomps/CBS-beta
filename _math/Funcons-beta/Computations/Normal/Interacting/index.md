---
title: "Interacting"
math: katex
parent: Normal
ancestor: Funcons-beta

---
[Funcons-beta] : [Interacting.cbs] \| [PLAIN] \| [PDF]

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

### Interacting
               


#### Output
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEREF{standard-out} \\
  \KEY{Funcon} \quad & \NAMEREF{print}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Entity} \quad
  & \_ \xrightarrow{\NAMEDECL{standard-out}!(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR)} \_
\end{align*}$$


  This entity represents the sequence of values output by a particular
  transition, where the empty sequence $$\SHADE{(   \  )}$$ represents the lack of output.
  Composition of transitions concatenates their output sequences.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{print}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{print}
           (  \VAR{X}\STAR )}$$ evaluates the arguments $$\SHADE{\VAR{X}\STAR}$$ and emits the resulting sequence of
  values on the standard-out channel. $$\SHADE{\NAMEREF{print}
           (   \  )}$$ has no effect.


$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{print}
                    (  \VAR{V}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR ) \xrightarrow{\NAMEREF{standard-out}!(  \VAR{V}\STAR )}_{} 
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
\end{align*}$$

#### Input
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEREF{standard-in} \\
  \KEY{Funcon} \quad & \NAMEREF{read}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Entity} \quad
  & \_ \xrightarrow{\NAMEDECL{standard-in}?(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR)} \_
\end{align*}$$


  This entity represents the sequence of values input by a particular
  transition, where the empty sequence $$\SHADE{(   \  )}$$ represents that no values are
  input. The value $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$ represents the end of the input.
  
  Composition of transitions concatenates their input sequences, except that
  when the first sequence ends with $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$, the second seqeunce has to be
  just $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{read} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  $$\SHADE{\NAMEREF{read}}$$ inputs a single value from the standard-in channel, and returns it.
  If the end of the input has been reached, $$\SHADE{\NAMEREF{read}}$$ fails.


$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{read} \xrightarrow{\NAMEREF{standard-in}?(  \VAR{V} : \mathop{\sim} \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} )}_{} 
        \VAR{V}
\\
  \KEY{Rule} \quad
    &  \NAMEREF{read} \xrightarrow{\NAMEREF{standard-in}?(  \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )}_{} 
        \NAMEHYPER{../../Abnormal}{Failing}{fail}
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
[Interacting.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Interacting/Interacting.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Interacting
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Interacting
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Interacting/Interacting.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Interacting/Interacting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
