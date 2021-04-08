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

### Multithreading
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{thread-ids} \\
  \KEY{Datatype} \quad & \NAMEREF{threads} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-joinable} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-detached}
  \ ]
\end{align*}$$

#### Initialisation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{initialise-multithreading}
  \ ]
\end{align*}$$

#### Activation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{multithread} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-activate} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-detach}
  \ ]
\end{align*}$$

#### Execution
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{current-thread} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-atomic} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-yield} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-spin} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-suspend} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-resume}
  \ ]
\end{align*}$$

#### Termination
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{thread-terminate} \\
  \KEY{Funcon} \quad & \NAMEREF{is-thread-terminated} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-value} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-join} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-exterminate}
  \ ]
\end{align*}$$

#### Scheduling
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{update-thread-stepping} \\
  \KEY{Funcon} \quad & \NAMEREF{update-thread-schedule} \\
  \KEY{Funcon} \quad & \NAMEREF{current-thread-schedule} \\
  \KEY{Funcon} \quad & \NAMEREF{is-thread-preemptible} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-preemptible} \\
  \KEY{Funcon} \quad & \NAMEREF{thread-cooperative}
  \ ]
\end{align*}$$


A thread consists of code that can be executed concurrently with code
of other threads. The progress of the execution of the threads may be
determined cooperatively by threads themselves, or by a preemptive
scheduler (or by both).

Threads can be activated by the initial program or by other threads, 
and share access to the same entities (in contrast to processes). 
Synchronisation between threads can avoid interference (e.g., data
races) arising from concurrent shared access. Synchronisation can also
ensure *sequential consistency* of threads, where any concurrent
execution corresponds to some (possibly unfair) interleaving of their
separate execution steps. Synchronisation can be achieved by various
kinds of locks and notifications.

A thread is a value containing a thunk. When a thread has been activated,
execution of the body of the thunk can be interleaved with that of other
activated threads, possibly subject to scheduling and synchronisation.

Activation of a thread generates a fresh thread-id for referring to it:


$$\begin{align*}
  \KEY{Auxiliary Datatype} \quad 
  \NAMEDECL{thread-ids} 
  \ ::= \ & \NAMEDECL{thread-id}(
                               \_ : \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Generating}{atoms})
\end{align*}$$


A thread is called joinable when other threads can wait for its
termination. A joinable thread contains a list of the threads that
are currently waiting to join it. A non-joinable thread is called
detached:


$$\begin{align*}
  \KEY{Auxiliary Datatype} \quad 
  \NAMEDECL{threads} 
  \ ::= \ & \NAMEDECL{thread}(
                               \_ : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                         (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ), \_ : (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{lists} \ 
                                               \NAMEREF{thread-ids} )\QUERY)
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-joinable}(
                       \VAR{TH} : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                 (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )) 
    :  \TO \NAMEREF{threads} \\&\quad
    \leadsto \NAMEREF{thread}
               (  \VAR{TH}, 
                      [   \  ] )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-detached}(
                       \VAR{TH} : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                 (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )) 
    :  \TO \NAMEREF{threads} \\&\quad
    \leadsto \NAMEREF{thread}
               (  \VAR{TH} )
\end{align*}$$


In names of funcons and entities, and in informal explanations,
a reference to a 'thread' generally concerns a thread-id, rather
than a value of type $$\SHADE{\NAMEREF{threads}}$$. The only funcons that compute 
$$\SHADE{\NAMEREF{threads}}$$ are $$\SHADE{\NAMEREF{thread-joinable}
           (  \VAR{TH} )}$$ and $$\SHADE{\NAMEREF{thread-detached}
           (  \VAR{TH} )}$$;
$$\SHADE{\NAMEREF{thread-activate}
           (  \VAR{THR} )}$$ is the only funcon that takes an argument
of type $$\SHADE{\NAMEREF{threads}}$$.

