---
layout: default
title: "Multithreading"
math: katex
parent: Threads
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Multithreading.cbs]

### Multithreading
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{thread-ids} \\
  \KEY{Datatype} ~ & \NAMEREF{threads} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-joinable} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-detached}
  ~ ]
\end{aligned}$$

#### Initialisation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{initialise-multithreading}
  ~ ]
\end{aligned}$$

#### Activation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{multithread} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-activate} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-detach}
  ~ ]
\end{aligned}$$

#### Execution
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{current-thread} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-atomic} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-yield} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-spin} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-suspend} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-resume}
  ~ ]
\end{aligned}$$

#### Termination
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{thread-terminate} \\
  \KEY{Funcon} ~ & \NAMEREF{is-thread-terminated} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-value} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-join} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-exterminate}
  ~ ]
\end{aligned}$$

#### Scheduling
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{update-thread-stepping} \\
  \KEY{Funcon} ~ & \NAMEREF{update-thread-schedule} \\
  \KEY{Funcon} ~ & \NAMEREF{current-thread-schedule} \\
  \KEY{Funcon} ~ & \NAMEREF{is-thread-preemptible} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-preemptible} \\
  \KEY{Funcon} ~ & \NAMEREF{thread-cooperative}
  ~ ]
\end{aligned}$$


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


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Datatype} ~ 
  \NAMEDECL{thread-ids}  
  ~ ::= ~ & \NAMEDECL{thread-id} (\_ : \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Generating}{atoms})
\end{aligned}$$


A thread is called joinable when other threads can wait for its
termination. A joinable thread contains a list of the threads that
are currently waiting to join it. A non-joinable thread is called
detached:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Datatype} ~ 
  \NAMEDECL{threads}  
  ~ ::= ~ & \NAMEDECL{thread} (\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                         (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}), \_ : (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{lists} ~
                                          \NAMEREF{thread-ids})\QUERY)
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-joinable}(\VAR{TH} : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})) :  \TO \NAMEREF{threads} \\
  & \quad \leadsto \NAMEREF{thread}
                     (\VAR{TH}, \\&\quad 
                      \ ~ )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-detached}(\VAR{TH} : \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks}
                                (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})) :  \TO \NAMEREF{threads} \\
  & \quad \leadsto \NAMEREF{thread}
                     (\VAR{TH})
\end{aligned}$$


In names of funcons and entities, and in informal explanations,
a reference to a 'thread' generally concerns a thread-id, rather
than a value of type $$\SHADE{\NAMEREF{threads}}$$. The only funcons that compute 
$$\SHADE{\NAMEREF{threads}}$$ are $$\SHADE{\NAMEREF{thread-joinable}
           (\VAR{TH})}$$ and $$\SHADE{\NAMEREF{thread-detached}
           (\VAR{TH})}$$;
$$\SHADE{\NAMEREF{thread-activate}
           (\VAR{THR})}$$ is the only funcon that takes an argument
of type $$\SHADE{\NAMEREF{threads}}$$.

The thunk contained in a thread can be formed directly from a
computation $$\SHADE{\VAR{X}}$$ by $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
           \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
             \VAR{X}}$$. Alternatively, $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Functions}{supply}
           (\VAR{F},   
            \VAR{V})}$$
forms a thunk by supplying an argument value $$\SHADE{\VAR{V}}$$ to a function $$\SHADE{\VAR{F}}$$
without executing $$\SHADE{\VAR{F}}$$ (in contrast to $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
           (\VAR{F},   
            \VAR{V})}$$, which forces
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


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{thread-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (\NAMEREF{thread-ids}, \\&\quad 
                                                             \NAMEREF{threads})) \rangle \TRANS  \langle \_, \NAME{thread-map}(\_ : \NAME{maps}
                                                                                               (\NAME{thread-ids}, \\&\quad 
                                                                                                \NAME{threads})) \rangle
\end{aligned}$$


