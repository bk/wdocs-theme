---
title: Getting started
subtitle: Four simple steps to a working documentation site
tags:
  - overview
---

## Installation

- Install wmk as described in the [wmk documentation](https://wmk.baldr.net/installation/).

- Install the WDocs theme by cloning the repository to a location of your choice:
  `git clone https://github.com/bk/wdocs-theme wdocs-theme`

## Get your content ready

1. Create a project directory. Inside that, create a directory called `content` and begin to put some content inside it.

2. Create the directory `themes` inside your project directory. Move the `wmdocs-theme` directory there (or link to it, or clone it to there).

3. Create a configuration file, `wmk_config.yaml` inside your project directory and override the [configuration options](../usage/options/) that you need.

## Create your output

Now everything is in place. In your project directory, you can build the site with `wmk b .`.

After that you can view the content on a development server by running `wmk s .` and then open `http://localhost:7007/` in a web browser.  (If you are still adding and editing the content, you can reload the development server automatically when it changes, by running `wmk ws .` instead).

## Deploy your site

After this you can [deploy your site](../usage/deploy/) to the Internet.

It is sensible practice to keep your content in version control, e.g. [git](https://git-scm.com/). (In some cases this is a prerequisite for deploying your content.)
