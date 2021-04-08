---
title: "Locks"
math: katex
parent: Synchronising
ancestor: Unstable-Funcons-beta

---
[Unstable-Funcons-beta] : [Locks.cbs] \| [PLAIN] \| [PDF]

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

#### Locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{is-exclusive-lock-holder} \\
  \textsf{Spin} \ & \textsf{locks} \\
  \KEY{Funcon} \quad & \NAMEREF{spin-lock-create} \\
  \KEY{Funcon} \quad & \NAMEREF{spin-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{spin-lock-release} \\
  \textsf{Exclusive} \ & \textsf{locks} \\
  \KEY{Funcon} \quad & \NAMEREF{exclusive-lock-create} \\
  \KEY{Funcon} \quad & \NAMEREF{exclusive-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{exclusive-lock-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{exclusive-lock-release} \\
  \textsf{Reentrant} \ & \textsf{locks} \\
  \KEY{Funcon} \quad & \NAMEREF{reentrant-lock-create} \\
  \KEY{Funcon} \quad & \NAMEREF{reentrant-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{reentrant-lock-release} \\
  \KEY{Funcon} \quad & \NAMEREF{reentrant-lock-exit} \\
  \textsf{Semaphores
          } \ & \textsf{} \\
  \KEY{Funcon} \quad & \NAMEREF{semaphore-create} \\
  \KEY{Funcon} \quad & \NAMEREF{semaphore-sync} \\
  \KEY{Funcon} \quad & \NAMEREF{semaphore-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{semaphore-release} \\
  \textsf{Shared-exclusive} \ & \textsf{locks} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-create} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-sync-exclusive} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-sync-shared} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-sync-exclusive-else-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-sync-shared-else-wait} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-release-exclusive} \\
  \KEY{Funcon} \quad & \NAMEREF{rw-lock-release-shared}
  \ ]
\end{align*}$$


A thread may request locks, and release locks (held by itself or by another
thread). A reentrant lock may be held more than once by the same thread.
A shared lock may be held by multiple threads at the same time, whereas an
exclusive lock can be held by only one thread at the same time. A request for
a spinlock that is held by another thread involves busy waiting instead of
suspension, and assumes interleaving of the execution of a waiting thread and
the holding thread.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-exclusive-lock-holder}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
               (  \NAMEHYPER{../..}{Multithreading}{current-thread}, 
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                       \NAME{sync-feature}
                         (  \VAR{SY}, 
                                \NAME{sync-holder} ) )
\end{align*}$$

##### Spin locks
               



Spin locks support mutual exclusion, but not suspension of blocked requests.
$$\SHADE{\NAMEHYPER{../..}{Multithreading}{thread-spin} \ 
           \NAMEREF{spin-lock-sync} \ 
             \VAR{SY}}$$ repeatedly executes the request
for the lock until the request is granted, which is called busy waiting. 
Interleaving of different threads waiting for the same spin lock may result in
granting requests out of order.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{spin-lock-create} 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAME{sync-create}
               ( \\&\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                       \NAME{sync-held}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-holder} )
\end{align*}$$


When the lock is not currently held, granting a request for it sets the holder
to the current thread; otherwise the request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{spin-lock-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-held} ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-held} ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-holder} ), 
                                \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


Releasing the lock leaves the lock free. Only the thread that holds the lock can
release it. Releasing cannot be blocked by other threads, so it is not a request.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{spin-lock-release}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEREF{is-exclusive-lock-holder}
                           (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-held} ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{un-assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-holder} ) ) )
\end{align*}$$

##### Exclusive locks
               



Exclusive locks support mutual exclusion and suspension of blocked requests.
An exclusive lock – also called a mutex – can be held by only one thread at
the same time. It can be used to ensure mutual exclusion of so-called critical
regions of thread bodies, and to avoid potential interference due to thread
interleaving.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{exclusive-lock-create} 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAME{sync-create}
               ( \\&\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                       \NAME{sync-waiting-list}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-held}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-holder} )
\end{align*}$$


