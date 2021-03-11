


# Computations
               


## Normal computation
               


### Flowing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{seq} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
  ~ ]
\end{aligned}$$

### Giving
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving}
  ~ ]
\end{aligned}$$

### Binding
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{identifiers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
  ~ ]
\end{aligned}$$

### Storing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
  ~ ]
\end{aligned}$$

## Abnormal computation
               


### Failing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked}
  ~ ]
\end{aligned}$$

# Values
               


## Primitive values
               


### Booleans
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
  ~ ]
\end{aligned}$$

### Integers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{ints} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal}
  ~ ]
\end{aligned}$$

### The null value
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
  ~ ]
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
