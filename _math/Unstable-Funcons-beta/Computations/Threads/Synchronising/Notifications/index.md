---
layout: default
title: "Notifications"
math: katex
parent: Synchronising
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Notifications.cbs]

#### Notifications
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{Barriers
          } ~ & \textsf{} \\
  \KEY{Funcon} ~ & \NAMEREF{barrier-create} \\
  \KEY{Funcon} ~ & \NAMEREF{barrier-sync} \\
  \KEY{Funcon} ~ & \NAMEREF{barrier-sync-else-wait} \\
  \textsf{Conditions
          } ~ & \textsf{} \\
  \KEY{Funcon} ~ & \NAMEREF{condition-create} \\
  \KEY{Funcon} ~ & \NAMEREF{condition-wait} \\
  \KEY{Funcon} ~ & \NAMEREF{condition-wait-with-lock} \\
  \KEY{Funcon} ~ & \NAMEREF{condition-notify-all} \\
  \KEY{Funcon} ~ & \NAMEREF{condition-notify-first} \\
  \textsf{Rendezvous
          } ~ & \textsf{} \\
  \KEY{Funcon} ~ & \NAMEREF{rendezvous-create} \\
  \KEY{Funcon} ~ & \NAMEREF{rendezvous-sync} \\
  \KEY{Funcon} ~ & \NAMEREF{rendezvous-sync-else-wait}
  ~ ]
\end{aligned}$$


Threads may synchronise by waiting for notifications. In contrast to locks,
notifications are ephemeral, and do not get held and released.


##### Barriers
               



A [barrier[] notifies all requesting threads when a specified number of requests
for it have been made. Subsequent requests give immediate notification.

[Barrier]: https://en.wikipedia.org/wiki/Barrier_(computer_science)


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{barrier-create}(\VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{pos-ints}) :  \TO \NAME{syncs} \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                     (\NAME{sync-create}
                        (\NAME{sync-feature-create} ~
                           \NAME{sync-waiting-list}, \\&\quad \quad 
                         \NAME{sync-feature-create} ~
                           \NAME{sync-count}), \\&\quad 
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                           (\NAME{sync-feature}
                              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
                               \NAME{sync-count}), \\&\quad \quad \quad 
                            \VAR{N}), \\&\quad \quad 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\end{aligned}$$


When the barrier is already open, requests to pass it are granted immediately.
When the barrier is closed, and only one more thread needs to arrive, granting
a request for it opens the barrier and resumes all the threads wiating for it;
otherwise the request fails.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{barrier-sync}(\VAR{SY} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                       (\NAME{sync-feature}
                          (\VAR{SY}, \\&\quad \quad \quad 
                           \NAME{sync-count}), \\&\quad \quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                          (\NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} ~
                             \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                               (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                                0), \\&\quad \quad \quad 
                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                             (\NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} ~
                                \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                  (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad \quad 
                                   1), \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                                 0), \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../..}{Multithreading}{thread-resume} ~
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} ~
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                                    \NAME{sync-feature}
                                      (\VAR{SY}, \\&\quad \quad \quad \quad \quad \quad \quad \quad 
                                       \NAME{sync-waiting-list}), \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                (\NAME{sync-feature}
                                   (\VAR{SY}, \\&\quad \quad \quad \quad \quad \quad 
                                    \NAME{sync-waiting-list}), \\&\quad \quad \quad \quad \quad 
                                 \ ~ ))))
\end{aligned}$$


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{barrier-sync-else-wait}(\VAR{SY} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                       (\NAMEREF{barrier-sync}
                          (\VAR{SY}), \\&\quad \quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                          (\NAME{sync-waiting-list-add}
                             (\VAR{SY}, \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../..}{Multithreading}{current-thread}), \\&\quad \quad \quad 
                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                             (\NAME{sync-feature}
                                (\VAR{SY}, \\&\quad \quad \quad \quad \quad 
                                 \NAME{sync-count}), \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} ~
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                                    \NAME{sync-feature}
                                      (\VAR{SY}, \\&\quad \quad \quad \quad \quad \quad \quad \quad 
                                       \NAME{sync-count})), \\&\quad \quad \quad 
                           \NAMEHYPER{../..}{Multithreading}{thread-suspend} ~
                             \NAMEHYPER{../..}{Multithreading}{current-thread}))
