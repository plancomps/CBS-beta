Demonstration of incremental language specification
===================================================

Initial language
----------------
* Comment-out syntax, disambiguation, values, and rules:
  - References and imperatives [§4], [§A.4]
  - Multithreading [§5], [§A.5]
  - the use of `initialise-storing` and `multithread` [§6]
  - the use of `variables`, `null-type`, `thread-ids` in [`ld-values`]
* Eclipse: `LD-cbs`: Clean project
* Spoofax: `LD-Start.cbs`: Generate language editor
* Eclipse: `LD-Editor`: Refresh, clean project, build
* Spoofax: Generate funcons for LD test programs:
  - `LD-Tests/2-Lambda/church.ld`
  - `LD-Tests/3-Arithmetic/if.ld`
* Terminal: Generate interpreter `runfct-LD`
  - `cd LD-Interpreter; cabal v1-clean; make gen-hss; make cabal`
* Spoofax: Run funcons of test programs
  - `runfct-LD --config LD-1.config LD-Tests/2-Lambda/church.fct`
  - `runfct-LD --config LD-1.config LD-Tests/3-Arithmetic/if.fct`

Imperative language
-------------------
* Comment-in syntax, disambiguation, values, and rules:
  - References and imperatives [§4], [§A.4]
  - the use of `initialise-storing` [§6]
  - the use of `variables`, `null-type` in [`ld-values`]
* Eclipse: `LD-cbs`: Clean project
* Spoofax: `LD-Start.cbs`: Generate language editor
* Eclipse: `LD-Editor`: Refresh, clean project, build
* Spoofax: Generate funcons for LD test programs:
  - `LD-Tests/4-Imperative/sum.ld`
* Terminal: Update interpreter runfct-LD
  - `cd LD-Interpreter; cabal v1-clean; make gen-hss; make cabal`
* Spoofax: Run funcons of test programs
  - `runfct-LD --config LD-2.config LD-Tests/4-Imperative/sum.fct`

Multithreading language
-----------------------
* Comment-in syntax, disambiguation, values, and rules:
  - Multithreading [§5], [§A.5]
  - the use of `multithread` [§6]
  - the use of `thread-ids` in [`ld-values`]
* Eclipse: `LD-cbs`: Clean project
* Spoofax: `LD-Start.cbs`: Generate language editor
* Eclipse: `LD-Editor`: Refresh, clean project, build
* Spoofax: Generate funcons for LD test programs:
  - `LD-Tests/5-Threads/spawn-sync.ld`
* Terminal: Update interpreter runfct-LD
  - `cd LD-Interpreter; cabal v1-clean; make gen-hss; make cabal`
* Spoofax: Run funcons of test programs
  - `runfct-LD --config LD-3.config LD-Tests/5-Threads/spawn-sync.fct`

[§4]:           LD-cbs/LD/LD-Start/#4-references-and-imperatives
[§A.4]:         LD-cbs/LD/LD-Disambiguation/#a4-references-and-imperatives
[§5]:           LD-cbs/LD/LD-Start/#5-multithreading
[§A.5]:         LD-cbs/LD/LD-Disambiguation/#a5-multithreading
[§6]:           LD-cbs/LD/LD-Start/#6-programs
[`ld-values`]:  LD-cbs/LD/LD-Start/#Name_ld-values
