Usage
=====

::

    project-new my-project
    project-workon my-project

Commands
--------

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