The thunk contained in a thread can be formed directly from a
computation $$\SHADE{\VAR{X}}$$ by $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
           \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
             \VAR{X}}$$. Alternatively, $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Functions}{supply}
           (  \VAR{F}, 
                  \VAR{V} )}$$
forms a thunk by supplying an argument value $$\SHADE{\VAR{V}}$$ to a function $$\SHADE{\VAR{F}}$$
without executing $$\SHADE{\VAR{F}}$$ (in contrast to $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
           (  \VAR{F}, 
                  \VAR{V} )}$$, which forces
the evaluation of the body of $$\SHADE{\VAR{F}}$$).

The current state of a thread is either active, suspended, terminated,
or deleted.

- Activation makes a thread active.
- An active thread can be suspended, and subsequently resumed.
- An active or suspended thread can be terminated.
- A thread can be deleted.

The following mutable entities represent the states of all activated
threads.


#### Entities
               



The $$\SHADE{\NAMEREF{thread-map}}$$ contains all active and suspended threads:


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{thread-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (  \NAMEREF{thread-ids}, 
                                                                   \NAMEREF{threads} )) \rangle \TRANS  \\& 
    \langle \_, \NAME{thread-map}(\_ : \NAME{maps}
                                                            (  \NAME{thread-ids}, 
                                                                   \NAME{threads} )) \rangle
\end{align*}$$


The $$\SHADE{\NAMEREF{active-thread-set}}$$ distinguishes between active and suspended
threads:


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{active-thread-set}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                            (  \NAMEREF{thread-ids} )) \rangle \TRANS  \\& 
    \langle \_, \NAME{active-thread-set}(\_ : \NAME{sets}
                                                            (  \NAME{thread-ids} )) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-some-thread-active} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{is-some-thread-active}, \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
        \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
          \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
            (  \VAR{ATS}, 
                   \{   \  \} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-some-thread-suspended} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{is-some-thread-suspended}, \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
        \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
          \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
            (  \VAR{ATS}, 
                   \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} \ 
                    \VAR{TM} )
\end{align*}$$


The $$\SHADE{\NAMEREF{thread-stepping}}$$ entity identifies the thread whose step is
currently being executed. When defined, it identifies an active thread:


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{thread-stepping}(\_ : \NAMEREF{thread-ids}\QUERY) \rangle \TRANS  \\& 
    \langle \_, \NAME{thread-stepping}(\_ : \NAME{thread-ids}\QUERY) \rangle
\end{align*}$$


The $$\SHADE{\NAMEREF{terminated-thread-map}}$$ contains the values computed by terminated
joinable threads:


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{terminated-thread-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (  \NAMEREF{thread-ids}, 
                                                                   \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )) \rangle \TRANS  \\& 
    \langle \_, \NAME{terminated-thread-map}(\_ : \NAME{maps}
                                                            (  \NAME{thread-ids}, 
                                                                   \NAME{values} )) \rangle
\end{align*}$$


Deleted threads are not contained in any of the above entities.
Terminated detached threads are always deleted.

Scheduling information for each thread may affect the interleaving
of thread steps:


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{thread-schedule}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                            (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} )) \rangle \TRANS  \\& 
    \langle \_, \NAME{thread-schedule}(\_ : \NAME{sets}
                                                            (  \NAME{ground-values} )) \rangle
\end{align*}$$


Scheduling can change dynamically between preemptive and cooperative. 


#### Initialisation
               



The entities used to model multithreading need initialising:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-multithreading} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
               ( \\&\quad\quad\quad\quad \NAMEREF{initialise-thread-map}, \\&\quad\quad\quad\quad
                      \NAMEREF{initialise-active-thread-set}, \\&\quad\quad\quad\quad
                      \NAMEREF{initialise-thread-stepping}, \\&\quad\quad\quad\quad
                      \NAMEREF{initialise-terminated-thread-map}, \\&\quad\quad\quad\quad
                      \NAMEREF{initialise-thread-schedule} )
\end{align*}$$


