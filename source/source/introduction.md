% Introduction Open Source
% Jan Boone 
% Dept. of Economics, Tilburg University


Introduction
================

motivation
----------

* in this course we teach you

    * to combine rigorous economics
    * and how to present it in an understandable way
	* while your results can be easily reproduced


* we do this by teaching you

    * a programming language: python
    * ways to create html files out of simpler files
	* how to publish them on line
	* and collaborate on line



examples
--------

* when you finish this course, you can

    * create an html presentation like this one

        * [source file](http://janboone.github.io/open_source_for_economists/_downloads/introduction.md)

    * solve models in python
	* do simulations in python
	* publish results like
    [this](http://janboone.github.io/Deductible_Health_Insurance/)
	* examples from last year:

        * [first example](https://github.com/bartdegeus/assignment-3/blob/master/assignment-3.ipynb)
        * [second example](https://github.com/numeraire92/third-assignment/blob/master/Dahal_Nguyen_Huy_Obilor_-_Agent_based_modeling_approach_of_the_Greenwood-Jovanovic_model.ipynb)

	* collaborate on line with github
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



What do you need?
=======================

Install software
----------------

* [here](https://janboone.github.io/applied-economics/installing.html)
  you find the software that you need to install
* this includes:

    * latex
    * pandoc
	* git
	* anaconda version of python and the notebook
	* an editor like emacs

Rules of the game
=======================

* the point of the open source part of this course is that you teach yourself how to use open source

    * we give you tips and guide the way (feel free to use a different approach)
    * the [schedule](https://janboone.github.io/applied-economics/plan.html) suggests a way to learn to python using [datacamp](https://www.datacamp.com/courses/intro-to-python-for-data-science)
	* but feel free to use another website or a book; see references [here](https://janboone.github.io/applied-economics/programming.html)

* to get a grade, you need to do 3 assignments

    * the first assignment is to create a web page with your CV


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
	* git
	* python

* the point of these lectures is that you teach yourself how to use
  open source software!

<!--

How to turn this markdown file into a presentation:

pandoc -s --mathjax --slide-level 2 --toc --toc-depth=1 -t revealjs introduction.md -V theme=solarized -o introduction.html

pandoc --slide-level 2 --toc --toc-depth=1 -t beamer introduction.md -V theme:Montpellier -o introduction.pdf




new slide:

------------


-->
