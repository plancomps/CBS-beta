---
layout: default
title: Log
nav_exclude: true
---
# Log

## Bundle installation

```
CBS-beta: bundle update
Fetching https://github.com/pdmosses/just-the-docs.git
Fetching gem metadata from https://rubygems.org/..........
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies.....
Using rake 13.0.1
Using public_suffix 4.0.6
Using addressable 2.7.0
Using bundler 2.1.4
Using colorator 1.1.0
Using concurrent-ruby 1.1.7
Using eventmachine 1.2.7
Using http_parser.rb 0.6.0
Using em-websocket 0.5.2
Using ffi 1.13.1
Using forwardable-extended 2.6.0
Using i18n 1.8.5
Using sassc 2.4.0
Using jekyll-sass-converter 2.1.0
Using rb-fsevent 0.10.4
Using rb-inotify 0.10.1
Using listen 3.2.1
Using jekyll-watch 2.2.1
Using rexml 3.2.4
Using kramdown 2.3.0
Using kramdown-parser-gfm 1.1.0
Using liquid 4.0.3
Using mercenary 0.4.0
Using pathutil 0.16.2
Using rouge 3.24.0
Using safe_yaml 1.0.5
Using unicode-display_width 1.7.0
Using terminal-table 1.8.0
Using jekyll 4.1.1
Using jekyll-include-cache 0.2.1
Using rubyzip 2.3.0
Using jekyll-remote-theme 0.4.2
Using jekyll-seo-tag 2.7.1
Using just-the-docs 0.3.3 from https://github.com/pdmosses/just-the-docs.git (at rec-nav-2@e27e12e)
Bundle updated!
```

## Jekyll server

```
CBS-beta: bundle exec jekyll serve 2>&1 | sed '/^        \*\* ERROR: directory/,/^        MORE INFO/d;'
Configuration file: /Users/pdm/Projects/GitHub/CBS-beta/_config.yml
            Source: /Users/pdm/Projects/GitHub/CBS-beta
       Destination: /Users/pdm/Projects/GitHub/CBS-beta/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
      Remote Theme: Using theme pdmosses/just-the-docs
                    done in 44.245 seconds.
 Auto-regeneration: enabled for '/Users/pdm/Projects/GitHub/CBS-beta'
    Server address: http://127.0.0.1:4000/CBS-beta/
  Server running... press ctrl-c to stop.
```