The initial values are generally quite obvious:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{initialise-thread-map} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{initialise-thread-map} \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                     (   \  ) ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{initialise-active-thread-set} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{initialise-active-thread-set} \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} \{   \  \} \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{initialise-thread-stepping} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{initialise-thread-stepping} \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (   \  ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{initialise-terminated-thread-map} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{initialise-terminated-thread-map} \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{terminated-thread-map} (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                     (   \  ) ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{initialise-thread-schedule} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{initialise-thread-schedule} \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-schedule} \{   \  \} \rangle
\end{align*}$$

#### Activation
               



Multithreading can start by activating a single thread, which can then
activate further threads:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{multithread}(
                       \_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} 
\end{align*}$$


$$\SHADE{\NAMEREF{multithread} \ 
           \VAR{X}}$$ forms a joinable thread from $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
           \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
             \VAR{X}}$$ and
activates it. On normal termination of all threads, it gives the value
computed by $$\SHADE{\VAR{X}}$$. On abrupt termination (caused by a thread step, or by
the failure of the check that all threads have terminated) the reason
for it:


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{multithread} \ 
        \VAR{X} \leadsto \\&\quad
        \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
          ( \\&\quad\quad \NAMEREF{initialise-multithreading}, \\&\quad\quad
                 \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                  ( \\&\quad\quad\quad \NAMEREF{thread-activate} \ 
                          \NAMEREF{thread-joinable} \ 
                            \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                              \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
                                \VAR{X}, \\&\quad\quad\quad
                         \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{handle-abrupt}
                          ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                  ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
                                          ( \\&\quad\quad\quad\quad\quad\quad \NAMEREF{is-some-thread-active}, \\&\quad\quad\quad\quad\quad\quad
                                                 \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                                  (  \NAMEREF{update-thread-stepping}, 
                                                         \NAMEREF{thread-step} ) ), \\&\quad\quad\quad\quad\quad
                                         \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{check} \ 
                                          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
                                            \NAMEREF{is-some-thread-suspended}, \\&\quad\quad\quad\quad\quad
                                         \NAMEREF{thread-value} \ 
                                          \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), \\&\quad\quad\quad\quad
                                 \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\end{align*}$$


The $$\SHADE{\NAMEREF{update-thread-stepping}}$$ funcon determines the thread-id for the next step,
which may depend on whether the previous step has yielded, on its
preemptibility, and on the current scheduling.

A thread can activate the execution of thread-activates:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-activate}(
                       \_ : \NAMEREF{threads}) 
    :  \TO \NAMEREF{thread-ids} 
\end{align*}$$


