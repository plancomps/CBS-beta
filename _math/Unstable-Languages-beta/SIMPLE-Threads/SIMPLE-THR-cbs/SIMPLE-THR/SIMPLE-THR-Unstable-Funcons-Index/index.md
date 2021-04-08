---
title: "SIMPLE-THR-Unstable-Funcons-Index"
math: katex
parent: SIMPLE-THR
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [SIMPLE-THR-Unstable-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{allocate-index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{lookup-index}
  \ ]
\end{align*}$$

### Memos
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{initialise-memos} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Memos}{memo-value-recall}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Postponing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Abnormal}{Postponing}{postpone-after-effect}
  \ ]
\end{align*}$$

## Threads
               


### Multithreading
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable}
  \ ]
\end{align*}$$

#### Activation
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{multithread} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate}
  \ ]
\end{align*}$$

#### Termination
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-join}
  \ ]
\end{align*}$$

### Thread synchronisation
               


#### Locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{is-exclusive-lock-holder}
  \ ]
\end{align*}$$

##### Reentrant locks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-sync-else-wait} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-release} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Locks}{reentrant-lock-exit}
  \ ]
\end{align*}$$

#### Notifications
               


##### Rendezvous
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-create} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads/Synchronising}{Notifications}{rendezvous-sync-else-wait}
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
[SIMPLE-THR-Unstable-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs/SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE-THR/SIMPLE-THR-Unstable-Funcons-Index/SIMPLE-THR-Unstable-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
