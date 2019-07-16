---
layout: default
title: Values
parent: Funcons-beta
has_children: true
permalink: /CBS-beta/Funcons-beta/Values
nav_order: "2"
---

Values
======

The CBS library provides funcons for expressing and computing various kinds of
values:

Primitive values
----------------

- [booleans]\: the usual Boolean truth-values
- [integers]\: unbounded integer arithmetic
- [floats]\: IEEE floating point arithmetic
- [characters]\: Unicode and its subtypes
- [null-type]\: a singleton type

Composite values
----------------

- algebraic [datatypes]\:
  - [tuples]\: grouped sequences of values
  - [lists]\:  grouped sequences of values with the usual operations
      \(strings are lists of characters)
  - [vectors]\: grouped sequences of values
  - [trees]\: finitely branching, with values at branch points
  - [references]\: values that represent other values
      \(pointers are [references] or [pointer-null])
  - [records]\: unordered indexed aggregate values
  - [variants]\: values tagged by identifiers
  - [classes]\: collections of features, allowing multiple superclasses,
       with abstractions to create objects
  - [objects]\: classified collections of features
  - [bit-vectors]\: including bits and bytes
- [sets]\: unordered, unindexed collections of values
- [maps]\: unordered, indexed collections of values
- [multisets]\: unordered, unindexed collections of values with multiplicities
    (bags)
- [graphs]\: directed, possibly cyclic, graphs

Abstraction
------------

- [abstractions]\: values corresponding to procedural abstractions
- [thunks]\: values formed from abstractions not referencing any given value
- [functions]\: values formed from abstractions referencing a single given value
- [patterns]\: values formed from abstractions matching a single given value

Types
-----

- [value-types]\: values representing sets of values

(Further kinds of values are provided in connection with particular kinds of
[computations].)

Sequences of values
-------------------

Funcons can take [sequences] of values as arguments, and compute sequences of
values as results. The only sequences that are themselves values are trivial
sequences of length one.

The absence of a computed value is represented by the empty sequence `( )`.
Funcons that may compute `( )` have result types of the form `T?`, and
generally need to be preceded by `checked` when used as arguments of other
funcons.

[values]:       /CBS-beta/Funcons-beta/Values/Value-Types/

[booleans]:     /CBS-beta/Funcons-beta/Values/Primitive/Booleans/
[integers]:     /CBS-beta/Funcons-beta/Values/Primitive/Integers/
[floats]:       /CBS-beta/Funcons-beta/Values/Primitive/Floats/
[characters]:   /CBS-beta/Funcons-beta/Values/Primitive/Characters/
[null-type]:    /CBS-beta/Funcons-beta/Values/Primitive/Null/
[pointer-null]: /CBS-beta/Funcons-beta/Values/Composite/References/

[datatypes]:    /CBS-beta/Funcons-beta/Values/Composite/Datatypes/
[tuples]:       /CBS-beta/Funcons-beta/Values/Composite/Tuples/
[lists]:        /CBS-beta/Funcons-beta/Values/Composite/Lists/
[vectors]:      /CBS-beta/Funcons-beta/Values/Composite/Vectors/
[trees]:        /CBS-beta/Funcons-beta/Values/Composite/Trees/
[references]:   /CBS-beta/Funcons-beta/Values/Composite/References/
[pointer-null]: /CBS-beta/Funcons-beta/Values/Composite/References/
[records]:      /CBS-beta/Funcons-beta/Values/Composite/Records/
[variants]:     /CBS-beta/Funcons-beta/Values/Composite/Variants/
[classes]:      /CBS-beta/Funcons-beta/Values/Composite/Classes/
[objects]:      /CBS-beta/Funcons-beta/Values/Composite/Objects/
[bit-vectors]:  /CBS-beta/Funcons-beta/Values/Composite/Bits/
[sets]:         /CBS-beta/Funcons-beta/Values/Composite/Sets/
[maps]:         /CBS-beta/Funcons-beta/Values/Composite/Maps/
[multisets]:    /CBS-beta/Funcons-beta/Values/Composite/Multisets/
[graphs]:       /CBS-beta/Funcons-beta/Values/Composite/Graphs/

[abstractions]: /CBS-beta/Funcons-beta/Values/Abstraction/Generic/
[thunks]:       /CBS-beta/Funcons-beta/Values/Abstraction/Thunks/
[functions]:    /CBS-beta/Funcons-beta/Values/Abstraction/Functions/
[patterns]:     /CBS-beta/Funcons-beta/Values/Abstraction/Patterns/

[value-types]:  /CBS-beta/Funcons-beta/Values/Value-Types/
[computations]: /CBS-beta/Funcons-beta/Computations/
[sequences]:    /CBS-beta/Funcons-beta/Values/Composite/Sequences/
