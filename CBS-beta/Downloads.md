---
layout: default
title: Downloads
nav_order: 7
---

Downloads
=========
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

Clone or download a zip of the current [plancomps project site on Github].

Browsing specification pages offline
------------------------------------

1.  The start web page for a language `L` is:

    ```
    Languages-beta/L/L-cbs/L/L-Start/index.html
    ```
    For example:

    [`Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html`].

2.  The start web page for Funcons-beta is:

    [`Funcons-beta/Funcons-Index/index.html`].

The links to non-CBS pages in the menu, headers, and footers do not work when
browsing the cloned/downloaded files locally. However, the corresponding
MarkDown files can be browsed with a text editor or a Markdown previewer.

Browsing the complete CBS-beta site offline
-------------------------------------------

__Using [Jekyll]:__

1.  Run the following command in a terminal from the unzipped folder:

    ```
    bundle exec jekyll serve --port 4000 --host localhost
    ```
    `4000` and `localhost` are the defaults when not specified.

2.  Open a web browser at `http://localhost:4000/CBS-beta/`.

Stop the local server with Control-C when no longer needed.

__Using Python:__

1.  Run one of the following commands in a terminal from the `_site` sub-folder.

    For [Python2]:
    ```
    python2 -m SimpleHTTPServer 8000
    ```
    For [Python3]:
    ```
    python3 -m http.server 8000 --bind localhost
    ```
    `8000` and `localhost` are the defaults when not specified.
    (If neither `python2` nor `python3` is available, try `python`.)

2.  Open a web browser at `http://localhost:8000/CBS-beta/`.

Stop the local server with Control-C when no longer needed.


[plancomps project site on Github]: https://github.com/plancomps/plancomps.github.io

[`Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html`]: Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html

[`Funcons-beta/Funcons-index/index.html`]: Funcons-beta/Funcons-index/index.html

[Jekyll]: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/

[Python3]: https://docs.python.org/3/library/http.server.html

[Python2]: https://docs.python.org/2/library/simplehttpserver.html#module-SimpleHTTPServer
