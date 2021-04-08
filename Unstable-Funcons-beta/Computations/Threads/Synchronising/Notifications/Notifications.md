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

#### Notifications
               


$$\begin{align*}
  [ \
  \textsf{Barriers
          } \ & \textsf{} \\
  \KEY{Funcon} \quad & \NAMEREF{barrier-create} \\
  \KEY{Funcon} \quad & \NAMEREF{barrier-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{barrier-sync-else-wait} \\
  \textsf{Conditions
          } \ & \textsf{} \\
  \KEY{Funcon} \quad & \NAMEREF{condition-create} \\
  \KEY{Funcon} \quad & \NAMEREF{condition-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{condition-wait-with-lock} \\
  \KEY{Funcon} \quad & \NAMEREF{condition-notify-all} \\
  \KEY{Funcon} \quad & \NAMEREF{condition-notify-first} \\
  \textsf{Rendezvous
          } \ & \textsf{} \\
  \KEY{Funcon} \quad & \NAMEREF{rendezvous-create} \\
  \KEY{Funcon} \quad & \NAMEREF{rendezvous-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{rendezvous-sync-else-wait}
  \ ]
\end{align*}$$


Threads may synchronise by waiting for notifications. In contrast to locks,
notifications are ephemeral, and do not get held and released.


##### Barriers
               



A [barrier] notifies all requesting threads when a specified number of requests
for it have been made. Subsequent requests give immediate notification.

[Barrier]: https://en.wikipedia.org/wiki/Barrier_(computer_science)


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{barrier-create}(
                       \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{pos-ints}) 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAME{sync-create}
                       ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                               \NAME{sync-waiting-list}, \\&\quad\quad\quad\quad\quad
                              \NAME{sync-feature-create} \ 
                               \NAME{sync-count} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                               (  \NAME{sync-feature}
                                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                              \NAME{sync-count} ), 
                                      \VAR{N} ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\end{align*}$$


When the barrier is already open, requests to pass it are granted immediately.
When the barrier is closed, and only one more thread needs to arrive, granting
a request for it opens the barrier and resumes all the threads wiating for it;
otherwise the request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{barrier-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                 ( \\&\quad\quad\quad\quad \NAME{sync-feature}
                         (  \VAR{SY}, 
                                \NAME{sync-count} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                   (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                          0 ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                                  1 ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                                0 ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} \\&\quad\quad\quad\quad\quad\quad\quad 
                                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                             \NAME{sync-feature}
                                               (  \VAR{SY}, 
                                                      \NAME{sync-waiting-list} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-waiting-list} ), 
                                                [   \  ] ) ) ) )
\end{align*}$$


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{barrier-sync-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{barrier-sync}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} \ 
                                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                             \NAME{sync-feature}
                                               (  \VAR{SY}, 
                                                      \NAME{sync-count} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$

##### Conditions
               



A [condition][] is used to represent whether some property holds or not.
Threads may request to be notified when another thread makes the property hold.

A condition may notify either one or all of its requesting threads. When it has
to notify one thread but more than one request for notification has been made,
the choice of thread may be determined by the scheduler. When it has to notify
more than one thread, the property associated with the condition may have been
invalidated by the time the executions of some of them are resumed, and threads
may need to iterate requests for notifications.

In practice, a condition is generally associated with an exclusive lock. When
a thread awaiting the condition is notified, it requests the exclusive lock and
tests whether the required property holds; if it does not, the thread releases
the exclusive lock, and atomically reverts to requesting the notification.

[Condition]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-cv.pdf


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{condition-create} 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAME{sync-create}
               ( \\&\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                       \NAME{sync-waiting-list} )
\end{align*}$$


A condition request always adds the current thread to the waiting list, and
suspends it until the request can be granted. (In practice, it takes also an
associated exclusive lock as a further argument, assumed to be held by the
current thread, and releases it at the same time as suspending the thread.)


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{condition-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                         (  \VAR{SY}, 
                                \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                         \NAMEHYPER{../..}{Multithreading}{current-thread} )
\end{align*}$$


In practice, a condition request usually takes also an associated exclusive lock
as a further argument, assumed to be held by the current thread, releases it
together with suspending the thread, and waits for the lock when resumed:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{condition-wait-with-lock}(
                       \VAR{SY} : \NAME{syncs}, \VAR{L} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../.}{Locks}{exclusive-lock-release}
                                 (  \VAR{L} ), \\&\quad\quad\quad\quad\quad
                                \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../.}{Locks}{exclusive-lock-sync-else-wait}
                       (  \VAR{L} ) )
\end{align*}$$


Threads that are waiting for the condition are notified simply by resuming them.
To notify them all:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{condition-notify-all}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \\&\quad\quad\quad\quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} \\&\quad\quad\quad\quad\quad\quad 
                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                             \NAME{sync-feature}
                               (  \VAR{SY}, 
                                      \NAME{sync-waiting-list} ), \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-waiting-list} ), 
                                [   \  ] ) )
\end{align*}$$


To notify just one of the waiting threads:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{condition-notify-first}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \\&\quad\quad\quad\quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                 ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-head-remove}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} )
\end{align*}$$

##### Rendezvous
               



A rendezvous notifies all requesting threads as soon as a specified number $$\SHADE{\VAR{N}}$$
of them have made *matching* requests for it. The rendezvous can store any number
of non-matching requests. If a request that completes a rendezvous matches
different sets of $$\SHADE{\VAR{N-1}}$$ pending requests, the 'lexicographically' earliest set
of requests is selected; for a binary rendezvous, this is the first matching
request in the stored list.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rendezvous-create}(
                       \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{pos-ints}) 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAME{sync-create}
                       ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                               \NAME{sync-waiting-list}, \\&\quad\quad\quad\quad\quad
                              \NAME{sync-feature-create} \ 
                               \NAME{sync-count} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                               (  \NAME{sync-feature}
                                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                              \NAME{sync-count} ), 
                                      \VAR{N} ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\end{align*}$$


