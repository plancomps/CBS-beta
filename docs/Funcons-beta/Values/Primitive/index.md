---
layout: default
title: Primitive
parent: Values
permalink: /docs/Funcons-beta/Values/Primitive
nav_order: "5"
has_toc: false
---

Primitive values
================

Conceptually, primitive values are atomic, and not formed from other values:
each primitive value corresponds to a constant constructor.
For large (or infinite) types of primitive values, however, it is infeasible to declare a separate constant for each value.
So in practice, funcons used to construct primitive values usually take other values as arguments.
For example, a funcon for constructing a character value takes the integer corresponding to its point in a Unicode plane as argument;
and a funcon for constructing an integer value takes its representation in decimal notation as a string argument.

The CBS library includes types of primitive values corresponding to the following concepts:

[Booleans]
: the usual Boolean truth-values

[Integers]
: unbounded integer arithmetic, together with subtypes of bounded integers

[Floats]
: IEEE floating point arithmetic

[Characters]
: Unicode, its various subtypes, and its encodings as byte sequences

[null-type]
: a singleton type

[values]:       /CBS-beta/Funcons-beta/Values/Value-Types/

[booleans]:     /CBS-beta/Funcons-beta/Values/Primitive/Booleans/
[integers]:     /CBS-beta/Funcons-beta/Values/Primitive/Integers/
[floats]:       /CBS-beta/Funcons-beta/Values/Primitive/Floats/
[characters]:   /CBS-beta/Funcons-beta/Values/Primitive/Characters/
[null-type]:    /CBS-beta/Funcons-beta/Values/Primitive/Null/
[pointer-null]: /CBS-beta/Funcons-beta/Values/Composite/References/

[value-types]:  /CBS-beta/Funcons-beta/Values/Value-Types/
[sequences]:    /CBS-beta/Funcons-beta/Values/Composite/Sequences/

[computations]: /CBS-beta/docs/Funcons-beta/Computations
