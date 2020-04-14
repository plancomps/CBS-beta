---
layout: default
title: Values
parent: Funcons-beta
permalink: /docs/Funcons-beta/Values
nav_order: "2"
---

Values
======

The CBS library provides funcons for expressing and computing various kinds of
values:

[Primitive values]
------------------

Primitive values are not considered to be decomposable into component values.

[Composite values]
------------------

Composite values are constructed from component values.

[Abstraction values]
--------------------

Abstraction values are constructed from computations.

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

[value-types ]:   /CBS-beta/Funcons-beta/Values/Value-Types/

[Primitive values]:     /CBS-beta/docs/Funcons-beta/Values/Primitive

[Composite values]:   /CBS-beta/docs/Funcons-beta/Values/Composite

[Abstraction values]: /CBS-beta/docs/Funcons-beta/Values/Abstraction

[value-types]:  /CBS-beta/Funcons-beta/Values/Value-Types/
[sequences]:    /CBS-beta/Funcons-beta/Values/Composite/Sequences/

[computations]: /CBS-beta/docs/Funcons-beta/Computations
