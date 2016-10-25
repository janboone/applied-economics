Three advanced topics
=====================

.. _advanced:

In the lecture, we use `this notebook
<https://janboone.github.io/applied-economics/_downloads/Advanced_Topics.html>`_.
If you want, you can download `the notebook
<https://janboone.github.io/applied-economics/_downloads/Advanced_Topics.ipynb>`_.

With python there is a lot of stuff you can do. Feel free to roam the
web to find something that you need/like.

Below we give some more resources for making plots with `plotly. <https://plot.ly/>`_

Further, if you like the style of the course's website, you can have a look at creating websites with `sphinx. <http://sphinx-doc.org/>`_

The idea of the advanced topics is that you figure them out
yourself. We will give a short introduction and some resources that
you can consult. But feel free to google for more
information/tutorials.

In the third assignment you need to do some programming in a group. It is ok to
use the resources that we taught during the course. But you will really impress
us if you do something that goes beyond this. Either using one of the things
discussed here or something that you found yourself.

As new open source software is added continuously, it is important
that you are able to absorb these new things as they come along. That
is, do not stick to the things that we taught you more explicitly
during this course.


Plotly
------

In the introduction to python for economists, we explained how to make
figures with `matplotlib <http://matplotlib.org/>`_. These figures are
perfect for a paper in pdf that people print to read. But when you
communicate via notebooks and/or html or give a presentation, you can
include interactive graphs. Plotly is a great way to make interactive
graphs. You need to have a (free) subscription to use plotly.

There are a number of tutorials on the web. One that I liked can be
found `here <https://www.youtube.com/watch?v=9F_kkf7CDQs>`_

Use the :ref:`github <github>` skills you learned here to clone their github
`repository <https://github.com/plotly/pycon-2015>`_. This gives you
the notebooks they use in their presentation and lets you play around
with them.

Make sure you run this `notebook
<https://github.com/plotly/pycon-2015/blob/master/00_my_first_plot.ipynb>`_
on your computer. It makes sure that your credentials are stored on
the computer that you use to make the plots. You cannot access their
server from the notebooks on your computer without these
credentials. This only needs to be done once.



Sphinx
------

Combining sphinx with github is not entirely trivial. We gave a
reference before, see :ref:`sphinx with github <sphinx-github>`. Here I explain how I do
this myself.


* you need to install sphinx (as expected...); see :ref:`installing
  the stuff <install>`
* you need to have a source directory, which I denote by [source]
* the source directory contains the rst-files
* if you want to use github just for publishing your results, the
  source directory does not need to be on github. It can be a
  directory on your computer, say in Dropbox. Hence, in this case, we
  get something like [source] = ~/Dropbox/source or on Windows:
  [source] = C:\\Dropbox\\source.
* if you want to have the source files on github as well (e.g. because
  you collaborate on the source files with others), look at the structure of
  this website: it contains both the source (.rst) files and the published
  (.html) files. There are other ways to resolve this; look on
  the web if you want something more sophisticated.
* from now on, I assume that you have defined a [source] directory in
  either of the above ways.
* the other directory that we need is [publish]; this is a github
  repository
* create a github repository in the way we created :ref:`second repo <second-repo>`
  and follow all the steps described there, including --importantly
  now-- :command:`touch .nojekyll`
* the cloned version of this repository on your computer is denoted
  [publish].
* using the command prompt/terminal navigate to [source]
* in [source] use the sphinx command "sphinx-quickstart" and follow the
  steps `described here <http://sphinx-doc.org/tutorial.html>`_
* follow the defaults suggested by sphinx --including the file called
  "index.rst"-- except that you would like to use `mathjax
  <https://www.mathjax.org/>`_ to render your math
* if you type :command:`make html` at the command prompt, the sphinx
  defaults create a directory [source]/build/html where you can find
  your documents in html
* if you type :command:`sphinx-build -E [source] [publish]`	the html
  files are copied to your github directory
* go to the directory [publish] and push the changes onto github
