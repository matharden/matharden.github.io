---
layout: post
title: Custom searches for Alfred app
date: 2015-03-01 23:08:00
category: tools
---

I'm a big fan of the [Alfred app](http://www.alfredapp.com/) for OSX. I've made a couple of custom searches recently that I find really useful.

## Lucky downloads

When you need to download something which you're familiar, and so just need a get command. This allows you to type the name of the thing, adds "download" to the search and fires a Google "I'm feeling lucky search" to [hopefully] take you straigh to the download you need.

Example:

> get spotify

[Add Lucky downloads to Alfred](alfred://customsearch/Lucky%20download%20for%20query/d/ascii/plus/http://www.google.co.uk/search?q=download+{query}&btnI)

## Lucky Mozilla Developer Network reference

When I want to quickly lookup some CSS/HTML/JavaScript docs, [MDN](https://developer.mozilla.org/) is always a riliable reference. This again uses Google's "I'm feeling lucky" search, but the search query is limited to MDN (so you won't end up on W3Schools).

Example:

> mdn css filter

[Add Lucky Mozilla Developer Network reference to Alfred](alfred://customsearch/Lucky%20reference%20lookup%20on%20MDN/mdn/utf8/noplus/http://www.google.co.uk/search?q=site:developer.mozilla.org+{query}&btnI)
