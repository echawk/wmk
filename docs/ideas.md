# layout ideas for personal website

I *don't* want to have to write any html - preferably some markup format
- likely markdown, as I'm not particularly fond of Org Mode.

I'd also like my site to be easily deployable. IE - no reliance on gigantic
static site generators.
- in an ideal world, it'd simply be a shell script that runs and generates everything

It should be some type of pipeline that includes formatting, spellchecking etc.

Required tools:

* lowdown (generates html from markdown)
* aspell (spellchecks)

I'd also like to rss syndication for my site

I'd also like to have a webring & a cool logo
- gotta make sure to have those 90's era gifs!

Also - I want to do the absolute *least* amount of work maintaining the site.
Anything that isn't trivial to automate is out of the question.


For blog posts, I'd like to be able to simply add an md file to the `blogs/`
subdirectory containing my blog and then running `make` or whatever and it
autogenerates a new rss feed entry and html file.

I'd also like to keep this data actually separate from the github website
repo stuff, since it'd be nice to 'deploy' to that repo.

Pages that I'd like to have:
* Home
* About
* Projects
* Blog
* Resume? - need to find an easy way to integrate this otherwise **no**

## Repo structure


This file:

```
index.md
```

Would generate the following files:

```
index.html
index.rss
```

### 'Config' files

* style.css