When a thread is activated, a fresh thread-id is generated, and the
thread is included in the thread-map and the active-thread-set:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \NAMEREF{thread-id}
                      (  \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom} ) \TRANS 
          \VAR{TI}\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
          (  \{ \VAR{TI} \mapsto 
                     \VAR{THR} \}, 
                 \VAR{TM} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
          (  \{  \VAR{TI} \}, 
                 \VAR{ATS} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-activate}
                              (  \VAR{THR} : \NAMEREF{threads} ), \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \VAR{TI}, \NAMEREF{thread-map} (  \VAR{TM}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


A joinable thread can be detached after its activation, discarding its
list of joining threads:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-detach}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$


When the thread has not yet terminated, it remains in the thread-map:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
          (  \VAR{TM}, 
                 \VAR{TI} ) \leadsto 
          \NAMEREF{thread}
            (  \VAR{TH}, 
                   \_ )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
          (  \{ \VAR{TI} \mapsto 
                     \NAMEREF{thread}
                       (  \VAR{TH} ) \}, 
                 \VAR{TM} ) \leadsto 
          \VAR{TM}'
      }{
      &  \langle \NAMEREF{thread-detach}
                              (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (  \VAR{TM}' ) \rangle
      }
\end{align*}$$


When the thread has already terminated, detaching it deletes it from
the terminated-thread-map:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} \ 
                  \VAR{TMV} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TMV}, 
                 \{  \VAR{TI} \} ) \leadsto 
          \VAR{TMV}'
      }{
      &  \langle \NAMEREF{thread-detach}
                              (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{terminated-thread-map} (  \VAR{TMV} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{terminated-thread-map} (  \VAR{TMV}' ) \rangle
      }
\end{align*}$$


(A funcon for making a detached thread joinable could be defined
similarly.)


#### Execution
               



The thread-stepping is undefined only before multithreading starts,
and when all non-terminated threads are suspended.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{current-thread} 
    :  \TO \NAMEREF{thread-ids} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{current-thread}, \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \TRANS 
        \VAR{TI}
\end{align*}$$


$$\SHADE{\NAMEREF{current-thread}}$$ is only intended for use in threads:


$$\begin{align*}
  \KEY{Rule} \quad
    &  \langle \NAMEREF{current-thread}, \NAMEREF{thread-stepping} (   \  ) \rangle \TRANS 
        \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{align*}$$

##### Stepping
               



The funcon $$\SHADE{\NAMEREF{thread-step}}$$ executes a single step of the thread identified 
by $$\SHADE{\NAMEREF{thread-stepping}}$$:


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{thread-step} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$


Whenever $$\SHADE{\VAR{THR}}$$ executes a step and $$\SHADE{\VAR{THR}'}$$ represents the remaining
steps, the thread-map is updated to map $$\SHADE{\VAR{TI}}$$ to $$\SHADE{\VAR{THR}'}$$.  

If the body of the thread can make a step, so can $$\SHADE{\NAMEREF{thread-step}}$$:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI} ) \leadsto 
          \NAMEREF{thread}
            (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                      (  \VAR{X} ), 
                   \VAR{L}\QUERY )\\&
         \langle \VAR{X}, \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
          \langle \VAR{X}', \NAMEREF{thread-stepping} (  \VAR{TI}\QUERY ), \NAMEREF{thread-map} (  \VAR{TM}' ) \rangle\\&
        \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
          ( \\&\quad \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
                  (  \VAR{TI}, 
                         \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} \ 
                          \VAR{TM}' ), \\&\quad
                 \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
                  (  \{ \VAR{TI} \mapsto 
                             \NAMEREF{thread}
                               (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                                       \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                                         (  \VAR{X}' ), 
                                      \VAR{L}\QUERY ) \}, 
                         \VAR{TM}' ), \\&\quad
                 \VAR{TM}' ) \leadsto \\&\quad
          \VAR{TM}''
      }{
      &  \langle \NAMEREF{thread-step}, \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI}\QUERY ), \NAMEREF{thread-map} (  \VAR{TM}'' ) \rangle
      }
\end{align*}$$


The only other case for a next step is when a thread has terminated
normally, and is to be removed from the executing thread map.

If it is detached, its computed value is discarded:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI} ) \leadsto 
          \NAMEREF{thread}
            (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                      (  \VAR{X} ) )\\&
        \VAR{X} \leadsto 
          (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TM}, 
                 \{  \VAR{TI} \} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI} \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-step}, \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (   \  ), \NAMEREF{thread-map} (  \VAR{TM}' ) \rangle
      }
\end{align*}$$


If the thread is joinable, all its joining threads are resumed, and its
computed value is made available in the terminated-thread-map:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI} ) \leadsto 
          \NAMEREF{thread}
            (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                      (  \VAR{X} ), 
                   [  \VAR{TI}\STAR ] )\\&
        \VAR{X} \leadsto 
          (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TM}, 
                 \{  \VAR{TI} \} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
                  (  \VAR{ATS}, 
                         \{  \VAR{TI} \} ), 
                 \{  \VAR{TI}\STAR \} ) \leadsto 
          \VAR{ATS}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
          (  \VAR{TVM}, 
                 \{ \VAR{TI} \mapsto 
                     \VAR{V} \} ) \leadsto 
          \VAR{TVM}'
      }{
      &  \langle \NAMEREF{thread-step}, \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad
                                    \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (   \  ), \\&\quad\quad
                          \NAMEREF{thread-map} (  \VAR{TM}' ), \NAMEREF{terminated-thread-map} (  \VAR{TVM}' ) \rangle
      }
