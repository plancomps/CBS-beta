Computations
============

The CBS library provides funcons for expressing and composing various kinds of
computations.
A funcon takes a sequence of [values] and/or computations as arguments, and may compute a sequence of values.

A *value argument* is the result of a previous computation, and can be inspected; a *computation argument*, in contrast, can only be executed or ignored.

A computation may terminate *normally* or *abnormally*, or never terminate. 
Values (and sequences of values) correspond to immediately terminating computations.

[Normal computations]
--------------------

Funcons for expressing normal computations compute (sequences of) values on normal termination.
They propagate abnormal termination of their arguments.

[Abnormal computations]
----------------------

Funcons for expressing abnormal computations may terminate abruptly without computing values; they also include handlers for abnormal termination.


[Normal computations]:   Normal
[Abnormal computations]: Abnormal

[Values]:                ../Values
