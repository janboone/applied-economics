% Introduction Open Source
% Jan Boone 
% Dept. of Economics, Tilburg University


Introduction
================

this lecture
------------

* in this lecture, we look at:

    * why not Word?
    * typing texts in markdown and latex
    * pandoc
    * creating webpages on github
	* first assignment

Office and Word!
======================

eh, no
------

* you may think that Word is great for everything

    * it can do all that needs to be done
    * you have buttons all over the screen
	* it must be good because it is expensive!

* in fact, it is not so great:

    * it combines editing and word processing
    * unpleasant to type equations
    * focused on printing texts
    * you can add structure, but you are not forced to


Open source word processing
====================================

markdown
--------

* markdown allows you to create structure in a simple way
* examples are:

```

    this is a heading
    =================

    subheading
    ----------

    * first bullet
    * second bullet

    [link text](actual link, e.g. http://www.etc)

    ![Alt text for image](/path/to/img.jpg "Optional title")

```

* look on the web for other syntax like footnotes etc.
* equations you can type in latex

latex
-----

* latex is great word processing software
* you should consider writing your thesis in latex
* but for now, we focus on writing math in latex
* you can guess what the following will do:

```
$x^2$, $\beta$, $\sqrt{9}$, $\frac{1}{2}$, $\bar x$

\begin{equation}

a^2 + b^2 = c^2

\end{equation}

```

* if you need something, just google; e.g. "google latex phi" or
  "google latex empty set" etc.

pandoc
------

* with pandoc you can convert markdown files into many other file
  formats
* for this course, you will convert markdown into html or pdf
* [pandoc website](http://pandoc.org/demos.html) contains examples of
  how to convert from one file format into another
* these commands can be quite elaborate
* the command to turn the markdown version of this presentation into
  an html file is given by


```
pandoc -s --mathjax --slide-level 2 --toc --toc-depth=1 -t revealjs markdown_github.md -V theme=solarized -o markdown_github.html

```

Working in the cloud
===========================


github
------

* github allows you to

    * publish web pages (gh-pages)
    * work "in the cloud" with version control
	* collaborate in the cloud
	* have different versions ("branches") of the same project

* version control takes a bit of time to learn
* but once you get it, the benefits are huge!

workflow
--------

* sign up at github (this you do once...)
* for a new repository, you do the following once:

    * create a repository on github
    * use the command line and (create `mkdir` and) go to
      directory of this project
    * `git clone` the repository

* when working on this project, you do the following:

    * `cd` into the directory
    * edit the files and create new ones
    * `git add .`
    * `git commit -m "First version of document"`
    * `git push origin master`
    
branching
---------

* with branching you can make different versions of your project
* the "default branch" is called "master"
* `git branch new_branch`
* `git checkout new_branch`
* `git commit -a -m "New introduction"`
* `git push origin new_branch`
* `git checkout master`
* `git merge new_branch`


Assignment
==============


first assignment
----------------

* for the assignment:

    * use the "buttondown files" 
    * turn the markdown file into your CV.md
	* use pandoc to convert CV.md into an html file using the stylesheet
	* publish both the markdown and the html file on github
	* fill in [google form](https://docs.google.com/forms/d/1IC9diFNYeZsxasunfwBe4kkOisGhDOOXOFhkGXMM9cA/viewform?embedded=true)



<!--

How to turn this markdown file into a presentation:

pandoc -s --mathjax --slide-level 2 --toc --toc-depth=1 -t revealjs markdown_github.md -V theme=solarized -o markdown_github.html

pandoc --slide-level 2 --toc --toc-depth=1 -t beamer markdown_github.md -V theme:Montpellier -o markdown_github.pdf




new slide:

------------


-->