\end{aligned}$$

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


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{condition-create} :  \TO \NAME{syncs} \\
  & \quad \leadsto \NAME{sync-create}
                     (\NAME{sync-feature-create} ~
                        \NAME{sync-waiting-list})
\end{aligned}$$


A condition request always adds the current thread to the waiting list, and
suspends it until the request can be granted. (In practice, it takes also an
associated exclusive lock as a further argument, assumed to be held by the
current thread, and releases it at the same time as suspending the thread.)


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{condition-wait}(\VAR{SY} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       (\NAME{sync-waiting-list-add}
                          (\VAR{SY}, \\&\quad \quad \quad 
                           \NAMEHYPER{../..}{Multithreading}{current-thread}), \\&\quad \quad 
                        \NAMEHYPER{../..}{Multithreading}{thread-suspend} ~
                          \NAMEHYPER{../..}{Multithreading}{current-thread})
\end{aligned}$$


In practice, a condition request usually takes also an associated exclusive lock
as a further argument, assumed to be held by the current thread, releases it
together with suspending the thread, and waits for the lock when resumed:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{condition-wait-with-lock}(\VAR{SY} : \NAME{syncs}, \VAR{L} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                     (\NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                          (\NAMEHYPER{../.}{Locks}{exclusive-lock-release}
                             (\VAR{L}), \\&\quad \quad \quad 
                           \NAME{sync-waiting-list-add}
                             (\VAR{SY}, \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../..}{Multithreading}{current-thread}), \\&\quad \quad \quad 
                           \NAMEHYPER{../..}{Multithreading}{thread-suspend} ~
                             \NAMEHYPER{../..}{Multithreading}{current-thread}), \\&\quad 
                      \NAMEHYPER{../.}{Locks}{exclusive-lock-sync-else-wait}
                        (\VAR{L}))
\end{aligned}$$


Threads that are waiting for the condition are notified simply by resuming them.
To notify them all:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{condition-notify-all}(\VAR{SY} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       (\NAMEHYPER{../..}{Multithreading}{thread-resume} ~
                          \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} ~
                            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                              \NAME{sync-feature}
                                (\VAR{SY}, \\&\quad \quad \quad \quad \quad \quad 
                                 \NAME{sync-waiting-list}), \\&\quad \quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                          (\NAME{sync-feature}
                             (\VAR{SY}, \\&\quad \quad \quad \quad 
                              \NAME{sync-waiting-list}), \\&\quad \quad \quad 
                           \ ~ ))
\end{aligned}$$


To notify just one of the waiting threads:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{condition-notify-first}(\VAR{SY} : \NAME{syncs}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                       (\NAME{sync-waiting-list-head-remove}
                          (\VAR{SY}), \\&\quad \quad 
                        \NAMEHYPER{../..}{Multithreading}{thread-resume} ~
                          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given})
\end{aligned}$$

##### Rendezvous
               



A rendezvous notifies all requesting threads as soon as a specified number $$\SHADE{\VAR{N}}$$
of them have made *matching* requests for it. The rendezvous can store any number
of non-matching requests. If a request that completes a rendezvous matches
different sets of $$\SHADE{\VAR{N-1}}$$ pending requests, the 'lexicographically' earliest set
of requests is selected; for a binary rendezvous, this is the first matching
request in the stored list.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{rendezvous-create}(\VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{pos-ints}) :  \TO \NAME{syncs} \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                     (\NAME{sync-create}
                        (\NAME{sync-feature-create} ~
                           \NAME{sync-waiting-list}, \\&\quad \quad 
                         \NAME{sync-feature-create} ~
                           \NAME{sync-count}), \\&\quad 
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                           (\NAME{sync-feature}
                              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
                               \NAME{sync-count}), \\&\quad \quad \quad 
                            \VAR{N}), \\&\quad \quad 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\end{aligned}$$


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


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{rendezvous-sync}(\VAR{SY} : \NAME{syncs}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                     (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                        \NAME{sync-feature}
                          (\VAR{SY}, \\&\quad \quad \quad 
                           \NAME{sync-waiting-list}), \\&\quad 
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} ~
                           \NAMEREF{is-rendezvous-match}
                             (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
                              \VAR{V}), \\&\quad \quad 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                           (\NAME{sync-feature}
                              (\VAR{SY}, \\&\quad \quad \quad \quad 
                               \NAME{sync-waiting-list}), \\&\quad \quad \quad 
                            \NAMEREF{rendezvous-first-match-drop}
                              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
                               \VAR{V})), \\&\quad \quad 
                         \NAMEHYPER{../..}{Multithreading}{thread-resume} ~
                           \NAMEREF{rendezvous-first-match-thread}
                             (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
                              \VAR{V})))