When the lock is not currently held, granting a request for it sets the holder
to the current thread; otherwise the request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{exclusive-lock-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-held} ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-held} ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-holder} ), 
                                \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{exclusive-lock-sync-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{exclusive-lock-sync}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


When the waiting list is non-empty, releasing the lock grants it to the thread
that made the first request in the list, and resumes that thread; otherwise it
leaves the lock free. Only the thread that holds the lock can release it.
Releasing a lock cannot be blocked by other threads, so it is not a request.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{exclusive-lock-release}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEREF{is-exclusive-lock-holder}
                           (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                         \NAME{sync-feature}
                                           (  \VAR{SY}, 
                                                  \NAME{sync-waiting-list} ), 
                                        [   \  ] ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-held} ), 
                                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{un-assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-holder} ) ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-waiting-list-head-remove}
                                         (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                         ( \\&\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                                 (  \NAME{sync-feature}
                                                         (  \VAR{SY}, 
                                                                \NAME{sync-holder} ), 
                                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad\quad\quad\quad\quad
                                                \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) ) )
\end{align*}$$

##### Rentrant locks
               



Reentrant exclusive locks support mutual exclusion, suspension of blocked requests,
and reentry. A reentrant exclusive lock can be held (and subsequently released)
multiple times by the same thread. 


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reentrant-lock-create} 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAME{sync-create}
               ( \\&\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                       \NAME{sync-waiting-list}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-held}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-holder}, \\&\quad\quad\quad\quad
                      \NAME{sync-feature-create} \ 
                       \NAME{sync-count} )
\end{align*}$$


When the lock is not currently held, granting a request for it sets the holder
to the current thread; if it is already held by the current thread, it merely
increments the counter; otherwise the request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reentrant-lock-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
                                   (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                           \NAME{sync-feature}
                                             (  \VAR{SY}, 
                                                    \NAME{sync-held} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                 (  \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-held} ), 
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                 (  \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-holder} ), 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                 (  \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-count} ), 
                                        0 ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-held} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                                 \NAMEREF{is-exclusive-lock-holder}
                                   (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                           \NAME{sync-feature}
                                             (  \VAR{SY}, 
                                                    \NAME{sync-count} ) ) ) )
\end{align*}$$


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reentrant-lock-sync-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{reentrant-lock-sync}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


When the waiting list is non-empty, releasing the lock grants it to the thread
that made the first request in the list, and resumes that thread; otherwise it
leaves the lock free. Only the thread that holds the lock can release it.
Releasing a lock cannot be blocked by other threads, so it is not a request.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reentrant-lock-release}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEREF{is-exclusive-lock-holder}
                           (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                         \NAME{sync-feature}
                                           (  \VAR{SY}, 
                                                  \NAME{sync-waiting-list} ), 
                                        [   \  ] ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-held} ), 
                                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{un-assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-holder} ) ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAME{sync-feature}
                                                 (  \VAR{SY}, 
                                                        \NAME{sync-count} ), 
                                                0 ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-waiting-list-head-remove}
                                         (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                         ( \\&\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                                 (  \NAME{sync-feature}
                                                         (  \VAR{SY}, 
                                                                \NAME{sync-holder} ), 
                                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad\quad\quad\quad\quad
                                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                                 (  \NAME{sync-feature}
                                                         (  \VAR{SY}, 
                                                                \NAME{sync-count} ), 
                                                        0 ), \\&\quad\quad\quad\quad\quad\quad\quad
                                                \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) ) )
\end{align*}$$


When the reentered count is positive, an exit merely decrements it.
Otherwise it is 0, and the exit releases the lock.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reentrant-lock-exit}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEREF{is-exclusive-lock-holder}
                           (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater}
                                         (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                                0 ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                         (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} \ 
                                                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEREF{reentrant-lock-release}
                                         (  \VAR{SY} ) ) ) )
\end{align*}$$

##### Semaphores
               



A [semaphore][] is a shared lock with a specified limit on the number of threads
that can hold it at the same time. A semaphore can be released by any thread.