The $$\SHADE{\NAMEREF{active-thread-set}}$$ distinguishes between active and suspended
threads:


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{active-thread-set}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                            (\NAMEREF{thread-ids})) \rangle \TRANS  \langle \_, \NAME{active-thread-set}(\_ : \NAME{sets}
                                                                                               (\NAME{thread-ids})) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-some-thread-active} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{is-some-thread-active}, \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
                                                               \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                                                 (\VAR{ATS},    
                                                                  \{  ~  \})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-some-thread-suspended} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{is-some-thread-suspended}, \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
                                                               \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
                                                                 (\VAR{ATS},    
                                                                  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} ~
                                                                    \VAR{TM})
\end{aligned}$$


The $$\SHADE{\NAMEREF{thread-stepping}}$$ entity identifies the thread whose step is
currently being executed. When defined, it identifies an active thread:


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{thread-stepping}(\_ : \NAMEREF{thread-ids}\QUERY) \rangle \TRANS  \langle \_, \NAME{thread-stepping}(\_ : \NAME{thread-ids}\QUERY) \rangle
\end{aligned}$$


The $$\SHADE{\NAMEREF{terminated-thread-map}}$$ contains the values computed by terminated
joinable threads:


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{terminated-thread-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (\NAMEREF{thread-ids}, \\&\quad 
                                                             \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})) \rangle \TRANS  \langle \_, \NAME{terminated-thread-map}(\_ : \NAME{maps}
                                                                                               (\NAME{thread-ids}, \\&\quad 
                                                                                                \NAME{values})) \rangle
\end{aligned}$$


Deleted threads are not contained in any of the above entities.
Terminated detached threads are always deleted.

Scheduling information for each thread may affect the interleaving
of thread steps:


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{thread-schedule}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                            (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values})) \rangle \TRANS  \langle \_, \NAME{thread-schedule}(\_ : \NAME{sets}
                                                                                               (\NAME{ground-values})) \rangle
\end{aligned}$$


Scheduling can change dynamically between preemptive and cooperative. 


#### Initialisation
               



The entities used to model multithreading need initialising:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-multithreading} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                     (\NAMEREF{initialise-thread-map}, \\&\quad 
                      \NAMEREF{initialise-active-thread-set}, \\&\quad 
                      \NAMEREF{initialise-thread-stepping}, \\&\quad 
                      \NAMEREF{initialise-terminated-thread-map}, \\&\quad 
                      \NAMEREF{initialise-thread-schedule})
\end{aligned}$$


The initial values are generally quite obvious:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{initialise-thread-map} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{initialise-thread-map} \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                                                                     ( ~ )) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{initialise-active-thread-set} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{initialise-active-thread-set} \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} \{  ~  \} \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{initialise-thread-stepping} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{initialise-thread-stepping} \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} ( ~ ) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{initialise-terminated-thread-map} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{initialise-terminated-thread-map} \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{terminated-thread-map} (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                                                                     ( ~ )) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{initialise-thread-schedule} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{initialise-thread-schedule} \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-schedule} \{  ~  \} \rangle
\end{aligned}$$

#### Activation
               



Multithreading can start by activating a single thread, which can then
activate further threads:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{multithread}(\_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\end{aligned}$$


$$\SHADE{\NAMEREF{multithread} ~
           \VAR{X}}$$ forms a joinable thread from $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
           \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
             \VAR{X}}$$ and
activates it. On normal termination of all threads, it gives the value
computed by $$\SHADE{\VAR{X}}$$. On abrupt termination (caused by a thread step, or by
the failure of the check that all threads have terminated) the reason
for it:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{multithread} ~
        \VAR{X} \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                                 (\NAMEREF{initialise-multithreading},   
                                                  \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                                                    (\NAMEREF{thread-activate} ~
                                                       \NAMEREF{thread-joinable} ~
                                                         \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                           \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                                                             \VAR{X},    
                                                     \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{handle-abrupt}
                                                       (\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                                          (\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
                                                             (\NAMEREF{is-some-thread-active},       
                                                              \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                                                (\NAMEREF{update-thread-stepping},        
                                                                 \NAMEREF{thread-step})),      
                                                           \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{check} ~
                                                             \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
                                                               \NAMEREF{is-some-thread-suspended},      
                                                           \NAMEREF{thread-value} ~
                                                             \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given}),     
                                                        \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given})))