\end{align*}$$

##### Sync atomicity
               



$$\SHADE{\NAMEREF{thread-atomic}
           (  \VAR{X} )}$$ computes $$\SHADE{\VAR{X}}$$ in a single transition. Assuming that the
potentially interfering effects of $$\SHADE{\VAR{X}}$$ may only be updates on the store,
thread suspension and/or resumption, and abrupt termination, and that $$\SHADE{\VAR{X}}$$
always terminates, the outcome of $$\SHADE{\NAMEREF{thread-atomic}
           (  \VAR{X} )}$$ is the same as that of
computing $$\SHADE{\VAR{X}}$$ without preemption.

(The funcon $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{atomic}
           (  \VAR{X} )}$$ generalises $$\SHADE{\NAMEREF{thread-atomic}
           (  \VAR{X} )}$$ to allow $$\SHADE{\VAR{X}}$$ with
arbitrary effects. When the CBS notation "--->1 ; --->2" for composing
transitions has been implemented by the interpreter generation tools,
uses of $$\SHADE{\NAMEREF{thread-atomic}
           (  \VAR{X} )}$$ are to be replaced by $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{atomic}
           (  \VAR{X} )}$$.)


$$\begin{align*}
  \KEY{Auxiliary Funcon} \quad
  & \NAMEDECL{thread-atomic}(
                       \_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} 
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \langle \VAR{X}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} \\&\quad
          \langle \VAR{X}', \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle\\&
         \langle \NAMEREF{thread-atomic}
                              (  \VAR{X}' ), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} \\&\quad
          \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}'' ), \NAMEREF{active-thread-set} (  \VAR{ATS}'' ), \NAMEREF{thread-stepping} (  \VAR{TI}''\QUERY ) \rangle
      }{
      &  \langle \NAMEREF{thread-atomic}
                              (  \VAR{X} ), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} \\&\quad
          \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}'' ), \NAMEREF{active-thread-set} (  \VAR{ATS}'' ), \NAMEREF{thread-stepping} (  \VAR{TI}''\QUERY ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \langle \VAR{X}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} \\&\quad
          \langle \VAR{X}', \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle\\&
         \langle \NAMEREF{thread-atomic}
                              (  \VAR{X}' ), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ), \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} \\&\quad
          \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}'' ), \NAMEREF{active-thread-set} (  \VAR{ATS}'' ), \NAMEREF{thread-stepping} (  \VAR{TI}''\QUERY ) \rangle
      }{
      &  \langle \NAMEREF{thread-atomic}
                              (  \VAR{X} ), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ), \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} \\&\quad
          \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (  \VAR{$\sigma$}'' ), \NAMEREF{active-thread-set} (  \VAR{ATS}'' ), \NAMEREF{thread-stepping} (  \VAR{TI}''\QUERY ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{thread-atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} 
          \NAMEREF{thread-atomic}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} 
          (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )
      }{
      &  \NAMEREF{thread-atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{V}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} 
          (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )
      }{
      &  \NAMEREF{thread-atomic}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(  \VAR{A} )}_{} 
          \NAMEREF{thread-atomic}
            (  \VAR{V} )
      }
\\
  \KEY{Rule} \quad
    &  \NAMEREF{thread-atomic}
                    (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ) \TRANS 
        \VAR{V}
\end{align*}$$


Note that if the execution of $$\SHADE{\NAMEREF{thread-atomic}
           (  \VAR{X} )}$$ involves $$\SHADE{\NAMEREF{thread-yield}
           (   \  )}$$ or
$$\SHADE{\NAMEREF{thread-suspend}
           (   \  )}$$, this makes thread-stepping undefined, so it has to be the
