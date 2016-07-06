% Introduction Open Source
% Jan Boone 
% Dept. of Economics, Tilburg University


Introduction
================

motivation
----------

* Economics can be hard to use in practice
* you passed all your exams, understood the models, wrote a thesis
* and now what?

    * should you explain equations to colleagues?
    * or just chat a bit about intuition?
	* you have some data, but not the right instrumental variables ...

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

* [here](http://janboone.github.io/open_source_for_economists/installing.html)
  you find the software that you need to install
* this includes:

    * latex
    * pandoc
	* git
	* anaconda version of python and the notebook
	* an editor like emacs

Rules of the game
=======================

* to get a grade, you need to do 3 assignments
* the first two assignments are relatively straightforward and you do
  them on your own
* the third assignment involves programming in python
* this assignment is more involved and you can do this in a group


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

* everything you need to know is on [the website](http://janboone.github.io/open_source_for_economists/index.html)
* if you can follow what happens there, there is no need to come to
  the lectures
* *one exception*: next lecture where you can help others who did not
  manage to install all the relevant software
* my explanations --both on and off line-- are rather short:
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