\end{aligned}$$


When the request fails, a tuple of the value and the current thread is added
to the waiting list, and the thread suspended until the request can be granted:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{rendezvous-sync-else-wait}(\VAR{SY} : \NAME{syncs}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                       (\NAMEREF{rendezvous-sync}
                          (\VAR{SY}, \\&\quad \quad \quad 
                           \VAR{V}), \\&\quad \quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                          (\NAME{sync-waiting-list-add}
                             (\VAR{SY}, \\&\quad \quad \quad \quad 
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                (\VAR{V}, \\&\quad \quad \quad \quad \quad 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread})), \\&\quad \quad \quad 
                           \NAMEHYPER{../..}{Multithreading}{thread-suspend} ~
                             \NAMEHYPER{../..}{Multithreading}{current-thread}))
\end{aligned}$$


The remaining rendezvous funcons are all auxiliary:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Type} ~  
  & \NAMEDECL{rendezvous-waits}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values},   
              \NAMEHYPER{../..}{Multithreading}{thread-ids})
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{is-rendezvous-match}
           (\VAR{L},   
            \VAR{V})}$$ returns whether the list $$\SHADE{\VAR{L}}$$ contains
$$\SHADE{\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
           (\VAR{V},   
            \VAR{TI})}$$ for some $$\SHADE{\VAR{TI}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{is-rendezvous-match}(\_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                (\NAMEREF{rendezvous-waits}), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{is-rendezvous-match}
        ( NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
            (\VAR{V}',    
             \VAR{TI}),   
          \VAR{P}\STAR,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                                 (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                                    (\VAR{V}',    
                                                     \VAR{V}),   
                                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true},   
                                                  \NAMEREF{is-rendezvous-match}
                                                    ( VAR{P}\STAR,    
                                                     \VAR{V}))
\\
  \KEY{Rule} ~ 
    & \NAMEREF{is-rendezvous-match}
        (\ ~ ,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{rendezvous-first-match-thread}
           (\VAR{L},   
            \VAR{V})}$$ returns the thread-id of the
first element of $$\SHADE{\VAR{L}}$$ with value $$\SHADE{\VAR{V}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{rendezvous-first-match-thread}(\_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                (\NAMEREF{rendezvous-waits}), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../..}{Multithreading}{thread-ids}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{rendezvous-first-match-thread}
        ( NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
            (\VAR{V}',    
             \VAR{TI}),   
          \VAR{P}\STAR,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                                 (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                                    (\VAR{V}',    
                                                     \VAR{V}),   
                                                  \VAR{TI},   
                                                  \NAMEREF{rendezvous-first-match-thread}
                                                    ( VAR{P}\STAR,    
                                                     \VAR{V}))
\\
  \KEY{Rule} ~ 
    & \NAMEREF{rendezvous-first-match-thread}
        (\ ~ ,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{rendezvous-first-match-drop}
           (\VAR{L},   
            \VAR{V})}$$ returns the list $$\SHADE{\VAR{L}}$$ omitting the
first element with value $$\SHADE{\VAR{V}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{rendezvous-first-match-drop}(\_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                (\NAMEREF{rendezvous-waits}), \_ : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                                                         (\NAMEREF{rendezvous-waits})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{rendezvous-first-match-drop}
        ( NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
            (\VAR{V}',    
             \VAR{TI}),   
          \VAR{P}\STAR,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                                 (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                                    (\VAR{V}',    
                                                     \VAR{V}),   
                                                   VAR{P}\STAR,   
                                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
                                                    (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                                       (\VAR{V}',     
                                                        \VAR{TI}),    
                                                     \NAMEREF{rendezvous-first-match-drop}
                                                       ( VAR{P}\STAR,     
                                                        \VAR{V})))
\\
  \KEY{Rule} ~ 
    & \NAMEREF{rendezvous-first-match-drop}
        (\ ~ ,   
         \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{aligned}$$


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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Notifications.cbs]: /CBS-beta/Unstable-Funcons-beta/Computations/Threads/Synchronising/Notifications/Notifications.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Synchronising/Notifications/Notifications.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
