+++
date = "2017-02-20T09:26:32-05:00"
title = "Adventures with Hugo"
tags = ["Hugo", "Website"]
categories = ["theOrillian"]
draft = false

+++

Like all new technologies, this will be a learn as you go process. This post describes the process of creating and developing <a href="https://orillian.com" target="_blank">theOrillian</a> website. As new features are implemented, the post will be updated...

<!--more-->

Day 1 - Stand up the development environment
=====

Use the <a href="https://gohugo.io/overview/quickstart/" target="_blank">Hugo Quickstart Guide</a> to get rolling.

Use GitHub's <a href="https://guides.github.com/features/mastering-markdown" target="_blank">Mastering Markdown</a> to get started with adding some format to your blog post.

Markdown does not support opening links to a new browser tab. To have links open in new tabs, you need to write the HTML yourself - `<a href="https://orillian.com" target="_blank">theOrillian</a>`

This site uses [Hyde-Y](https://github.com/enten/hyde-y). If you plan on using this theme, you need to edit the **config.toml**, **data/Menu.toml** & **data/FootMenu.toml** as shown in the theme configuration instructions.

[Blog summaries](https://gohugo.io/content/summaries/) can be controlled by using `<!--more-->`.

Start to finish, the initial developer version stand-up of this site using Hugo took about 2 hours. No knowledge of Go or Javascript or CSS was required.

Day 2 - Publish the website
=====

Today I messed up. Seasoned IT pro and I still mess up sometimes. I was worrying about taxonomies and creating a "blog series" instead of just accomplishing my goal - publish theOrillian!

Day 3 - Part #1: Publish the website
=====

Way easier than I thought. Follow the step-by-step instructions on <a href="http://whipperstacker.com/2015/11/27/deploying-a-stand-alone-hugo-site-to-github-pages-mapped-to-a-custom-domain/" target="_blank">Deploying a Stand-Alone Hugo Site to GitHub Pages Mapped to a Custom Domain</a>.

GitHub pages does not support https. To get the website behind https, you can set up a free CloudFlare, pointing to your custom domain
