+++
date = "2017-02-20T09:26:32-05:00"
title = "Up and running with Hugo"
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

A couple of things that slowed down my progress were:
* the repository that needed to be created was `<userName>.github.io`, not `github.io` in theOrillian user GitHub account.
* the `config.toml` needed to be altered, setting `baseurl = "http://theOrillian.github.io/"` ***Don't forget the final '/'***

I pinched and updated a deploy script from GitHub user @sgylon:

```shell
#!/bin/bash

echo -e "\033[0;32mDeploying website source to GitHub...\033[0m"

# Build the project.
rm -rf public/*
hugo

# Add changes to git.
git add -A

# Commit changes.
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
      then msg="$1"
fi
git commit -m "$msg"

# Push source repos.
git push origin master

# Push the build repos.
echo -e "\033[0;32mDeploying website to GitHub...\033[0m"

#cd public && git add --all && git commit -m "$msg" && git push origin master && cd ..
cd public
git add --all
git commit -m "$msg"
git push origin master
cd ..
```

Day 3 - Part #2: Set a custom domain for site
=====

For step-by-step instructions on setting up a custom domain for your site, while using Google domains, check out <a href="http://www.curtismlarson.com/blog/2015/04/12/github-pages-google-domains/" target="_blank">GitHub Pages using google domains</a>.

Your Goolge domain can be administrated from `domains.google.com`.

I wanted to delete the entire public folder before generating and committing the new website. But there were 2 files that I wanted to preserve CNAME and the README.md in the GitHub repository. These files needed to be copied to the Hugo static folder.

Day 3 - Part #3: Serve custom domain with https
=====