\end{aligned}$$


The $$\SHADE{\NAMEREF{update-thread-stepping}}$$ funcon determines the thread-id for the next step,
which may depend on whether the previous step has yielded, on its
preemptibility, and on the current scheduling.

A thread can activate the execution of thread-activates:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-activate}(\_ : \NAMEREF{threads}) :  \TO \NAMEREF{thread-ids}
\end{aligned}$$


When a thread is activated, a fresh thread-id is generated, and the
thread is included in the thread-map and the active-thread-set:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \NAMEREF{thread-id}
                    (\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}) \TRANS \VAR{TI}\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
        (\{ \VAR{TI} \mapsto \VAR{THR} \},   
         \VAR{TM}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (\{ \VAR{TI} \},   
         \VAR{ATS}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-activate}
                            (\VAR{THR} : \NAMEREF{threads}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \VAR{TI}, \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


A joinable thread can be detached after its activation, discarding its
list of joining threads:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-detach}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$


When the thread has not yet terminated, it remains in the thread-map:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
        (\VAR{TM},   
         \VAR{TI}) \leadsto \NAMEREF{thread}
                                                 (\VAR{TH},   
                                                  \_)\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
        (\{ \VAR{TI} \mapsto \NAMEREF{thread}
                              (\VAR{TH}) \},   
         \VAR{TM}) \leadsto \VAR{TM}'
      }{
       \langle \NAMEREF{thread-detach}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (\VAR{TM}') \rangle
      }
\end{aligned}$$


When the thread has already terminated, detaching it deletes it from
the terminated-thread-map:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} ~
           \VAR{TMV}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TMV},   
         \{ \VAR{TI} \}) \leadsto \VAR{TMV}'
      }{
       \langle \NAMEREF{thread-detach}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{terminated-thread-map} (\VAR{TMV}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{terminated-thread-map} (\VAR{TMV}') \rangle
      }
\end{aligned}$$


(A funcon for making a detached thread joinable could be defined
similarly.)


#### Execution
               



The thread-stepping is undefined only before multithreading starts,
and when all non-terminated threads are suspended.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{current-thread} :  \TO \NAMEREF{thread-ids}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{current-thread}, \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \TRANS \VAR{TI}
\end{aligned}$$


$$\SHADE{\NAMEREF{current-thread}}$$ is only intended for use in threads:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{current-thread}, \NAMEREF{thread-stepping} ( ~ ) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
\end{aligned}$$

##### Stepping
               



The funcon $$\SHADE{\NAMEREF{thread-step}}$$ executes a single step of the thread identified 
by $$\SHADE{\NAMEREF{thread-stepping}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{thread-step} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$


Whenever $$\SHADE{\VAR{THR}}$$ executes a step and $$\SHADE{\VAR{THR}'}$$ represents the remaining
steps, the thread-map is updated to map $$\SHADE{\VAR{TI}}$$ to $$\SHADE{\VAR{THR}'}$$.  

If the body of the thread can make a step, so can $$\SHADE{\NAMEREF{thread-step}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}) \leadsto \NAMEREF{thread}
                                                 (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                                                      (\VAR{X}),   
                                                  \VAR{L}\QUERY)\\n \langle \VAR{X}, \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \langle \VAR{X}', \NAMEREF{thread-stepping} (\VAR{TI}\QUERY), \NAMEREF{thread-map} (\VAR{TM}') \rangle\\n\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
           (\VAR{TI},    
            \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} ~
              \VAR{TM}'),   
         \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
           (\{ \VAR{TI} \mapsto \NAMEREF{thread}
                                 (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                                      (\VAR{X}'),     
                                  \VAR{L}\QUERY) \},    
            \VAR{TM}'),   
         \VAR{TM}') \leadsto \VAR{TM}''
      }{
       \langle \NAMEREF{thread-step}, \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}\QUERY), \NAMEREF{thread-map} (\VAR{TM}'') \rangle
      }
\end{aligned}$$


The only other case for a next step is when a thread has terminated
normally, and is to be removed from the executing thread map.

If it is detached, its computed value is discarded:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}) \leadsto \NAMEREF{thread}
                                                 (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                                                      (\VAR{X}))\\n\VAR{X} \leadsto (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TM},   
         \{ \VAR{TI} \}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI} \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-step}, \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} ( ~ ), \NAMEREF{thread-map} (\VAR{TM}') \rangle
      }
