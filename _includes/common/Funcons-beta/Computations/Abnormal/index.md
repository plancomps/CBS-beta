Abnormal computations
=====================

Funcons for expressing *abnormal computation* may terminate normally or abnormally.
Some of these funcons always cause abnormal termination; others may handle abnormal termination and resume normal flow of control.

When a computation terminates abnormally, it generally signals a value, which can be inspected by enclosing handlers.
Failure is a particular kind of abnormal termination that does not signal a value, and has special handlers.

The CBS library includes funcons corresponding to the following concepts:

[Abrupting]
: terminating computations abruptly, and handling abrupt termination

[Failing]
: abrupt termination for an unspecified reason

[Throwing]
: abrupt termination for a specified reason

[Returning]
: abrupt termination giving a computed value

[Breaking]
: abrupt termination in connection with flow of control

[Continuing]
: abrupt termination in connection with flow of control

[Controlling]
: creating and using delimited continuations

[abrupting]:   Abrupting
[failing]:     Failing
[throwing]:    Throwing
[returning]:   Returning
[breaking]:    Breaking
[continuing]:  Continuing
[controlling]: Controlling
