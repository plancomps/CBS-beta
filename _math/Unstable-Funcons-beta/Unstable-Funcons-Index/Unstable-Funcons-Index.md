{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>





Unstable Funcons, for use only in Unstable Languages


# Computations
               


## Normal computation
               


### Value indexing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \ & \NAMEHYPER{../Computations/Normal}{Indexing}{value-index} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Indexing}{initialise-index} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Indexing}{allocate-index} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Indexing}{lookup-index}
  \ ]
\end{align*}$$

### Memos
               


$$\begin{align*}
  [ \
  \KEY{Entity} \ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-map} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memos} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memo-value} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value-recall}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Postponing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postponing} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone-after-effect} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Abnormal}{Postponing}{after-effect}
  \ ]
\end{align*}$$

## Threads
               


### Multithreading
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-ids} \\
  \KEY{Datatype} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{threads} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-joinable} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detached}
  \ ]
\end{align*}$$

#### Initialisation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{initialise-multithreading}
  \ ]
\end{align*}$$

#### Activation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{multithread} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-activate} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detach}
  \ ]
\end{align*}$$

#### Execution
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-atomic} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-yield} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-spin} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-suspend} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-resume}
  \ ]
\end{align*}$$

#### Termination
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-terminate} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-terminated} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-value} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-join} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-exterminate}
  \ ]
\end{align*}$$

#### Scheduling
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-stepping} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-schedule} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread-schedule} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-preemptible} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-preemptible} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-cooperative}
  \ ]
\end{align*}$$

### Thread synchronisation
               


#### Syncs
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{syncs} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{is-sync-feature}
  \ ]
\end{align*}$$

#### Sync features
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-features} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-waiting-list} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-held} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-holder} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-count} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature-create}
  \ ]
\end{align*}$$

#### Locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder}
  \ ]
\end{align*}$$

##### Spin locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-release}
  \ ]
\end{align*}$$

##### Exclusive locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync-else-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-release}
  \ ]
\end{align*}$$

##### Reentrant locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit}
  \ ]
\end{align*}$$

##### Semaphores
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync-else-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-release}
  \ ]
\end{align*}$$

##### Shared-exclusive locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive-else-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared-else-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-exclusive} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-shared}
  \ ]
\end{align*}$$

#### Notifications
               


##### Barriers
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync-else-wait}
  \ ]
\end{align*}$$

##### Conditions
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait-with-lock} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-all} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-first}
  \ ]
\end{align*}$$

##### Rendezvous
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-create} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync} \\
  \KEY{Funcon} \ & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
  \ ]
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
[Unstable-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Unstable-Funcons-Index/Unstable-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Unstable-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Unstable-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Unstable-Funcons-beta/Unstable-Funcons-Index/Unstable-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
