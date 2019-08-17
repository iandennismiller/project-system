Usage
=====

::

    project-new my-project
    project-workon my-project

Commands
--------

**Project-System** manages projects in terms of a folder, git repo, and python virtual environment.
The general pattern is to make a new project and then ``workon`` it:

::

    project-new some-project-name
    project-workon some-project-name

All of the commands are listed here.

project-workon
^^^^^^^^^^^^^^

Begin working on a project.
Enter the virtual environment and invoke ``project-open``.

project-list
^^^^^^^^^^^^

List all projects.

project-new
^^^^^^^^^^^

Create a new project.
This creates a new folder in the Work directory.
It also creates a python virtual environment with the same name.

project-open
^^^^^^^^^^^^

This script controls what happens when a project is opened.
By default, it opens several ``tmux`` panels and a text editor.

project-conf-init
^^^^^^^^^^^^^^^^^

Create a basic configuration file called ``~/.project-system.conf``.
Overwrites any file that is already present.

project-git-init
^^^^^^^^^^^^^^^^

Sets up a folder as a git repository.
This is usually not called directly.