[Semaphore]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-sema.pdf


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{semaphore-create}(
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


When the semaphore is available, granting a request for it decrements the number
of further threads that can hold it; otherwise the request fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{semaphore-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater}
                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-count} ), 
                                  0 ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} \ 
                                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                     \NAME{sync-feature}
                                       (  \VAR{SY}, 
                                              \NAME{sync-count} ) ) )
\end{align*}$$


When the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{semaphore-sync-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{semaphore-sync}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../..}{Multithreading}{current-thread} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


When the waiting list is empty, releasing the semaphore increments the counter;
otherwise it grants the semaphore to the thread that made the first request in
the list, and resumes that thread. Releasing a semaphore cannot be blocked, so
it is not a request.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{semaphore-release}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \\&\quad\quad\quad\quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                 ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                         (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                 \NAME{sync-feature}
                                   (  \VAR{SY}, 
                                          \NAME{sync-waiting-list} ), 
                                [   \  ] ), \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-count} ) ), \\&\quad\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                         ( \\&\quad\quad\quad\quad\quad\quad \NAME{sync-waiting-list-head-remove}
                                 (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\end{align*}$$

##### Shared-exclusive locks
               



A [shared-exclusive lock][] – also called a readers-writer (rw) lock – can be 
held exclusively by a single thread, or shared by any number of threads at the
same time. It can be released by any thread.

[Shared-exclusive lock]: http://pages.cs.wisc.edu/~remzi/OSTEP/threads-sema.pdf


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-create} 
    :  \TO \NAME{syncs} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAME{sync-create}
                       ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature-create} \ 
                               \NAME{sync-waiting-list}, \\&\quad\quad\quad\quad\quad
                              \NAME{sync-feature-create} \ 
                               \NAME{sync-held}, \\&\quad\quad\quad\quad\quad
                              \NAME{sync-feature-create} \ 
                               \NAME{sync-count} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                               (  \NAME{sync-feature}
                                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                              \NAME{sync-count} ), 
                                      0 ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
\end{align*}$$


When the lock is not currently held at all, it can be granted exclusively:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-sync-exclusive}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{and}
                           ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
                                   (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                           \NAME{sync-feature}
                                             (  \VAR{SY}, 
                                                    \NAME{sync-held} ) ), \\&\quad\quad\quad\quad\quad
                                  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                   (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                           \NAME{sync-feature}
                                             (  \VAR{SY}, 
                                                    \NAME{sync-count} ), 
                                          0 ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-held} ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ) )
\end{align*}$$


When the lock is not currently held exclusively, a request to share it is always
granted immediately (regardless of any waiting exclusive requests):


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-sync-shared}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
                           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-held} ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                   \NAME{sync-feature}
                                     (  \VAR{SY}, 
                                            \NAME{sync-count} ) ) )
\end{align*}$$


If the request fails, the current thread is added to the waiting list, and
suspended until the request can be granted.

The waiting list of a shared-exclusive lock records not only the thread but also
whether the request is for sharing:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-sync-exclusive-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{rw-lock-sync-exclusive}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                         (  \NAMEHYPER{../..}{Multithreading}{current-thread}, 
                                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-sync-shared-else-wait}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                 ( \\&\quad\quad\quad\quad \NAMEREF{rw-lock-sync-shared}
                         (  \VAR{SY} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-add}
                                 (  \VAR{SY}, 
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                         (  \NAMEHYPER{../..}{Multithreading}{current-thread}, 
                                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../..}{Multithreading}{thread-suspend} \ 
                                 \NAMEHYPER{../..}{Multithreading}{current-thread} ) )
\end{align*}$$


