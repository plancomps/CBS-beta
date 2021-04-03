---
title: Sources
parent: Browsing
nav_order: 6
---

# Sources

The CBS source files are text files on GitHub.
They can be browsed online,
or downloaded from the [CBS-beta repository] for local browsing.

GitHub displays the text with line numbers (useful when reporting issues or suggesting improvements)
but no highlighting or hyperlinks.
  
Navigation to related source files requires familiarity with the folder hierarchy.

A CBS workbench, implemented in [Spoofax],
parses and checks the CBS source files.
It then generates Markdown and LaTeX files from them;
[kramdown] and pdflatex produce the [PDFs].
and the [plain] and [pretty] web pages.

Currently, the source files enclose all informal text in `/*...*/`.
They could easily be converted to pure Markdown files,
by removing the `/*` and `*/` and enclosing the formal CBS specifications in back-ticks.

[CBS-beta repository]: https://github.com/plancomps/CBS-beta
[kramdown]: https://kramdown.gettalong.org
[Spoofax]: https://www.metaborg.org
[PDFs]: PDF
[Plain]: Plain
[Pretty]: Pretty