\end{aligned}$$


If the thread is joinable, all its joining threads are resumed, and its
computed value is made available in the terminated-thread-map:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}) \leadsto \NAMEREF{thread}
                                                 (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction}
                                                      (\VAR{X}),   
                                                   VAR{TI}\STAR)\\n\VAR{X} \leadsto (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TM},   
         \{ \VAR{TI} \}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
           (\VAR{ATS},    
            \{ \VAR{TI} \}),   
         \{ \VAR{TI}\STAR \}) \leadsto \VAR{ATS}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
        (\VAR{TVM},   
         \{ \VAR{TI} \mapsto \VAR{V} \}) \leadsto \VAR{TVM}'
      }{
       \langle \NAMEREF{thread-step}, \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{terminated-thread-map} (\VAR{TVM}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} ( ~ ), \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{terminated-thread-map} (\VAR{TVM}') \rangle
      }
\end{aligned}$$

##### Sync atomicity
               



$$\SHADE{\NAMEREF{thread-atomic}
           (\VAR{X})}$$ computes $$\SHADE{\VAR{X}}$$ in a single transition. Assuming that the
potentially interfering effects of $$\SHADE{\VAR{X}}$$ may only be updates on the store,
thread suspension and/or resumption, and abrupt termination, and that $$\SHADE{\VAR{X}}$$
always terminates, the outcome of $$\SHADE{\NAMEREF{thread-atomic}
           (\VAR{X})}$$ is the same as that of
computing $$\SHADE{\VAR{X}}$$ without preemption.

(The funcon $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{atomic}
           (\VAR{X})}$$ generalises $$\SHADE{\NAMEREF{thread-atomic}
           (\VAR{X})}$$ to allow $$\SHADE{\VAR{X}}$$ with
arbitrary effects. When the CBS notation "--->1 ; --->2" for composing
transitions has been implemented by the interpreter generation tools,
uses of $$\SHADE{\NAMEREF{thread-atomic}
           (\VAR{X})}$$ are to be replaced by $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{atomic}
           (\VAR{X})}$$.)


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{thread-atomic}(\_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \langle \VAR{X}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}), \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} \langle \VAR{X}', \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}'), \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} (\VAR{TI}') \rangle\\n \langle \NAMEREF{thread-atomic}
                            (\VAR{X}'), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}'), \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} (\VAR{TI}') \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}''), \NAMEREF{active-thread-set} (\VAR{ATS}''), \NAMEREF{thread-stepping} (\VAR{TI}''\QUERY) \rangle
      }{
       \langle \NAMEREF{thread-atomic}
                            (\VAR{X}), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}), \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}''), \NAMEREF{active-thread-set} (\VAR{ATS}''), \NAMEREF{thread-stepping} (\VAR{TI}''\QUERY) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \langle \VAR{X}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}), \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} \langle \VAR{X}', \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}'), \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} (\VAR{TI}') \rangle\\n \langle \NAMEREF{thread-atomic}
                            (\VAR{X}'), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}'), \NAMEREF{active-thread-set} (\VAR{ATS}'), \NAMEREF{thread-stepping} (\VAR{TI}') \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}''), \NAMEREF{active-thread-set} (\VAR{ATS}''), \NAMEREF{thread-stepping} (\VAR{TI}''\QUERY) \rangle
      }{
       \langle \NAMEREF{thread-atomic}
                            (\VAR{X}), \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}), \NAMEREF{active-thread-set} (\VAR{ATS}), \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} \langle \VAR{V}, \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{store} (\VAR{$\sigma$}''), \NAMEREF{active-thread-set} (\VAR{ATS}''), \NAMEREF{thread-stepping} (\VAR{TI}''\QUERY) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} \VAR{X}'
      }{
       \NAMEREF{thread-atomic}
                    (\VAR{X}) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} \NAMEREF{thread-atomic}
                                                               (\VAR{X}')
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})
      }{
       \NAMEREF{thread-atomic}
                    (\VAR{X}) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}( ~ )}_{} \VAR{V}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})
      }{
       \NAMEREF{thread-atomic}
                    (\VAR{X}) \xrightarrow{\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted}(\VAR{A})}_{} \NAMEREF{thread-atomic}
                                                               (\VAR{V})
      }
