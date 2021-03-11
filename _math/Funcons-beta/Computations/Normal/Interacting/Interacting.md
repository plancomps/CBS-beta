### Interacting
               


#### Output
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEREF{standard-out} \\
  \KEY{Funcon} ~ & \NAMEREF{print}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \_ \xrightarrow{\NAMEDECL{standard-out}!(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR)} \_
\end{aligned}$$


  This entity represents the sequence of values output by a particular
  transition, where the empty sequence $$\SHADE{(  ~  )}$$ represents the lack of output.
  Composition of transitions concatenates their output sequences.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{print}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{print}
           ( \VAR{X}\STAR )}$$ evaluates the arguments $$\SHADE{\VAR{X}\STAR}$$ and emits the resulting sequence of
  values on the standard-out channel. $$\SHADE{\NAMEREF{print}
           (  ~  )}$$ has no effect.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{print}
                    ( \VAR{V}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR ) \xrightarrow{\NAMEREF{standard-out}!( \VAR{V}\STAR )}_{} 
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
\end{aligned}$$

#### Input
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEREF{standard-in} \\
  \KEY{Funcon} ~ & \NAMEREF{read}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \_ \xrightarrow{\NAMEDECL{standard-in}?(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR)} \_
\end{aligned}$$


  This entity represents the sequence of values input by a particular
  transition, where the empty sequence $$\SHADE{(  ~  )}$$ represents that no values are
  input. The value $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$ represents the end of the input.
  
  Composition of transitions concatenates their input sequences, except that
  when the first sequence ends with $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$, the second seqeunce has to be
  just $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{read} :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$


  $$\SHADE{\NAMEREF{read}}$$ inputs a single value from the standard-in channel, and returns it.
  If the end of the input has been reached, $$\SHADE{\NAMEREF{read}}$$ fails.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{read} \xrightarrow{\NAMEREF{standard-in}?( \VAR{V} : \mathop{\sim} \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} )}_{} 
        \VAR{V}
\\
  \KEY{Rule} ~ 
    &  \NAMEREF{read} \xrightarrow{\NAMEREF{standard-in}?( \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )}_{} 
        \NAMEHYPER{../../Abnormal}{Failing}{fail}
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