final step of $$\SHADE{\VAR{X}}$$.


##### Yielding
               



A thread can yield execution:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-yield}(
                       \_ : \NAMEREF{thread-ids}\QUERY) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$


When the argument thread-id is omitted, the next thread to be executed
is left undefined, to be determined by the scheduler:


$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{thread-yield}
                    (   \  ) \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (   \  ) \rangle
\end{align*}$$


When the argument thread-id is $$\SHADE{\VAR{TI}}$$, it has to be an active thread:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \VAR{ATS} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )
      }{
      &  \langle \NAMEREF{thread-yield}
                              (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \VAR{ATS} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
      }{
      &  \langle \NAMEREF{thread-yield}
                              (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\end{align*}$$


$$\SHADE{\NAMEREF{thread-spin}
           (  \VAR{X} )}$$ repeatedly executes $$\SHADE{\VAR{X}}$$ while it fails, allowing interleaving
with other threads.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-spin}(
                       \VAR{X} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} \\&\quad
    \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
               ( \\&\quad\quad\quad\quad \VAR{X}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       (  \NAMEREF{thread-yield}
                               (   \  ), 
                              \NAMEREF{thread-spin}
                               (  \VAR{X} ) ) )
\end{align*}$$

##### Suspension and resumption
               



A thread may suspend one or more threads that are currently being
executed:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-suspend}(
                       \_ : \NAMEREF{thread-ids}\PLUS) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \{  \VAR{TI}\PLUS \} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-subset}
          (  \{  \VAR{TI}\PLUS \}, 
                 \VAR{ATS} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}\PLUS \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-suspend}
                              (  \VAR{TI}\PLUS : \NAMEREF{thread-ids}\PLUS ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


If $$\SHADE{\VAR{TI}\PLUS}$$ includes the current thread, suspension is accompanied by
yielding:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \{  \VAR{TI}\PLUS \} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-subset}
          (  \{  \VAR{TI}\PLUS \}, 
                 \VAR{ATS} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}\PLUS \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-suspend}
                              (  \VAR{TI}\PLUS : \NAMEREF{thread-ids}\PLUS ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (   \  ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


(Deadlock occurs if the last non-suspended thread suspends itself.)

A thread may resume any number of suspended threads:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-resume}(
                       \_ : \NAMEREF{thread-ids}\STAR) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
          (  \VAR{TI}, 
                 \{  \VAR{TI}\STAR \} ) 
        == (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-intersect}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}\STAR \} ) 
        == \{   \  \}\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}\STAR \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-resume}
                              (  \VAR{TI}\STAR : \NAMEREF{thread-ids}\STAR ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$

#### Termination
               



If the thread-map becomes empty, and there are no suspended threads,
the entire multithread computation terminates normally. If it becomes
empty while suspended threads remain to be executed, this is regarded
as deadlock, and the computation fails.

If the execution of an individual thread terminates normally, the body
of its thunk gives its computed value. The thread is removed from the
thread-map, and the computed value is added to the terminated-thread-map.

Abrupt termination of a thread body causes immediate abrupt termination
of the entire multithread computation. This can be avoided by wrapping
the bodies of all threads in appropriate handlers for abrupt termination.

A thread can terminate itself or another thread, optionally specifying
its computed value:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-terminate}(
                       \_ : \NAMEREF{thread-ids}, \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}\QUERY) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$