Each rendezvous request includes a pattern, and the corresponding notifications
give environments obtained by matching the patterns against the same unified
value. When the pattern in each request is simply a value, a rendezvous notifies
all the requesting threads as soon as the specified number of requests with the
same value have been made. When the pattern in one request is a value, a pattern
in another request may bind an identifier to that value, giving one-way data flow.

A rendezvous request may also include a set of additional threads which are all
required to participate in the rendezvous. When a pair of matching binary
rendezvous requests each specify the other thread as the only required
participant, the rendezvous is restricted to that pair of threads. When one of
the sets is empty, the rendezvous may involve any other thread.

> In this simplified version, rendezvous are always binary, patterns in
> requests are ground values, and sets of required threads are omitted.



When a rendezvous is available, granting a request for it removes the first
matching element from the waiting list, and resumes its thread; otherwise the
request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rendezvous-sync}(
                       \VAR{SY} : \NAME{syncs}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                       \NAME{sync-feature}
                         (  \VAR{SY}, 
                                \NAME{sync-waiting-list} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                               \NAMEREF{is-rendezvous-match}
                                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                        \VAR{V} ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                               ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                       (  \VAR{SY}, 
                                              \NAME{sync-waiting-list} ), \\&\quad\quad\quad\quad\quad\quad
                                      \NAMEREF{rendezvous-first-match-drop}
                                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                              \VAR{V} ) ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../..}{Multithreading}{thread-resume} \\&\quad\quad\quad\quad\quad\quad 
                               \NAMEREF{rendezvous-first-match-thread}
                                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                        \VAR{V} ) ) )
\end{align*}$$


When the request fails, a tuple of the value and the current thread is added
to the waiting list, and the thread suspended until the request can be granted:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rendezvous-sync-else-wait}(
                       \VAR{SY} : \NAME{syncs}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{rendezvous-sync}
                         (  \VAR{SY}, 
                                \VAR{V} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                         (  \VAR{V}, 
                                                \NAMEHYPER{../..}{Multithreading}{current-thread} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


The remaining rendezvous funcons are all auxiliary:


$$\begin{align*}
  \KEY{Auxiliary Type} \quad 
  & \NAMEDECL{rendezvous-waits}  
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
               (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}, 
                      \NAMEHYPER{../..}{Multithreading}{thread-ids} )
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{is-rendezvous-match}
           (  \VAR{L}, 
                  \VAR{V} )}$$ returns whether the list $$\SHADE{\VAR{L}}$$ contains
$$\SHADE{\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
           (  \VAR{V}, 
                  \VAR{TI} )}$$ for some $$\SHADE{\VAR{TI}}$$:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{is-rendezvous-match}(
                       \_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                 (  \NAMEREF{rendezvous-waits} ), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{is-rendezvous-match}
        (  [  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                      (  \VAR{V}', 
                             \VAR{TI} ), 
                     \VAR{P}\STAR ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
          (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                  (  \VAR{V}', 
                         \VAR{V} ), 
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}, 
                 \NAMEREF{is-rendezvous-match}
                  (  [  \VAR{P}\STAR ], 
                         \VAR{V} ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-rendezvous-match}
        (  [   \  ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{rendezvous-first-match-thread}
           (  \VAR{L}, 
                  \VAR{V} )}$$ returns the thread-id of the
first element of $$\SHADE{\VAR{L}}$$ with value $$\SHADE{\VAR{V}}$$:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{rendezvous-first-match-thread}(
                       \_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                 (  \NAMEREF{rendezvous-waits} ), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \\&\quad
    :  \TO \NAMEHYPER{../..}{Multithreading}{thread-ids} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{rendezvous-first-match-thread}
        (  [  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                      (  \VAR{V}', 
                             \VAR{TI} ), 
                     \VAR{P}\STAR ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
          (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                  (  \VAR{V}', 
                         \VAR{V} ), 
                 \VAR{TI}, 
                 \NAMEREF{rendezvous-first-match-thread}
                  (  [  \VAR{P}\STAR ], 
                         \VAR{V} ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{rendezvous-first-match-thread}
        (  [   \  ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{rendezvous-first-match-drop}
           (  \VAR{L}, 
                  \VAR{V} )}$$ returns the list $$\SHADE{\VAR{L}}$$ omitting the
first element with value $$\SHADE{\VAR{V}}$$:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{rendezvous-first-match-drop}(
                       \_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                 (  \NAMEREF{rendezvous-waits} ), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \\&\quad
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                     (  \NAMEREF{rendezvous-waits} ) 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{rendezvous-first-match-drop}
        (  [  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                      (  \VAR{V}', 
                             \VAR{TI} ), 
                     \VAR{P}\STAR ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto \\&\quad
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
          ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                  (  \VAR{V}', 
                         \VAR{V} ), \\&\quad\quad
                 [  \VAR{P}\STAR ], \\&\quad\quad
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
                  (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                          (  \VAR{V}', 
                                 \VAR{TI} ), 
                         \NAMEREF{rendezvous-first-match-drop}
                          (  [  \VAR{P}\STAR ], 
                                 \VAR{V} ) ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{rendezvous-first-match-drop}
        (  [   \  ], 
               \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{align*}$$


A series of rendezvous between the same two threads is called an extended
rendezvous.  After the completion of each rendezvous in the series, one of the
threads may immediately request the next, allowing the other thread to execute
some code before synchronising. A simple rendezvous is restricted to
synchronisation, and does not involve ordinary computation steps.




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
[Notifications.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/Notifications.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/Notifications.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
