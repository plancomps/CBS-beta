---
layout: default
title: "SIMPLE-THR-Unstable-Funcons-Index"
math: katex
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [SIMPLE-THR-Unstable-Funcons-Index.cbs]





Unstable Funcons, for use only in Unstable Languages


# Computations
               


## Normal computation
               


### Value indexing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{allocate-index} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
  ~ ]
\end{aligned}$$

### Memos
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{initialise-memos} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall}
  ~ ]
\end{aligned}$$

## Abnormal computation
               


### Postponing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone-after-effect}
  ~ ]
\end{aligned}$$

## Threads
               


### Multithreading
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable}
  ~ ]
\end{aligned}$$

#### Activation
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate}
  ~ ]
\end{aligned}$$

#### Termination
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join}
  ~ ]
\end{aligned}$$

### Thread synchronisation
               


#### Locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder}
  ~ ]
\end{aligned}$$

##### Reentrant locks
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit}
  ~ ]
\end{aligned}$$

#### Notifications
               


##### Rendezvous
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-create} \\
  \KEY{Funcon} ~ & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
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

[SIMPLE-THR-Unstable-Funcons-Index.cbs]: /CBS-beta/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
