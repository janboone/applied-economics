% Introduction Open Source
% Jan Boone 
% Dept. of Economics, Tilburg University


Introduction
================

this lecture
------------

* in this lecture, we look at:

    * motivation to learn python
    * why not Office?
    * typing texts in markdown and latex
    * creating webpages on github
	* first assignment

motivation
----------

* in this course we teach you

    * to combine rigorous economics
    * and how to present it in an understandable way
	* while your results can be easily reproduced


* we do this by teaching you

    * a programming language: python
    * how to create notebooks where you can explain your code and
    * publish them on-line

examples
--------

* when you finish this course, you can

    * solve models in python
	* do simulations in python
	* publish results like [this](http://janboone.github.io/Deductible_Health_Insurance/)
	* examples from previous years
	* [first example](https://github.com/bartdegeus/assignment-3/blob/master/assignment-3.ipynb)
	* [second example](https://github.com/numeraire92/third-assignment/blob/master/Dahal_Nguyen_Huy_Obilor_-_Agent_based_modeling_approach_of_the_Greenwood-Jovanovic_model.ipynb)
	* [third example](https://joelleduff.github.io/Final/STindex.html)

    * make interactive graphs like the following


plotly example
--------------

<iframe src="https://plot.ly/~janboone/56.embed"
        height="600" width="100%"
        scrolling="no" seamless="seamless"
        frameBorder="0">
</iframe>


finishing the course
--------------------

* helps you to present economics in a way that is

    * understandable and
    * reproducible

* gives a good starting point to write your thesis


Office, Excel and Word!
=======================

eh, no
------

* you may think that Office is great for everything

    * it can do all that needs to be done
    * you have buttons all over the screen
	* it must be good because it is expensive!

* in fact, it is not so great

--------------

* let's start with Word:

    * it combines editing and word processing
    * unpleasant to type equations
    * focused on printing texts
    * you can add structure, but you are not forced to


------------

* Excel is great for programming?

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Relying on Excel for important calculations is like driving drunk: no matter how carefully you do it, a wreck is likely. <a href="https://twitter.com/hashtag/reproducibility?src=hash">#reproducibility</a></p>&mdash; Philip Stark (@philipbstark) <a href="https://twitter.com/philipbstark/status/498683914592862208">August 11, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


Excel
-----

    * indeed, simple things can be done in excel
    * e.g. keep track of your grades and calculate the average
    * but possibilities are limited: it is not a programming language
    * however, the main problem is reproducibility
    * if you've done a serious project in excel, look at it again in 3 months time...


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


What do you need?
=======================

Install software
----------------

* [here](https://janboone.github.io/applied-economics/installing.html)
  you find the software that you need to install
* this includes:

	* git
	* anaconda version of python and the notebook


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
* for this course learning git is optional

workflow
--------

* sign up at github (this you do once...)
* for a new repository, you do the following once:

    * create a repository on github
    * `git clone` the repository

* when working on this project, you either do the following:

    * `cd` into the directory
    * edit the files and create new ones
    * `git add .`
    * `git commit -m "First version of document"`
    * `git push origin master`

* or you use the web-interface of github


Assignment
==============


first assignment
----------------

* create a github account at [github](https://github.com/)
* sign in with your new account and create a repository `assignments` (note that when creating the repository, click on "Initialize this repository with a README")
* use this README file in the repository to present us with the links to your assignments; like [here](https://github.com/janboone/assignments)
* fill in the [google form](https://goo.gl/forms/Le6X2HGvPxGH5jV43)
* deadline for filling in the google form is: Wednesday September 20, 2017
* if you do not sign up in time, you cannot follow the python track of this course!

* for the first assignment, you follow either of two routes

    * the simple way
    * the experienced way


simple way
----------

* the reason why this is "simple", is because everything happens on-line
* in the web-browser, go to your repository `assignments`
* make sure that you are signed in (with your github account)
* click on the button `create new file`
* as the name of this new file, type `CV.md`
* Below `<> Edit new file` start typing markdown
* every now and again, you can click `Preview` to see what it looks like
* make sure to save your work regularly

    * by pressing the `Commit new file` button at the bottom
    * you can add a message explaining what you change in each "commit"

* as an example of such a CV --in progress-- see [this one](https://github.com/janboone/assignments/blob/master/CV.md)
* once you are finished, copy the web address of your CV into the README file, as I have done [here](https://github.com/janboone/assignments)

experienced way
---------------

* this is "experienced" because you will be working on your own computer to do this (not on-line)
* this means you have to clone your repository to your computer
* create/edit the file CV.md
* follow the `Command line` instructions above under "workflow"
* or [here](https://janboone.github.io/applied-economics/github.html#optional-more-sophisticated-use-of-github) for more elaborate instructions
* in the README file add a link to this markdown version of your CV (`CV.md`)


Rules of the game
=======================

* the point of the open source part of this course is that you teach yourself how to use open source

    * the [schedule](https://janboone.github.io/applied-economics/plan.html) suggests a way to learn to python using [datacamp](https://www.datacamp.com/courses/intro-to-python-for-data-science)
	* there are two datacamp assignment-deadlines where you need to finish in time
	* if you have already done this datacamp course, feel free to choose another one and inform us which one you choose
	* we will check whether you finish this new course in time
	* suggestions for other courses:
	    * [intermediate python](https://www.datacamp.com/courses/intermediate-python-for-data-science)
	    * [pandas foundation](https://www.datacamp.com/courses/pandas-foundations)

* to get a grade, you need to do 3 assignments

    * the first assignment is to create a web page with your CV and fill in the google form
    * second assignment: a case
    * third assignment: either the python assignment or the canon assignment


What is next?
-------------

* go to
  [this page](http://janboone.github.io/open_source_for_economists/installing.html)
  and install the relevant software
* if something goes wrong:

    * do not panic
    * google the error message that you get (you are unlikely to be
      the first)
	* follow the solution that is suggested
	* if that does not work, bring you laptop to the next lecture and
      we look at it together

------------

* everything you need to know is on [the website](https://janboone.github.io/applied-economics/index.html)
* use the links to tutorials that I provide or google yourself for
  tutorials on

    * markdown
    * latex
    * github
    * python

* the point of these lectures is that you teach yourself how to use
  open source software!




<!--

How to turn this markdown file into a presentation:

pandoc -s --mathjax --slide-level 2 --toc --toc-depth=1 -t revealjs markdown_github.md -V theme=solarized -o markdown_github.html

pandoc --slide-level 2 --toc --toc-depth=1 -t beamer markdown_github.md -V theme:Montpellier -o markdown_github.pdf




new slide:

------------


-->
