---
layout: default
title: "Synchronising"
math: katex
parent: Threads
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Synchronising.cbs]

### Thread synchronisation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{Syncs
          } ~ & \textsf{} \\
  \KEY{Datatype} ~ & \NAMEREF{syncs} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-create} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-feature} \\
  \KEY{Funcon} ~ & \NAMEREF{is-sync-feature} \\
  \textsf{Sync} ~ & \textsf{features} \\
  \KEY{Datatype} ~ & \NAMEREF{sync-features} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-waiting-list} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-held} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-holder} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-count} \\
  \KEY{Funcon} ~ & \NAMEREF{sync-feature-create}
  ~ ]
\end{aligned}$$


Thread synchronisation can be supported in many different ways: semaphores,
exclusive and shared locks, conditions, barriers, rendezvous, spin-locks, etc.
They generally involve the execution of one or more threads being blocked
while they wait for some synchronisation request to be granted by a synchroniser
due to a step by some unblocked thread. Blocking may involve thread suspension
or repeated requests.

In general, the effect of granting a sync needs to be atomic, to
preclude preemption. However, the execution of the thread that caused the
request to be granted might continue without yielding, thereby delaying the
resumed execution of the requesting thread. Synchronisation ensures that the
executions of two or more threads are at particular points at the same time,
but it does *not* require their next steps to be simultaneous.

Syncs are mutable structures that map sync features to variables (some fields
may be constant values). Inspecting and updating sync features should be atomic,
in case threads are preemptible.


#### Syncs
               



