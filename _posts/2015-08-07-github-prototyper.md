---
layout: post
title: GitHub Prototyper
date: 2015-08-19 23:26:00
category: micro-project
---

Whilst working on 'Sending Money to Prisoners' for the Ministry of Justice we needed to test whether our new payment instructions make sense to citizens.

Previously we made a mock-up of the [GOV.UK mainstream guidance page](http://ministryofjustice.github.io/github-prototyper/staying-in-touch-with-someone-in-prison/) and redirected users in a testing scenario to this page.

Based on findings during usability testing, we would iterate this mock-up between sessions. These changes can rapidly improve our service.

There are many ways to serve prototypes. I regularly use [GitHub Pages](https://help.github.com/articles/what-are-github-pages/) as it's free and public as soon as I push to the repo. All I need to do is make sure the default branch is called `gh-pages`.

GitHub has another really useful feature; the ability to edit HTML as Markdown through their website interface. Markdown is very useful for editing content of webpages without writing any code.

I thought this could be a much slicker process if all our prototypes. By combining the Web based editor of GitHub and Markdown with the hassle free hosting on GitHub Pages, we effectively create a content management system.

Of course there's a good chance many have done this before. I searched around for other potential solutions. The Government Digital Services of course have already done something very similar called '[Prototyping](https://github.com/matharden/prototyping)' which *almost* does exatly what I wanted but without harnessing the power of GitHub Pages. This leaves the hosting efforts to a techy who has to deploy it somewhere else.

I created [GitHub Prototyper](https://github.com/ministryofjustice/github-prototyper) with a README directed at non tech people. All you need is a GitHub account.

## Jekyll Front Matter

GitHub Pages renders Markdown via [Jekyll](http://jekyllrb.com/). Jekyll uses something called 'front matter'. With this you can set some options for your page. At the very least you must select a 'layout'.

Other layout templates can easily be added by saving an HTML file in the `_layouts` directory and adding some [Liquid tags](http://jekyllrb.com/docs/templates/).
