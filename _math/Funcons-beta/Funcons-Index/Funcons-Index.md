


# Computations
               


## Types of computation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations}{Computation-Types}{computation-types}
  ~ ]
\end{aligned}$$

## Normal computation
               


### Flowing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{left-to-right} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{l-to-r} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{right-to-left} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{r-to-l} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{sequential} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{seq} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{effect} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{choice} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{if-true-else} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{if-else} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{while-true} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{while} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{do-while-true} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{do-while} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{interleave} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{yielding} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{signal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{yielded} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{yield} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{yield-on-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{yield-on-abrupt} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Flowing}{atomic}
  ~ ]
\end{aligned}$$

### Giving
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{given-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{initialise-giving} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{given} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{no-given} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-repeat} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-repeat} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-filter} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-filter} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{fold-left} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Giving}{fold-right}
  ~ ]
\end{aligned}$$

### Binding
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{environments} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{envs} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{identifiers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{ids} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{identifier-tagged} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{id-tagged} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{fresh-identifier} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{environment} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{env} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bind-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bind} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{unbind} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bound-directly} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{closed} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{accumulate} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{collateral} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{bind-recursively} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Binding}{recursive}
  ~ ]
\end{aligned}$$

### Generating
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Computations/Normal}{Generating}{atoms} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Generating}{used-atom-set} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Generating}{initialise-generating} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Generating}{fresh-atom} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Generating}{use-atom-not-in}
  ~ ]
\end{aligned}$$

### Storing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{locations} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{locs} \\
  \KEY{Type} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{stores} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{store} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{store-clear} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{variables} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{vars} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{variable} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{var} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{allocate-variable} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{alloc} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{recycle-variables} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{recycle} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{initialise-variable} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{init} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{assigned} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{current-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{un-assign} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{structural-assign} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Storing}{structural-assigned}
  ~ ]
\end{aligned}$$

### Linking
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{links} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{initialise-linking} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{link} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-link} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-initialised-link} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-init-link} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{set-link} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Linking}{follow-if-link}
  ~ ]
\end{aligned}$$

### Interacting
               


#### Input
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Interacting}{standard-in} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Interacting}{read}
  ~ ]
\end{aligned}$$

#### Output
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Interacting}{standard-out} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Interacting}{print}
  ~ ]
\end{aligned}$$

## Abnormal computation
               


### Terminating abruptly
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{stuck} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{abrupted} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{finalise-abrupting} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{abrupt} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{handle-abrupt} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{finally}
  ~ ]
\end{aligned}$$

### Failing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{failing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{failed} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{else} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{else-choice} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{checked} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Failing}{check-true}
  ~ ]
\end{aligned}$$

### Throwing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{throwing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{thrown} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{finalise-throwing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{throw} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{handle-thrown} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{handle-recursively} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Throwing}{catch-else-throw}
  ~ ]
\end{aligned}$$

### Returning
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Returning}{returning} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Returning}{returned} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Returning}{finalise-returning} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Returning}{return} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Returning}{handle-return}
  ~ ]
\end{aligned}$$

### Breaking
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Breaking}{breaking} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Breaking}{broken} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Breaking}{finalise-breaking} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Breaking}{break} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Breaking}{handle-break}
  ~ ]
\end{aligned}$$

### Continuing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continuing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continued} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Continuing}{finalise-continuing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continue} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Continuing}{handle-continue}
  ~ ]
\end{aligned}$$

### Controlling
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{continuations} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{continuation} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{plug-signal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{hole} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{resume-continuation} \\
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{control-signal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{control} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{delimit-current-continuation} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Computations/Abnormal}{Controlling}{delimit-cc}
  ~ ]
\end{aligned}$$

# Values
               


## Value Types
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values}{Value-Types}{values} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{vals} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values}{Value-Types}{value-types} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{types} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values}{Value-Types}{empty-type} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values}{Value-Types}{is-in-type} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{is} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values}{Value-Types}{is-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{is-val} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values}{Value-Types}{when-true} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{when} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values}{Value-Types}{cast-to-type} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{cast} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values}{Value-Types}{ground-values} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{ground-vals} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values}{Value-Types}{is-equal} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values}{Value-Types}{is-eq}
  ~ ]
\end{aligned}$$

## Primitive values
               


### Booleans
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{false} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{not} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{implies} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{and} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{or} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{exclusive-or} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Booleans}{xor}
  ~ ]
\end{aligned}$$

### Integers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{ints} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integers-from} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{from} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integers-up-to} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{up-to} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{bounded-integers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{bounded-ints} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{positive-integers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{pos-ints} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{negative-integers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{neg-ints} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{natural-numbers} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{nats} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{natural-successor} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{nat-succ} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{natural-predecessor} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{nat-pred} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-subtract} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-sub} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-multiply} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-mul} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-modulo} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-mod} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-power} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-pow} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-absolute-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-abs} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-less} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{is-less} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-greater} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{is-greater} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-greater-or-equal} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{is-greater-or-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{binary-natural} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{binary} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{octal-natural} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{octal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{decimal-natural} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{decimal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{hexadecimal-natural} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{hexadecimal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Integers}{integer-sequence}
  ~ ]
\end{aligned}$$

### Floats
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-formats} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{binary32} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{binary64} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{binary128} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{decimal64} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{decimal128} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{floats} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{quiet-not-a-number} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{qNaN} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{signaling-not-a-number} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{sNaN} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{positive-infinity} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{pos-inf} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{negative-infinity} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{neg-inf} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-convert} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-less} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-less-or-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-greater} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-greater-or-equal} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-negate} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-absolute-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-add} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-subtract} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-multiply} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-multiply-add} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-divide} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-remainder} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-sqrt} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-integer-power} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-float-power} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-round-ties-to-even} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-round-ties-to-infinity} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-floor} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-ceiling} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-truncate} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-pi} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-e} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-log} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-log10} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-exp} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-sin} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-cos} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-tan} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-asin} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-acos} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-atan} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-sinh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-cosh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-tanh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-asinh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-acosh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-atanh} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Floats}{float-atan2}
  ~ ]
