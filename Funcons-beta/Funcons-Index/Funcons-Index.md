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




# Computations
               


## Types of computation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations}{Computation-Types}{computation-types}
  \ ]
\end{align*}$$

## Normal computation
               


### Flowing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{left-to-right} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{l-to-r} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{right-to-left} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{r-to-l} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{sequential} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{seq} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{effect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{choice} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{if-true-else} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{if-else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{while-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{while} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{do-while-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{do-while} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{interleave} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{yielding} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{signal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{yielded} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{yield} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{yield-on-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{yield-on-abrupt} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Flowing}{atomic}
  \ ]
\end{align*}$$

### Giving
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{given-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{initialise-giving} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{no-given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-repeat} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-repeat} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{left-to-right-filter} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{interleave-filter} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{fold-left} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Giving}{fold-right}
  \ ]
\end{align*}$$

### Binding
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{environments} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{envs} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{identifiers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{ids} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{identifier-tagged} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{id-tagged} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{fresh-identifier} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{environment} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{env} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bind-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{unbind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bound-directly} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{closed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{accumulate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{collateral} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{bind-recursively} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Binding}{recursive}
  \ ]
\end{align*}$$

### Generating
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Computations/Normal}{Generating}{atoms} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Generating}{used-atom-set} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Generating}{initialise-generating} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Generating}{fresh-atom} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Generating}{use-atom-not-in}
  \ ]
\end{align*}$$

### Storing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{locations} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{locs} \\
  \KEY{Type} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{stores} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{store} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{store-clear} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{variables} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{vars} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{var} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{allocate-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{alloc} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{recycle-variables} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{recycle} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{initialise-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{init} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{assigned} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{current-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{un-assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{structural-assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Storing}{structural-assigned}
  \ ]
\end{align*}$$

### Linking
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{links} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{initialise-linking} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{link} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-link} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-initialised-link} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{fresh-init-link} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{set-link} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Linking}{follow-if-link}
  \ ]
\end{align*}$$

### Interacting
               


#### Input
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Interacting}{standard-in} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Interacting}{read}
  \ ]
\end{align*}$$

#### Output
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Interacting}{standard-out} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Interacting}{print}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Terminating abruptly
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{stuck} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{abrupted} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{finalise-abrupting} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{abrupt} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{handle-abrupt} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Abrupting}{finally}
  \ ]
\end{align*}$$

### Failing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{failed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{else-choice} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{checked} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Failing}{check-true}
  \ ]
\end{align*}$$

### Throwing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{throwing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{thrown} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{finalise-throwing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{throw} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{handle-thrown} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{handle-recursively} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Throwing}{catch-else-throw}
  \ ]
\end{align*}$$

### Returning
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Returning}{returning} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Returning}{returned} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Returning}{finalise-returning} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Returning}{return} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Returning}{handle-return}
  \ ]
\end{align*}$$

### Breaking
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Breaking}{breaking} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Breaking}{broken} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Breaking}{finalise-breaking} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Breaking}{break} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Breaking}{handle-break}
  \ ]
\end{align*}$$

### Continuing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continuing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continued} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Continuing}{finalise-continuing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Continuing}{continue} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Continuing}{handle-continue}
  \ ]
\end{align*}$$

### Controlling
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{continuations} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{continuation} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{plug-signal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{hole} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{resume-continuation} \\
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{control-signal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{control} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{delimit-current-continuation} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Computations/Abnormal}{Controlling}{delimit-cc}
  \ ]
\end{align*}$$

# Values
               


## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values}{Value-Types}{values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{vals} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values}{Value-Types}{value-types} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{types} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values}{Value-Types}{empty-type} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values}{Value-Types}{is-in-type} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{is} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values}{Value-Types}{is-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{is-val} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values}{Value-Types}{when-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{when} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values}{Value-Types}{cast-to-type} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{cast} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values}{Value-Types}{ground-values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{ground-vals} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values}{Value-Types}{is-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values}{Value-Types}{is-eq}
  \ ]
\end{align*}$$

## Primitive values
               


### Booleans
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{false} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{not} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{implies} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{and} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{or} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{exclusive-or} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Booleans}{xor}
  \ ]
\end{align*}$$

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integers-from} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{from} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integers-up-to} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{up-to} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{bounded-integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{bounded-ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{positive-integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{pos-ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{negative-integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{neg-ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{natural-numbers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{nats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{natural-successor} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{nat-succ} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{natural-predecessor} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{nat-pred} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-subtract} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-sub} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-multiply} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-mul} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-modulo} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-mod} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-power} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-pow} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-absolute-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-abs} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-less} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{is-less} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-greater} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{is-greater} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-is-greater-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{is-greater-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{binary-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{binary} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{octal-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{octal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{decimal-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{decimal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{hexadecimal-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{hexadecimal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Integers}{integer-sequence}
  \ ]
\end{align*}$$

### Floats
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-formats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{binary32} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{binary64} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{binary128} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{decimal64} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{decimal128} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{floats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{quiet-not-a-number} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{qNaN} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{signaling-not-a-number} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{sNaN} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{positive-infinity} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{pos-inf} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{negative-infinity} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{neg-inf} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-convert} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-less} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-greater} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-is-greater-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-negate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-absolute-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-subtract} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-multiply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-multiply-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-divide} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-remainder} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-sqrt} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-integer-power} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-float-power} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-round-ties-to-even} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-round-ties-to-infinity} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-floor} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-ceiling} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-truncate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-pi} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-e} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-log} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-log10} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-exp} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-sin} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-cos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-tan} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-asin} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-acos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-atan} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-sinh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-cosh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-tanh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-asinh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-acosh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-atanh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Floats}{float-atan2}
  \ ]
