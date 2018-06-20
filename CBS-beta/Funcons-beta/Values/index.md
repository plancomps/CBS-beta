Values ![PREVIEW](../preview.png)
======

The CBS library provides funcons for expressing and computing various kinds of
values:

Primitive values
----------------

- [booleans]
- [integers]
- [floats]
- [characters] 

Composite values
----------------

- algebraic [datatypes]:
  - [tuples]
  - [lists] \(strings are lists of characters)
  - [vectors]
  - [trees]
  - [references] \(pointers are [references] or [null])
  - [records]
  - [variants]
  - [classes]
  - [objects]
  - [bit-vectors]
- [sets]
- [maps]
- [multisets] \(bags)
- [graphs] \(directed)

Abstraction
------------

- [abstractions] \(closures or dynamic)
- [thunks] \(no argument)
- [functions] \(single value argument)
- [patterns] \(binding or failing)

Types
-----

- [value-types] \(representing sets of values\)

There is also a distinguished value [null], representing the absence of an 
ordinary value.

(Further kinds of values are provided in connection with particular kinds of
[computations].)

Sequences of values
-------------------

Funcons can take [sequences] of values as arguments, and compute sequences of
values as results. The only sequences that are themselves values are trivial
sequences of length one.


[values]: Value-Types/index.html#Name_values

[booleans]: Primitive/Booleans/index.html
[integers]: Primitive/Integers/index.html
[floats]: Primitive/Floats/index.html
[characters]: Primitive/Characters/index.html

[datatypes]: Composite/Datatypes/index.html
[tuples]: Composite/Tuples/index.html
[lists]: Composite/Lists/index.html
[vectors]: Composite/Vectors/index.html
[trees]: Composite/Trees/index.html
[references]: Composite/References/index.html
[records]: Composite/Records/index.html
[variants]: Composite/Variants/index.html
[classes]: Composite/Classes/index.html
[objects]: Composite/Objects/index.html
[bit-vectors]: Composite/Bits/index.html
[sets]: Composite/Sets/index.html
[maps]: Composite/Maps/index.html
[multisets]: Composite/Multisets/index.html
[graphs]: Composite/Graphs/index.html

[abstractions]: Abstraction/Generic/index.html
[thunks]: Abstraction/Thunks/index.html
[functions]: Abstraction/Functions/index.html
[patterns]: Abstraction/Patterns/index.html

[value-types]: Value-Types/index.html
[null]: Value-Types/index.html#Name_null
[computations]: ../Computations/index.md
[sequences]: Composite/Sequences/index.html
