---
layout: default
title: Downloads
nav_order: "9"
---

Downloads
=========

Clone or download a zip of the current [plancomps project site on Github].

Browsing CBS-beta offline
-------------------------

__Using [Jekyll]:__

1.  Run the following command in a terminal from the unzipped folder:

    ```
    bundle exec jekyll serve --port 4000 --host localhost
    ```
    (`4000` and `localhost` are the defaults, and need not be specified.)

2.  Open a web browser at `http://localhost:4000/`.

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

2.  Open a web browser at `http://localhost:8000/`.

Stop the local server with Control-C when no longer needed.


[plancomps project site on Github]: https://github.com/plancomps/plancomps.github.io

[`Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html`]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html

[`Funcons-beta/Funcons-Index/index.html`]: /CBS-beta/Funcons-beta/Funcons-Index/index.html

[Jekyll]: https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll

[Python3]: https://docs.python.org/3/library/http.server.html

[Python2]: https://docs.python.org/2/library/simplehttpserver.html#module-SimpleHTTPServer
