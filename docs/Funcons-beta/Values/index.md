---
layout: default
title: Values
parent: Funcons-beta
has_children: true
permalink: /docs/Funcons-beta/Values
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

[values]:       /Funcons-beta/Values/Value-Types/

[booleans]:     /Funcons-beta/Values/Primitive/Booleans/
[integers]:     /Funcons-beta/Values/Primitive/Integers/
[floats]:       /Funcons-beta/Values/Primitive/Floats/
[characters]:   /Funcons-beta/Values/Primitive/Characters/
[null-type]:    /Funcons-beta/Values/Primitive/Null/
[pointer-null]: /Funcons-beta/Values/Composite/References/

[datatypes]:    /Funcons-beta/Values/Composite/Datatypes/
[tuples]:       /Funcons-beta/Values/Composite/Tuples/
[lists]:        /Funcons-beta/Values/Composite/Lists/
[vectors]:      /Funcons-beta/Values/Composite/Vectors/
[trees]:        /Funcons-beta/Values/Composite/Trees/
[references]:   /Funcons-beta/Values/Composite/References/
[pointer-null]: /Funcons-beta/Values/Composite/References/
[records]:      /Funcons-beta/Values/Composite/Records/
[variants]:     /Funcons-beta/Values/Composite/Variants/
[classes]:      /Funcons-beta/Values/Composite/Classes/
[objects]:      /Funcons-beta/Values/Composite/Objects/
[bit-vectors]:  /Funcons-beta/Values/Composite/Bits/
[sets]:         /Funcons-beta/Values/Composite/Sets/
[maps]:         /Funcons-beta/Values/Composite/Maps/
[multisets]:    /Funcons-beta/Values/Composite/Multisets/
[graphs]:       /Funcons-beta/Values/Composite/Graphs/

[abstractions]: /Funcons-beta/Values/Abstraction/Generic/
[thunks]:       /Funcons-beta/Values/Abstraction/Thunks/
[functions]:    /Funcons-beta/Values/Abstraction/Functions/
[patterns]:     /Funcons-beta/Values/Abstraction/Patterns/

[value-types]:  /Funcons-beta/Values/Value-Types/
[sequences]:    /Funcons-beta/Values/Composite/Sequences/

[computations]: /docs/Funcons-beta/Computations
