---
title: FunCons Dojo Agenda
nav_exclude: true
search_exclude: true
---

FunCons Dojo Agenda
===================

[Abstract](FunCons.md)

## Introduction

* FunCons: fundamental programming constructs
* CBS: component-based semantics
* Tool support
* Web pages
* Dojo: compiling the SL language to funcons


## Hand-out

* [USB memory sticks]
  (pass them around, then return to PDM)
	- copy `Funcons.zip` from memory stick to disk
	- unzip `Funcons.zip` to create the `Funcons` folder

* work in pairs ?


## Using the Spoofax-Funcons IDE

_N.B. Not yet fully developed, nor efficient enough for general use..._

### Open the Eclipse application `Funcons/Spoofax-Funcons`

* Workspace: `Funcons/Workspace`

* Resource perspective - Project Explorer shows:
	```
	CBSEditor (?)

	Funcons_beta_DynSem.interpreter

	SL-cbs
		Funcons-beta
		SL
			SL-1-Lexemes
				SL-1-Lexemes.cbs
				index.html
			...
				tests
				...
			SL-Start
				SL-Start.cbs
				index.html

	SLEditor
	```

----

### Using the CBS editor

#### Build `CBSEditor`

This can take a few minutes... (plugin not yet available)

#### Clean project `SL-cbs`

This can take a few minutes...

* The flagged 'errors' indicate missing specifications

#### Open `SL-Start/SL-Start.cbs`

To avoid premature analysis: `Spoofax (meta): Delay editor analysis by 5s`

* _Implicit imports_
	- all files in __`Funcons-beta`__
	- all files with the same __`Language "..."`__ heading

* _References to names are hyperlinks_
	- `Cmd`- or `Ctrl`-hovering activates the links

* __`Spoofax: Generate`__ menu:
	- Language editor
	- Funcon reuse index
	- Web pages

#### `Spoofax: Generate: Language editor`

* Select the editor pane `SL-Start.cbs`

Any missing or outdated SLEditor files are regenerated.

#### Open `SL-Start/index.html`

* Open with a web browser (Eclipse or external)

* References to section numbers __`#N`__ are hyperlinks
	- `Cmd` or `Ctrl` hovering enables following

* `Menu` dropdown has hyperlinks:

	- `SL-Start` (language root file)
	- `SL-Funcons-Index` (reused funcons)
	- `Funcons-beta` (index of all current funcons)
	- `Languages-beta` (lists some available languages)
	- `About CBS`

* Buttons to force expansion (&#9660;) and collapse (&#9658;):
	- rules `Rule...`
	- comments `/*...*/`
	- sections `#N ...`

----

### Using the generated SL editor

#### Clean project `SLEditor`

Any flagged errors need to corrected before proceeding.

#### Build `CBSEditor`

This can take a few minutes... (plugin not yet available)

#### Open `SL-2-Expressions/tests/HelloWorld.sl`

Any syntax errors are flagged.

#### `Spoofax: Generation: Generate funcons`

The generated funcon term appears in `HelloWorld.fct`

----

### Using DynSem to interpret a funcon term

#### Open `SL-2-Expressions/tests/HelloWorld.fct`

#### `Run: Run configurations...`

* Select __`Java Application: Funcons_beta`__.

* Press the __`Run`__ button.

The result should appear in the Console, and correspond to
`SL-2-Expressions/tests/HelloWorld.output`
(apart from a `NullV()` at the end).

For subsequent interpretation of funcon terms, just click the
green `Run` button in the bar of icons.



[USB memory sticks]: USB.md
