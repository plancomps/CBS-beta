



Unstable Funcons, for use only in Unstable Languages


# Computations
               


## Normal computation
               


### Value indexing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Indexing}{value-index} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Indexing}{initialise-index} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Indexing}{allocate-index} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Indexing}{lookup-index}
  ~ ]
\end{aligned}$$

### Memos
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-map} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memos} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memo-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value-recall}
  ~ ]
\end{aligned}$$

## Abnormal computation
               


### Postponing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postponing} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone-after-effect} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{after-effect}
  ~ ]
\end{aligned}$$

## Threads
               


### Multithreading
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-ids} \\
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{threads} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-joinable} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detached}
  ~ ]
\end{aligned}$$

#### Initialisation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{initialise-multithreading}
  ~ ]
\end{aligned}$$

#### Activation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{multithread} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-activate} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detach}
  ~ ]
\end{aligned}$$

#### Execution
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-atomic} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-yield} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-spin} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-suspend} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-resume}
  ~ ]
\end{aligned}$$

#### Termination
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-terminate} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-terminated} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-join} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-exterminate}
  ~ ]
\end{aligned}$$

#### Scheduling
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-stepping} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-schedule} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread-schedule} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-preemptible} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-preemptible} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-cooperative}
  ~ ]
\end{aligned}$$

### Thread synchronisation
               


#### Syncs
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{syncs} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{is-sync-feature}
  ~ ]
\end{aligned}$$

#### Sync features
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-features} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-waiting-list} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-held} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-holder} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-count} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature-create}
  ~ ]
\end{aligned}$$

#### Locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder}
  ~ ]
\end{aligned}$$

##### Spin locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-release}
  ~ ]
\end{aligned}$$

##### Exclusive locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-release}
  ~ ]
\end{aligned}$$

##### Reentrant locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit}
  ~ ]
\end{aligned}$$

##### Semaphores
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-release}
  ~ ]
\end{aligned}$$

##### Shared-exclusive locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-exclusive} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-shared}
  ~ ]
\end{aligned}$$

#### Notifications
               


##### Barriers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync-else-wait}
  ~ ]
\end{aligned}$$

##### Conditions
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait-with-lock} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-all} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-first}
  ~ ]
\end{aligned}$$

##### Rendezvous
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
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