A sync is formed from its features:


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{syncs}  
  ~ ::= ~ & \NAMEDECL{sync} (\_ : \NAMEREF{sync-feature-maps})
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-create}
           (\VAR{M}\PLUS)}$$ checks that the specified features are distinct. (It could
also check required feature constraints.)


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{sync-create}(\VAR{M}\PLUS : \NAMEREF{sync-feature-maps}\PLUS) :  \TO \NAMEREF{syncs} \\
  & \quad \leadsto \NAMEREF{sync} ~
                     \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                       \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite} ~
                         \VAR{M}\PLUS
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-feature}
           (\VAR{SY},   
            \VAR{SF})}$$ selects the feature $$\SHADE{\VAR{SF}}$$ from $$\SHADE{\VAR{SY}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{sync-feature}(\_ : \NAMEREF{syncs}, \_ : \NAMEREF{sync-features}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{sync-feature}
        (\NAMEREF{sync}
           (\VAR{SFM} : \NAMEREF{sync-feature-maps}),   
         \VAR{SF} : \NAMEREF{sync-features}) \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                                                 \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup}
                                                   (\VAR{SFM},    
                                                    \VAR{SF})
\end{aligned}$$


$$\SHADE{\NAMEREF{is-sync-feature}
           (\VAR{SY},   
            \VAR{SF})}$$ tests whether $$\SHADE{\VAR{SY}}$$ has the feature $$\SHADE{\VAR{SF}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-sync-feature}(\_ : \NAMEREF{syncs}, \_ : \NAMEREF{sync-features}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{is-sync-feature}
        (\NAMEREF{sync}
           (\VAR{SFM} : \NAMEREF{sync-feature-maps}),   
         \VAR{SF} : \NAMEREF{sync-features}) \leadsto \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set}
                                                 (\VAR{SF},   
                                                  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{dom} ~
                                                    \VAR{SFM})
\end{aligned}$$

#### Sync features
               


Combinations of the following features support various kinds of locks and
notifications.


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{sync-features}  
  ~ ::= ~ & 
  \NAMEDECL{sync-waiting-list}  \\
  ~ \mid ~ & \NAMEDECL{sync-held}  \\
  ~ \mid ~ & \NAMEDECL{sync-holder}  \\
  ~ \mid ~ & \NAMEDECL{sync-count} 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Type} ~  
  & \NAMEDECL{sync-feature-maps}  
  \leadsto \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
             (\NAMEREF{sync-features},   
              \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$


A field for each feature is created independently:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{sync-feature-create}(\_ : \NAMEREF{sync-features}) :  \TO \NAMEREF{sync-feature-maps}
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-waiting-list}}$$ stores pending requests in the order of receipt, together
with the requesting thread-ids:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{sync-feature-create} ~
        \NAMEREF{sync-waiting-list} \leadsto \{ \NAMEREF{sync-waiting-list} \mapsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                                                    (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                                                       (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}),   
                                                                     \ ~ ) \}
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-held}}$$ stores whether a lock is currently held:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{sync-feature-create} ~
        \NAMEREF{sync-held} \leadsto \{ \NAMEREF{sync-held} \mapsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                                                    (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans},   
                                                                     \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Booleans}{false}) \}
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-holder}}$$ stores the current holder of a lock, if any:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{sync-feature-create} ~
        \NAMEREF{sync-holder} \leadsto \{ \NAMEREF{sync-holder} \mapsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
                                                                    (\NAMEHYPER{../.}{Multithreading}{thread-ids}) \}
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-count}}$$ stores a counter. Different kinds of locks and notifications use
the counter in different ways, e.g., shared locks use it for the number of
threads currently holding the lock:


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{sync-feature-create} ~
        \NAMEREF{sync-count} \leadsto \{ \NAMEREF{sync-count} \mapsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                                                    (\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Integers}{nats},   
                                                                     0) \}
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-waiting-list-add}
           (\VAR{SY},   
            \VAR{V})}$$ adds $$\SHADE{\VAR{V}}$$ to the waiting-list of $$\SHADE{\VAR{SY}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{sync-waiting-list-add}(\VAR{SY} : \NAMEREF{syncs}, \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                     (\NAMEREF{sync-feature}
                        (\VAR{SY}, \\&\quad \quad 
                         \NAMEREF{sync-waiting-list}), \\&\quad 
                      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{list-append}
                        (\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                           \NAMEREF{sync-feature}
                             (\VAR{SY}, \\&\quad \quad \quad \quad 
                              \NAMEREF{sync-waiting-list}), \\&\quad \quad 
                         \\VAR{V}))
\end{aligned}$$


$$\SHADE{\NAMEREF{sync-waiting-list-head-remove}
           (\VAR{SY})}$$ removes the first value from the 
waiting-list of $$\SHADE{\VAR{SY}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Auxiliary Funcon} ~ 
  & \NAMEDECL{sync-waiting-list-head-remove}(\VAR{SY} : \NAMEREF{syncs}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                     (\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                        \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{list-head} ~
                          \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                            \NAMEREF{sync-feature}
                              (\VAR{SY}, \\&\quad \quad \quad \quad \quad 
                               \NAMEREF{sync-waiting-list}), \\&\quad 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                           (\NAMEREF{sync-feature}
                              (\VAR{SY}, \\&\quad \quad \quad \quad 
                               \NAMEREF{sync-waiting-list}), \\&\quad \quad \quad 
                            \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                              \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Lists}{list-tail} ~
                                \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                                  \NAMEREF{sync-feature}
                                    (\VAR{SY}, \\&\quad \quad \quad \quad \quad \quad \quad 
                                     \NAMEREF{sync-waiting-list})), \\&\quad \quad 
                         \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\end{aligned}$$


Various kinds of locks and notifications are represented by sync feature maps,
together with funcons that (atomically) inspect and update them accordngly.



$$\relax\begin{aligned}\relax
  [ ~ 
  \textsf{Locks
          } ~ & \textsf{} \\
  \textsf{Notifications
          } ~ & \textsf{}
  ~ ]
\end{aligned}$$



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

[Synchronising.cbs]: /CBS-beta/Unstable-Funcons-beta/Computations/Threads/Synchronising/Synchronising.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Threads/Synchronising/Synchronising.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