When the thread is detached, no value is specified:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI}' ) \leadsto 
          \NAMEREF{thread}
            (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \ 
                      \VAR{X} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TM}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{ATS}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{when-true}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
                  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                    (  \VAR{TI}, 
                           \VAR{TI}' ), 
                 \VAR{TI} ) \leadsto 
          \VAR{TI}\QUERY
      }{
      &  \langle \NAMEREF{thread-terminate}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad
                                    \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI}\QUERY ), \\&\quad\quad
                          \NAMEREF{thread-map} (  \VAR{TM}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


When the thread is joinable, its value has to be specified:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI}' ) \leadsto 
          \NAMEREF{thread}
            (  (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                          \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \ 
                            \VAR{X} ), 
                   [  \VAR{TI}\STAR ] )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TM}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
                  (  \VAR{ATS}, 
                         \{  \VAR{TI}' \} ), 
                 \{  \VAR{TI}\STAR \} ) \leadsto 
          \VAR{ATS}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
          (  \VAR{TVM}, 
                 \{ \VAR{TI}' \mapsto 
                     \VAR{V} \} ) \leadsto 
          \VAR{TVM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{when-true}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
                  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                    (  \VAR{TI}, 
                           \VAR{TI}' ), 
                 \VAR{TI} ) \leadsto 
          \VAR{TI}\QUERY
      }{
      &  \langle \NAMEREF{thread-terminate}
                              (  \VAR{TI}' : \NAMEREF{thread-ids}, 
                                     \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad
                                    \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI}\QUERY ), \\&\quad\quad
                          \NAMEREF{thread-map} (  \VAR{TM}' ), \NAMEREF{terminated-thread-map} (  \VAR{TVM}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


A thread can test whether a joinable thread has terminated:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-thread-terminated}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{is-thread-terminated}
                            (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ) \rangle \TRANS \\&\quad
        \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-value}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
                  (  \VAR{TVM}, 
                         \VAR{TI} ) )
\end{align*}$$


If so, it can get the computed value:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-value}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{thread-value}
                            (  \VAR{TI} : \NAMEREF{thread-ids} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ) \rangle \TRANS \\&\quad
        \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
          \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
            (  \VAR{TVM}, 
                   \VAR{TI} )
\end{align*}$$


