---
title: "Unstable-Funcons-Index"
math: katex
parent: Unstable-Funcons-beta


---
[Unstable-Funcons-beta] : [Unstable-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

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





Unstable Funcons, for use only in Unstable Languages


# Computations
               


## Normal computation
               


### Value indexing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Indexing}{value-index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Indexing}{initialise-index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Indexing}{allocate-index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Indexing}{lookup-index}
  \ ]
\end{align*}$$

### Memos
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Normal}{Memos}{memo-map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Memos}{initialise-memo-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Normal}{Memos}{memo-value-recall}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Postponing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postponing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Postponing}{postpone-after-effect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Abnormal}{Postponing}{after-effect}
  \ ]
\end{align*}$$

## Threads
               


### Multithreading
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-ids} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{threads} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-joinable} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detached}
  \ ]
\end{align*}$$

#### Initialisation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{initialise-multithreading}
  \ ]
\end{align*}$$

#### Activation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{multithread} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-activate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-detach}
  \ ]
\end{align*}$$

#### Execution
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-atomic} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-yield} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-spin} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-suspend} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-resume}
  \ ]
\end{align*}$$

#### Termination
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-terminate} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-terminated} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-join} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-exterminate}
  \ ]
\end{align*}$$

#### Scheduling
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-stepping} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{update-thread-schedule} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{current-thread-schedule} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{is-thread-preemptible} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-preemptible} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Multithreading}{thread-cooperative}
  \ ]
\end{align*}$$

### Thread synchronisation
               


#### Syncs
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{syncs} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{is-sync-feature}
  \ ]
\end{align*}$$

#### Sync features
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-features} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-waiting-list} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-held} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-holder} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-count} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads}{Synchronising}{sync-feature-create}
  \ ]
\end{align*}$$

#### Locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder}
  \ ]
\end{align*}$$

##### Spin locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{spin-lock-release}
  \ ]
\end{align*}$$

##### Exclusive locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{exclusive-lock-release}
  \ ]
\end{align*}$$

##### Reentrant locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit}
  \ ]
\end{align*}$$

##### Semaphores
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{semaphore-release}
  \ ]
\end{align*}$$

##### Shared-exclusive locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-exclusive-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-sync-shared-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-exclusive} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Locks}{rw-lock-release-shared}
  \ ]
\end{align*}$$

#### Notifications
               


##### Barriers
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{barrier-sync-else-wait}
  \ ]
\end{align*}$$

##### Conditions
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-wait-with-lock} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-all} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{condition-notify-first}
  \ ]
\end{align*}$$

##### Rendezvous
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
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
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Unstable-Funcons-Index/Unstable-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Unstable-Funcons-Index/Unstable-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
