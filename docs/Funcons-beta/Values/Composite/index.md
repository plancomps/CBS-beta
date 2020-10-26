---
layout: default
title: Composite
parent: Values
permalink: /docs/Funcons-beta/Values/Composite
nav_order: "6"
has_toc: false
---

Composite values
================

Conceptually, composite values are constructed from sequences of argument values.
The types of composite values include parametrised algebraic data types, with a generic representation.
Various algebraic datatypes are defined, and new ones can be introduced.
Composite values include also built-in parametrised types of sets, maps, multi-sets, and graphs.

A composite value can always be decomposed into a sequence of values from which it can be reconstructed.
For algebraic datatypes such as lists, the decomposition is unique.
For a built-in type such as sets, the funcon provided to compute values is not a constructor. and it may compute the same composite value from different sequences of arguments.
All composite [ground values] can be tested for equality.

The CBS library includes types of composite values corresponding to the following concepts:

Algebraic datatypes
-------------------

Algebraic [datatypes] correspond to unions of subtypes,
The values of each subtype generally consist of a fixed constructor identifier together with different sequences of argument values.
The constructors can be declared separately from the types of their values, supporting GADTs.

[Tuples]
: grouped sequences of values

[Lists]
: grouped sequences of values with the usual operations (strings are lists of characters)

[Vectors]
: grouped sequences of values

[Trees]
: finitely branching, with values at branch points

[References]
: values that represent other values (pointers are [references] or [pointer-null])

[Records]
: unordered indexed aggregate values

[Variants]
: values tagged by identifiers

[Classes]
: collections of features, allowing multiple superclasses, with abstractions to create objects

[Objects]
: classified collections of features

[Bit-vectors]
: including bits and bytes

Other types
-----------

The following types of composite values are all built-in.
The funcons used to compute such values are not regarded as constructors, as they are not injective.

[Sets]
: unordered, unindexed collections of values

[Maps]
: unordered, indexed collections of values

[Multisets]
: unordered, unindexed collections of values with multiplicities (bags)

[Graphs]
: directed, possibly cyclic, graphs

[values]:       /CBS-beta/Funcons-beta/Values/Value-Types/

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

[value-types]:  /CBS-beta/Funcons-beta/Values/Value-Types/
[sequences]:    /CBS-beta/Funcons-beta/Values/Composite/Sequences/

[computations]: /CBS-beta/docs/Funcons-beta/Computations

[ground values]: /CBS-beta/docs/Funcons-beta/Values#ground-values