\\
  \KEY{Rule} ~ 
    &  \NAMEREF{thread-atomic}
                    (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) \TRANS \VAR{V}
\end{aligned}$$


Note that if the execution of $$\SHADE{\NAMEREF{thread-atomic}
           (\VAR{X})}$$ involves $$\SHADE{\NAMEREF{thread-yield}
           ( ~ )}$$ or
$$\SHADE{\NAMEREF{thread-suspend}
           ( ~ )}$$, this makes thread-stepping undefined, so it has to be the
final step of $$\SHADE{\VAR{X}}$$.


##### Yielding
               



A thread can yield execution:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-yield}(\_ : \NAMEREF{thread-ids}\QUERY) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$


When the argument thread-id is omitted, the next thread to be executed
is left undefined, to be determined by the scheduler:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{thread-yield}
                    ( ~ ) \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} ( ~ ) \rangle
\end{aligned}$$


When the argument thread-id is $$\SHADE{\VAR{TI}}$$, it has to be an active thread:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \VAR{ATS}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})
      }{
       \langle \NAMEREF{thread-yield}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \VAR{ATS}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false})
      }{
       \langle \NAMEREF{thread-yield}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\end{aligned}$$


$$\SHADE{\NAMEREF{thread-spin}
           (\VAR{X})}$$ repeatedly executes $$\SHADE{\VAR{X}}$$ while it fails, allowing interleaving
with other threads.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-spin}(\VAR{X} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                     (\VAR{X}, \\&\quad 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\NAMEREF{thread-yield}
                           ( ~ ), \\&\quad \quad 
                         \NAMEREF{thread-spin}
                           (\VAR{X})))
\end{aligned}$$

##### Suspension and resumption
               



A thread may suspend one or more threads that are currently being
executed:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-suspend}(\_ : \NAMEREF{thread-ids}\PLUS) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \{ \VAR{TI}\PLUS \}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-subset}
        (\{ \VAR{TI}\PLUS \},   
         \VAR{ATS}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI}\PLUS \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-suspend}
                            (\VAR{TI}\PLUS : \NAMEREF{thread-ids}\PLUS), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


If $$\SHADE{\VAR{TI}\PLUS}$$ includes the current thread, suspension is accompanied by
yielding:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \{ \VAR{TI}\PLUS \}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-subset}
        (\{ \VAR{TI}\PLUS \},   
         \VAR{ATS}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI}\PLUS \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-suspend}
                            (\VAR{TI}\PLUS : \NAMEREF{thread-ids}\PLUS), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} ( ~ ), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


(Deadlock occurs if the last non-suspended thread suspends itself.)