When the waiting list is non-empty, releasing the lock may grant either the
first waiting exclusive request, or all waiting shared requests. A scheduler may
defer granting one kind of request when there are waiting requests of the other
kind, irrespective of the order in which those requests were made. Releasing
a lock cannot be blocked by other threads, so it is not a request.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-release-exclusive}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                           \NAME{sync-feature}
                             (  \VAR{SY}, 
                                    \NAME{sync-held} ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         (  \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-held} ), 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ), \\&\quad\quad\quad\quad
                        \NAMEREF{rw-lock-sync}
                         (  \VAR{SY} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{rw-lock-release-shared}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../..}{Multithreading}{thread-atomic} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                         ( \\&\quad\quad\quad\quad\quad \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} \ 
                                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                     \NAME{sync-feature}
                                       (  \VAR{SY}, 
                                              \NAME{sync-count} ) ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                 (  0, 
                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                         \NAME{sync-feature}
                                           (  \VAR{SY}, 
                                                  \NAME{sync-count} ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEREF{rw-lock-sync}
                                 (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} ) )
\end{align*}$$


$$\SHADE{\NAMEREF{rw-lock-sync}
           (  \VAR{SY} )}$$ assumes that $$\SHADE{\VAR{SY}}$$ is not held (either exclusively or shared).
If the first waiting request is for sharing, any further sharing requests are
granted, 


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{rw-lock-sync}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                               \NAME{sync-feature}
                                 (  \VAR{SY}, 
                                        \NAME{sync-waiting-list} ), 
                              [   \  ] ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                       ( \\&\quad\quad\quad\quad\quad \NAME{sync-waiting-list-head-remove}
                               (  \VAR{SY} ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                               ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} \ 
                                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad\quad
                                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                       ( \\&\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{second} \ 
                                               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad\quad\quad
                                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                               ( \\&\quad\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                                       ( \\&\quad\quad\quad\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                                               (  \VAR{SY}, 
                                                                      \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad\quad\quad\quad\quad
                                                              \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \ 
                                                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                                                 \NAME{sync-feature}
                                                                   (  \VAR{SY}, 
                                                                          \NAME{sync-count} ) ), \\&\quad\quad\quad\quad\quad\quad\quad\quad
                                                      \NAMEREF{rw-lock-sync-all-shared}
                                                       (  \VAR{SY} ) ), \\&\quad\quad\quad\quad\quad\quad\quad
                                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                               (  \NAME{sync-feature}
                                                       (  \VAR{SY}, 
                                                              \NAME{sync-held} ), 
                                                      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ) ) ) ) )
\end{align*}$$


$$\SHADE{\NAMEREF{rw-lock-sync-all-shared}
           (  \VAR{SY} )}$$ updates the waiting list by removing and resuming
all its sharing requests:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{rw-lock-sync-all-shared}(
                       \VAR{SY} : \NAME{syncs}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
               ( \\&\quad\quad\quad\quad \NAME{sync-feature}
                       (  \VAR{SY}, 
                              \NAME{sync-waiting-list} ), \\&\quad\quad\quad\quad
                      [ \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-filter}
                             ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                                     ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{second} \ 
                                             \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} \ 
                                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad\quad
                                            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                             ( \\&\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../..}{Multithreading}{thread-resume} \ 
                                                     \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first} \ 
                                                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} \ 
                                                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad\quad\quad
                                                    \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                                                     ( \\&\quad\quad\quad\quad\quad\quad\quad\quad \NAME{sync-feature}
                                                             (  \VAR{SY}, 
                                                                    \NAME{sync-count} ), \\&\quad\quad\quad\quad\quad\quad\quad\quad
                                                            \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \ 
                                                             \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                                               \NAME{sync-feature}
                                                                 (  \VAR{SY}, 
                                                                        \NAME{sync-count} ) ), \\&\quad\quad\quad\quad\quad\quad\quad
                                                    \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} ), \\&\quad\quad\quad\quad\quad\quad
                                            \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} ), \\&\quad\quad\quad\quad\quad
                                    \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} \ 
                                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                                       \NAME{sync-feature}
                                         (  \VAR{SY}, 
                                                \NAME{sync-waiting-list} ) ) ] )
\end{align*}$$



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
[Locks.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/Locks.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Synchronising/Locks/Locks.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Synchronising/Locks/Locks.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
