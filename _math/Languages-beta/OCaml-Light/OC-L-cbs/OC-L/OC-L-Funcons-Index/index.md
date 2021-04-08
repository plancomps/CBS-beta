---
title: "OC-L-Funcons-Index"
math: katex
parent: OC-L
ancestor: Languages-beta

---
[Languages-beta] : [OC-L-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

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
               


## Normal computation
               


### Flowing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{seq} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
  \ ]
\end{align*}$$

### Giving
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{interleave-map}
  \ ]
\end{align*}$$

### Binding
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{identifiers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{accumulate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{recursive}
  \ ]
\end{align*}$$

### Storing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{vars} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
  \ ]
\end{align*}$$

### Interacting
               


#### Input
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
  \ ]
\end{align*}$$

#### Output
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Failing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true}
  \ ]
\end{align*}$$

### Throwing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{finalise-throwing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{throw} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Throwing}{handle-thrown}
  \ ]
\end{align*}$$

# Values
               


## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{vals} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-in-type} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-vals} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-eq}
  \ ]
\end{align*}$$

## Primitive values
               


### Booleans
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{and} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{or}
  \ ]
\end{align*}$$

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{bounded-integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{bounded-ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-successor} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-sub} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mul} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-modulo} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mod} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-absolute-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-abs} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-greater} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-greater-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-sequence}
  \ ]
\end{align*}$$

### Floats
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-formats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{binary64} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{floats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-negate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-absolute-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-subtract} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-multiply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-divide} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-remainder} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-sqrt} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-float-power} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-floor} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-ceiling} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-truncate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-log} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-log10} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-exp} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-sin} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-cos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-tan} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-asin} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-acos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-atan} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-sinh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-cosh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-tanh} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-atan2}
  \ ]
\end{align*}$$

### Characters
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{characters} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{chars} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{unicode-character} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{unicode-char} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{ascii-character} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{ascii-char} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{backspace} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{horizontal-tab} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{line-feed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{carriage-return} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{backslash}
  \ ]
\end{align*}$$

### The null value
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
  \ ]
\end{align*}$$

## Composite values
               


### Sequences of values
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{reverse} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{n-of} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{intersperse}
  \ ]
\end{align*}$$

### Tuples
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements}
  \ ]
\end{align*}$$

### Lists
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-nil} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-cons} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-head} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-tail} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{tail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-length} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-append}
  \ ]
\end{align*}$$

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string}
  \ ]
\end{align*}$$

### Vectors
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
  \ ]
\end{align*}$$

### Bits and bit vectors
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vectors} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-not} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-and} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-or} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-xor} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-shift-left} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-logical-shift-right} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-arithmetic-shift-right} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{integer-to-bit-vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vector-to-integer} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{signed-bit-vector-maximum} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{signed-bit-vector-minimum}
  \ ]
\end{align*}$$

### Sets
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
  \ ]
\end{align*}$$

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{maps} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-domain} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{dom} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
  \ ]
\end{align*}$$

### Records
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{records} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record-select}
  \ ]
\end{align*}$$

### Variants
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variants} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variant}
  \ ]
\end{align*}$$

## Abstraction values
               


### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
  \ ]
\end{align*}$$

### Functions
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{curry}
  \ ]
\end{align*}$$

### Patterns
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-any} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-bind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match-loosely} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{case-match}
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
[OC-L-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-Funcons-Index/OC-L-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