\end{aligned}$$

### Characters
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{characters} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{chars} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-characters} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-chars} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-points} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-character} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-char} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-point} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{unicode} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{basic-multilingual-plane-characters} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{bmp-chars} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{basic-multilingual-plane-points} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{iso-latin-1-characters} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{latin-1-chars} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{iso-latin-1-points} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-characters} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-chars} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-points} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-character} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-char} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{utf-8} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{utf-16} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{utf-32} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{backspace} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{horizontal-tab} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{line-feed} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{form-feed} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{carriage-return} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{double-quote} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{single-quote} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Characters}{backslash}
  ~ ]
\end{aligned}$$

### The null value
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Primitive}{Null}{null-type} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Primitive}{Null}{null-value} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Primitive}{Null}{null}
  ~ ]
\end{aligned}$$

## Composite values
               


### Sequences of values
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{length} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{index} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{is-in} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{first} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{second} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{third} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{first-n} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{drop-first-n} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{reverse} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{n-of} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sequences}{intersperse}
  ~ ]
\end{aligned}$$

### Datatypes
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value-id} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value-elements}
  ~ ]
\end{aligned}$$

### Tuples
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Tuples}{tuples} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Tuples}{tuple-elements} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Tuples}{tuple-zip}
  ~ ]
\end{aligned}$$

### Lists
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Lists}{lists} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-elements} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-nil} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Lists}{nil} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-cons} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Lists}{cons} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-head} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Lists}{head} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-tail} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Lists}{tail} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-length} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Lists}{list-append}
  ~ ]
\end{aligned}$$

### Strings
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Strings}{strings} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Strings}{string} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Strings}{string-append} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Strings}{to-string}
  ~ ]
\end{aligned}$$

### Vectors
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Vectors}{vectors} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Vectors}{vector} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Vectors}{vector-elements}
  ~ ]
\end{aligned}$$

### Bits and bit vectors
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bits} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vectors} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bytes} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Bits}{octets} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-not} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-and} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-or} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-xor} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-shift-left} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-logical-shift-right} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-arithmetic-shift-right} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{integer-to-bit-vector} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-to-integer} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-to-natural} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{unsigned-bit-vector-maximum} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{signed-bit-vector-maximum} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{signed-bit-vector-minimum} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{is-in-signed-bit-vector} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Bits}{is-in-unsigned-bit-vector}
  ~ ]
\end{aligned}$$

### Sets
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Sets}{sets} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-elements} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{is-in-set} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{is-subset} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-insert} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-unite} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-intersect} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-difference} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{set-size} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{some-element} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Sets}{element-not-in}
  ~ ]
\end{aligned}$$

### Maps
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Maps}{maps} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-elements} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Maps}{lookup} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-domain} \\
  \KEY{Alias} ~ & \NAMEHYPER{../Values/Composite}{Maps}{dom} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-override} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-unite} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Maps}{map-delete}
  ~ ]
\end{aligned}$$

### Multisets (bags)
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multisets} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multiset} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-elements} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-occurrences} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-insert} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-delete} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Multisets}{is-submultiset}
  ~ ]
\end{aligned}$$

### Trees
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Trees}{trees} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{tree} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{tree-root-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{tree-branch-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{single-branching-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{forest-root-value-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{forest-branch-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Trees}{forest-value-sequence}
  ~ ]
\end{aligned}$$

### Graphs
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{Graphs}{directed-graphs} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Graphs}{is-cyclic} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Graphs}{topological-sort}
  ~ ]
\end{aligned}$$

### References and pointers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{References}{references} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{References}{reference} \\
  \KEY{Type} ~ & \NAMEHYPER{../Values/Composite}{References}{pointers} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{References}{dereference}
  ~ ]
\end{aligned}$$

### Records
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Records}{records} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Records}{record} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Records}{record-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Records}{record-select}
  ~ ]
\end{aligned}$$

### Variants
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Variants}{variants} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Variants}{variant} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Variants}{variant-id} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Variants}{variant-value}
  ~ ]
\end{aligned}$$

### Classes
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Classes}{classes} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class-instantiator} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class-feature-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class-superclass-name-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class-name-tree} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{is-subclass-name} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Classes}{class-name-single-inheritance-feature-map}
  ~ ]
\end{aligned}$$

### Objects
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Composite}{Objects}{objects} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-identity} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-class-name} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-feature-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-subobject-sequence} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-tree} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Composite}{Objects}{object-single-inheritance-feature-map}
  ~ ]
\end{aligned}$$

## Abstraction values
               


### Generic abstractions
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEHYPER{../Values/Abstraction}{Generic}{abstractions} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Generic}{abstraction} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Generic}{closure} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Generic}{enact}
  ~ ]
\end{aligned}$$

### Thunks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Abstraction}{Thunks}{thunks} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Thunks}{thunk} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Thunks}{force}
  ~ ]
\end{aligned}$$

### Functions
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{functions} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{function} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{apply} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{supply} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{compose} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{uncurry} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{curry} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Functions}{partial-apply}
  ~ ]
\end{aligned}$$

### Patterns
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{patterns} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-any} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-bind} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-type} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-else} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-unite} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{match} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{match-loosely} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-match} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-match-loosely} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-variant-value}
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