A thread may resume any number of suspended threads:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-resume}(\_ : \NAMEREF{thread-ids}\STAR) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
        (\VAR{TI},   
         \{ \VAR{TI}\STAR \}) == (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-intersect}
        (\VAR{ATS},   
         \{ \VAR{TI}\STAR \}) == \{  ~  \}\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (\VAR{ATS},   
         \{ \VAR{TI}\STAR \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-resume}
                            (\VAR{TI}\STAR : \NAMEREF{thread-ids}\STAR), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$

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


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-terminate}(\_ : \NAMEREF{thread-ids}, \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}\QUERY) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$


When the thread is detached, no value is specified:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}') \leadsto \NAMEREF{thread}
                                                 (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                    \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} ~
                                                      \VAR{X})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TM},   
         \{ \VAR{TI}' \}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI}' \}) \leadsto \VAR{ATS}'\\n\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{when-true}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
           \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
             (\VAR{TI},     
              \VAR{TI}'),   
         \VAR{TI}) \leadsto \VAR{TI}\QUERY
      }{
       \langle \NAMEREF{thread-terminate}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}\QUERY), \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


When the thread is joinable, its value has to be specified:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}') \leadsto \NAMEREF{thread}
                                                 ((\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                                                     \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} ~
                                                       \VAR{X}),   
                                                   VAR{TI}\STAR)\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TM},   
         \{ \VAR{TI}' \}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
           (\VAR{ATS},    
            \{ \VAR{TI}' \}),   
         \{ \VAR{TI}\STAR \}) \leadsto \VAR{ATS}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
        (\VAR{TVM},   
         \{ \VAR{TI}' \mapsto \VAR{V} \}) \leadsto \VAR{TVM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{when-true}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
           \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-equal}
             (\VAR{TI},     
              \VAR{TI}'),   
         \VAR{TI}) \leadsto \VAR{TI}\QUERY
      }{
       \langle \NAMEREF{thread-terminate}
                            (\VAR{TI}' : \NAMEREF{thread-ids},   
                             \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{terminated-thread-map} (\VAR{TVM}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}\QUERY), \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{terminated-thread-map} (\VAR{TVM}'), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


A thread can test whether a joinable thread has terminated:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-thread-terminated}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{is-thread-terminated}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{terminated-thread-map} (\VAR{TVM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-value}
                                                               (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
                                                                  (\VAR{TVM},    
                                                                   \VAR{TI}))
\end{aligned}$$


If so, it can get the computed value:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-value}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{thread-value}
                            (\VAR{TI} : \NAMEREF{thread-ids}), \NAMEREF{terminated-thread-map} (\VAR{TVM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                                                               \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
                                                                 (\VAR{TVM},    
                                                                  \VAR{TI})
\end{aligned}$$


Joining a thread may cause suspension:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-join}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}') \leadsto \NAMEREF{thread}
                                                 (\VAR{TH},   
                                                   VAR{TI}\STAR)\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
        (\{ \VAR{TI}' \mapsto \NAMEREF{thread}
                              (\VAR{TH},    
                                VAR{TI}\STAR,    
                                \VAR{TI}) \},   
         \VAR{TM}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI} \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-join}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{thread-stepping} ( ~ ), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$


If a joinable thread has already terminated, the $$\SHADE{\NAMEREF{terminated-thread-map}}$$
holds its value:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{is-value}
        (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
           (\VAR{TVM},    
            \VAR{TI}')) == \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
      }{
       \langle \NAMEREF{thread-join}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{terminated-thread-map} (\VAR{TVM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{aligned}$$


Trying to join a detached thread fails:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}') \leadsto \NAMEREF{thread}
                                                 (\VAR{TH})
      }{
       \langle \NAMEREF{thread-join}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{thread-map} (\VAR{TM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TM},   
         \VAR{TI}') == ( ~ )\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{TVM},   
         \VAR{TI}') == ( ~ )
      }{
       \langle \NAMEREF{thread-join}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{terminated-thread-map} (\VAR{TVM}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}
      }
\end{aligned}$$


Extermination of a thread both terminates it and prevents its subsequent
inspection.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{thread-exterminate}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \VAR{TI}' \neq \VAR{TI}\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TM},   
         \{ \VAR{TI}' \}) \leadsto \VAR{TM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
        (\VAR{TVM},   
         \{ \VAR{TI}' \}) \leadsto \VAR{TVM}'\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{set-difference}
        (\VAR{ATS},   
         \{ \VAR{TI}' \}) \leadsto \VAR{ATS}'
      }{
       \langle \NAMEREF{thread-exterminate}
                            (\VAR{TI}' : \NAMEREF{thread-ids}), \NAMEREF{thread-map} (\VAR{TM}), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{terminated-thread-map} (\VAR{TVM}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-map} (\VAR{TM}'), \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{terminated-thread-map} (\VAR{TVM}'), \NAMEREF{active-thread-set} (\VAR{ATS}') \rangle
      }
\end{aligned}$$

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


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{update-thread-stepping} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\end{aligned}$$


When $$\SHADE{\NAMEREF{thread-stepping}}$$ is $$\SHADE{\VAR{TI}}$$ and that thread is not preemptible,
$$\SHADE{\NAMEREF{update-thread-stepping}}$$ has no effect:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \NAMEREF{is-thread-preemptible}
                    (\VAR{TI}) \TRANS \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
      }{
       \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (\VAR{TI}) \rangle \TRANS \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{aligned}$$


When  $$\SHADE{\NAMEREF{thread-stepping}}$$ is $$\SHADE{\VAR{TI}}$$ and that thread is preemptible, or when
$$\SHADE{\NAMEREF{thread-stepping}}$$ is undefined, $$\SHADE{\NAMEREF{update-thread-stepping}}$$ may set it to any
active $$\SHADE{\VAR{TI}'}$$:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \NAMEREF{is-thread-preemptible}
                    (\VAR{TI}) \TRANS (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{true})\\n\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{some-element}
        (\VAR{ATS}) \leadsto \VAR{TI}'
      }{
       \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (\VAR{TI}), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}') \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{some-element}
        (\VAR{ATS}) \leadsto \VAR{TI}'
      }{
       \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} ( ~ ), \NAMEREF{active-thread-set} (\VAR{ATS}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} (\VAR{TI}') \rangle
      }
\end{aligned}$$


When there are no active threads, $$\SHADE{\NAMEREF{update-thread-stepping}}$$ ensures that
$$\SHADE{\NAMEREF{thread-stepping}}$$ is undefined:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{update-thread-stepping}, \NAMEREF{thread-stepping} (\VAR{TI}\QUERY), \NAMEREF{active-thread-set} \{  ~  \} \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-stepping} ( ~ ) \rangle
\end{aligned}$$


Scheduling information for each thread can be inspected and updated:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{update-thread-schedule}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values})) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    &  \NAMEREF{update-thread-schedule}
                    (\VAR{VS} : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                 (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values})) \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{thread-schedule} (\VAR{VS}) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{current-thread-schedule} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                                         (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values})
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{current-thread-schedule}, \NAMEREF{thread-schedule} (\VAR{VS}) \rangle \TRANS \VAR{VS}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{thread-preemtibilities}  
  ~ ::= ~ & 
  \NAMEDECL{thread-preemptible}  \\
  ~ \mid ~ & \NAMEDECL{thread-cooperative} 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-thread-preemptible}(\_ : \NAMEREF{thread-ids}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
                     \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
                       (\NAMEREF{thread-cooperative}, \\&\quad \quad 
                        \NAMEREF{current-thread-schedule})
\end{aligned}$$


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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Multithreading.cbs]: /CBS-beta/Unstable-Funcons-beta/Computations/Threads/Multithreading/Multithreading.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Multithreading/Multithreading.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