Joining a thread may cause suspension:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-join}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI}' ) \leadsto 
          \NAMEREF{thread}
            (  \VAR{TH}, 
                   [  \VAR{TI}\STAR ] )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
          (  \{ \VAR{TI}' \mapsto 
                     \NAMEREF{thread}
                       (  \VAR{TH}, 
                              [  \VAR{TI}\STAR, 
                                    \VAR{TI} ] ) \}, 
                 \VAR{TM} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI} \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-join}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad
                                    \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (  \VAR{TM}' ), \\&\quad\quad
                          \NAMEREF{thread-stepping} (   \  ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$


If a joinable thread has already terminated, the $$\SHADE{\NAMEREF{terminated-thread-map}}$$
holds its value:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-value}
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
                  (  \VAR{TVM}, 
                         \VAR{TI}' ) ) 
        == \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{thread-join}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ) \rangle \TRANS \\&\quad
          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{align*}$$


Trying to join a detached thread fails:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI}' ) \leadsto 
          \NAMEREF{thread}
            (  \VAR{TH} )
      }{
      &  \langle \NAMEREF{thread-join}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{thread-map} (  \VAR{TM} ) \rangle \TRANS \\&\quad
          \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TM}, 
                 \VAR{TI}' ) 
        == (   \  )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{TVM}, 
                 \VAR{TI}' ) 
        == (   \  )
      }{
      &  \langle \NAMEREF{thread-join}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{terminated-thread-map} (  \VAR{TVM} ) \rangle \TRANS \\&\quad
          \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\end{align*}$$


Extermination of a thread both terminates it and prevents its subsequent
inspection.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{thread-exterminate}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \VAR{TI}' 
        \neq \VAR{TI}\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TM}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{TM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
          (  \VAR{TVM}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{TVM}'\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
          (  \VAR{ATS}, 
                 \{  \VAR{TI}' \} ) \leadsto 
          \VAR{ATS}'
      }{
      &  \langle \NAMEREF{thread-exterminate}
                              (  \VAR{TI}' : \NAMEREF{thread-ids} ), \NAMEREF{thread-map} (  \VAR{TM} ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad
                                    \NAMEREF{terminated-thread-map} (  \VAR{TVM} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (  \VAR{TM}' ), \NAMEREF{thread-stepping} (  \VAR{TI} ), \\&\quad\quad
                          \NAMEREF{terminated-thread-map} (  \VAR{TVM}' ), \NAMEREF{active-thread-set} (  \VAR{ATS}' ) \rangle
      }
\end{align*}$$

#### Scheduling
               



A scheduler determines the interleaving of thread execution, based on
mutable information regarding features such as preemptibility, priority,
and time-sharing.

The next thread scheduled for execution is an active thread, or
undefined when there are no active threads. It may be the same thread
that last made a step.

(The following definitions allow $$\SHADE{\NAMEREF{update-thread-stepping}}$$ to update
$$\SHADE{\NAMEREF{thread-stepping}}$$ to any valid thread. They are to be replaced by
declarations of built-in funcons, allowing exploration of different
interleavings using oracles.)


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{update-thread-stepping} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\end{align*}$$


When $$\SHADE{\NAMEREF{thread-stepping}}$$ is $$\SHADE{\VAR{TI}}$$ and that thread is not preemptible,
$$\SHADE{\NAMEREF{update-thread-stepping}}$$ has no effect:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \NAMEREF{is-thread-preemptible}
                      (  \VAR{TI} ) \TRANS 
          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (  \VAR{TI} ) \rangle \TRANS 
          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{align*}$$


When  $$\SHADE{\NAMEREF{thread-stepping}}$$ is $$\SHADE{\VAR{TI}}$$ and that thread is preemptible, or when
$$\SHADE{\NAMEREF{thread-stepping}}$$ is undefined, $$\SHADE{\NAMEREF{update-thread-stepping}}$$ may set it to any
active $$\SHADE{\VAR{TI}'}$$:


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \NAMEREF{is-thread-preemptible}
                      (  \VAR{TI} ) \TRANS 
          (  \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true} )\\&
        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{some-element}
          (  \VAR{ATS} ) \leadsto 
          \VAR{TI}'
      }{
      &  \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (  \VAR{TI} ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{some-element}
          (  \VAR{ATS} ) \leadsto 
          \VAR{TI}'
      }{
      &  \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (   \  ), \NAMEREF{active-thread-set} (  \VAR{ATS} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (  \VAR{TI}' ) \rangle
      }
\end{align*}$$


When there are no active threads, $$\SHADE{\NAMEREF{update-thread-stepping}}$$ ensures that
$$\SHADE{\NAMEREF{thread-stepping}}$$ is undefined:


$$\begin{align*}
  \KEY{Rule} \quad
    &  \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (  \VAR{TI}\QUERY ), \NAMEREF{active-thread-set} \{   \  \} \rangle \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (   \  ) \rangle
\end{align*}$$


Scheduling information for each thread can be inspected and updated:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{update-thread-schedule}(
                       \_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                 (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} )) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    &  \NAMEREF{update-thread-schedule}
                    (  \VAR{VS} : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                      (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ) ) \TRANS \\&\quad
        \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-schedule} (  \VAR{VS} ) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{current-thread-schedule} 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                     (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ) 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{current-thread-schedule}, \NAMEREF{thread-schedule} (  \VAR{VS} ) \rangle \TRANS 
        \VAR{VS}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{thread-preemtibilities} 
  \ ::= \ &
  \NAMEDECL{thread-preemptible} \mid \NAMEDECL{thread-cooperative}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-thread-preemptible}(
                       \_ : \NAMEREF{thread-ids}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\&\quad
    \leadsto \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
               \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
                 (  \NAMEREF{thread-cooperative}, 
                        \NAMEREF{current-thread-schedule} )
\end{align*}$$


For now, all threads are preemptible unless the scheduling includes cooperative.

The representation of scheduling information is left open here, together with
the details of how it affects the result of $$\SHADE{\NAMEREF{update-thread-stepping}}$$.




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
[Multithreading.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Multithreading/Multithreading.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Threads/Multithreading
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Threads/Multithreading
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Threads/Multithreading/Multithreading.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
