{::comment}{% raw %}{:/}


----

## Threads
               


$$\begin{align*}
  [ \
  \textsf{Multithreading
          } \ & \textsf{} \\
  \textsf{Synchronising
          } \ & \textsf{} \\
  \textsf{Locks
          } \ & \textsf{} \\
  \textsf{Notifications
          } \ & \textsf{}
  \ ]
\end{align*}$$


The funcons for threads are tentative. They have not yet been rigorously
unit-tested, nor used significantly in language definitions.

The [multithreading] funcons involve multiple mutable entities, and are
generally specified by inference rules with premises involving the values of
those entities before and after a transition.

The [synchronising] funcons only involve the $$\SHADE{\NAME{store}}$$ entity, and wrap
compound funcon terms in $$\SHADE{\NAME{thread-atomic}
           (  \_ )}$$ to inhibit preemption.

Some of the unit tests are based on examples in an [IBM threads] guide.

[Multithreading]: Multithreading
  "Multithreading funcons"

[Synchronising]: Synchronising
  "Synchronising funcons"

[IBM threads]: https://www.ibm.com/support/knowledgecenter/ssw_aix_72/com.ibm.aix.genprogc/chapter12.htm
  "IBM Knowledge Centre"




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
[Threads.cbs]: https://github.com/plancomps/CBS-beta/blob/math/Unstable-Funcons-beta/Computations/Threads/Threads.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/math/Unstable-Funcons-beta/Computations/Threads/Threads.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
