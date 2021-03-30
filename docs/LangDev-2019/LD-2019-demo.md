---
title: LD-2019-demo
nav_exclude: true
search_exclude: true
---

# LangDev-2019 demonstration of CBS

## Browsing

`LD-Start.cbs`

-  `exp`
- `ld-values`
- `eval`
- `scope`

## Generating editors

`LD-Start.cbs`

-  Spoofax: Generate: Language editor

`LD-Editor`

- Refresh
- Clean
- Build
  - Explain pending Spoofax optimisations
    - Separate compilation of Stratego
    - Incremental analysis

## Running pure programs

> Interpreter generation not demonstrated

`LD-Tests`

- `2-Lambda/church.ld `, `3-Arithmetic/if.ld`
  - Spoofax: Generate: Funcons
  - Run: runfct-LD-1

## Extending LD with references and threads

***No changes at all to previous rules!!!***

`LD-Start.txt`

- Copy contents to `LD-Start.cbs`

`LD-Disambiguation.txt`

- Copy contents to `LD-Disambiguation.cbs`

`LD-Start.cbs`

-  Spoofax: Generate: Language editor

`LD-Editor`

- Refresh
- Clean
- Build

## Running imperative and multithreaded programs

> Interpreter generation not demonstrated

`LD-Tests`

- `4-Imperative/sum.ld`
  - Spoofax: Generate: Funcons
  - Run: runfct-LD-2
- `5-Threads/spawn-join.ld`, `5-Threads/spawn-sync.ld`
  - Spoofax: Generate: Funcons
  - Run: runfct-LD-3

## Thread funcons

`Unstable-Funcons-beta/Unstable-Funcons-Index.cbs`

- `Threads`
  - Not yet rigorously tested
  - Significant effort to develop
  - Funcons for thread sync specified but not yet tested