\end{align*}$$

### Characters
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{chars} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-chars} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-points} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-character} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-char} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode-point} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{unicode} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{basic-multilingual-plane-characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{bmp-chars} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{basic-multilingual-plane-points} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{iso-latin-1-characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{latin-1-chars} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{iso-latin-1-points} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-chars} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-points} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-character} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{ascii-char} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{utf-8} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{utf-16} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{utf-32} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{backspace} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{horizontal-tab} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{line-feed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{form-feed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{carriage-return} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{double-quote} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{single-quote} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Characters}{backslash}
  \ ]
\end{align*}$$

### The null value
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Primitive}{Null}{null-type} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Primitive}{Null}{null-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Primitive}{Null}{null}
  \ ]
\end{align*}$$

## Composite values
               


### Sequences of values
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{length} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{is-in} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{first} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{second} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{third} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{first-n} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{drop-first-n} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{reverse} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{n-of} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sequences}{intersperse}
  \ ]
\end{align*}$$

### Datatypes
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value-id} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Datatypes}{datatype-value-elements}
  \ ]
\end{align*}$$

### Tuples
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Tuples}{tuples} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Tuples}{tuple-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Tuples}{tuple-zip}
  \ ]
\end{align*}$$

### Lists
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Lists}{lists} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-nil} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Lists}{nil} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-cons} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Lists}{cons} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-head} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Lists}{head} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-tail} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Lists}{tail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-length} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Lists}{list-append}
  \ ]
\end{align*}$$

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Strings}{strings} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Strings}{string} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Strings}{string-append} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Strings}{to-string}
  \ ]
\end{align*}$$

### Vectors
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Vectors}{vectors} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Vectors}{vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Vectors}{vector-elements}
  \ ]
\end{align*}$$

### Bits and bit vectors
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bits} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vectors} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bytes} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Bits}{octets} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-not} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-and} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-or} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-xor} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-shift-left} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-logical-shift-right} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-arithmetic-shift-right} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{integer-to-bit-vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-to-integer} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{bit-vector-to-natural} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{unsigned-bit-vector-maximum} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{signed-bit-vector-maximum} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{signed-bit-vector-minimum} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{is-in-signed-bit-vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Bits}{is-in-unsigned-bit-vector}
  \ ]
\end{align*}$$

### Sets
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Sets}{sets} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{is-in-set} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{is-subset} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-insert} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-intersect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-difference} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{set-size} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{some-element} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Sets}{element-not-in}
  \ ]
\end{align*}$$

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Maps}{maps} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Maps}{lookup} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-domain} \\
  \KEY{Alias} \quad & \NAMEHYPER{../Values/Composite}{Maps}{dom} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-override} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Maps}{map-delete}
  \ ]
\end{align*}$$

### Multisets (bags)
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multisets} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multiset} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-occurrences} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-insert} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{multiset-delete} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Multisets}{is-submultiset}
  \ ]
\end{align*}$$

### Trees
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Trees}{trees} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{tree} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{tree-root-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{tree-branch-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{single-branching-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{forest-root-value-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{forest-branch-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Trees}{forest-value-sequence}
  \ ]
\end{align*}$$

### Graphs
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{Graphs}{directed-graphs} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Graphs}{is-cyclic} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Graphs}{topological-sort}
  \ ]
\end{align*}$$

### References and pointers
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{References}{references} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{References}{reference} \\
  \KEY{Type} \quad & \NAMEHYPER{../Values/Composite}{References}{pointers} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{References}{dereference}
  \ ]
\end{align*}$$

### Records
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Records}{records} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Records}{record} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Records}{record-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Records}{record-select}
  \ ]
\end{align*}$$

### Variants
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Variants}{variants} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Variants}{variant} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Variants}{variant-id} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Variants}{variant-value}
  \ ]
\end{align*}$$

### Classes
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Classes}{classes} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class-instantiator} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class-feature-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class-superclass-name-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class-name-tree} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{is-subclass-name} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Classes}{class-name-single-inheritance-feature-map}
  \ ]
\end{align*}$$

### Objects
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Composite}{Objects}{objects} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-identity} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-class-name} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-feature-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-subobject-sequence} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-tree} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Composite}{Objects}{object-single-inheritance-feature-map}
  \ ]
\end{align*}$$

## Abstraction values
               


### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../Values/Abstraction}{Generic}{abstractions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Generic}{abstraction} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Generic}{closure} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Generic}{enact}
  \ ]
\end{align*}$$

### Thunks
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Abstraction}{Thunks}{thunks} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Thunks}{thunk} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Thunks}{force}
  \ ]
\end{align*}$$

### Functions
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{functions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{function} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{apply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{supply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{compose} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{uncurry} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{curry} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Functions}{partial-apply}
  \ ]
\end{align*}$$

### Patterns
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{patterns} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-any} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-bind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-type} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{pattern-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{match} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{match-loosely} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-match} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-match-loosely} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Values/Abstraction}{Patterns}{case-variant-value}
  \ ]
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
[Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Funcons-Index/Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Funcons-Index/Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
