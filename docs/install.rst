Installation
============

How to Install
--------------

Use `Python pip <https://pypi.org/project/pip/>`_ to install **project-system**.

::

    pip install project-system

To install for all users of the system, use sudo:

::

    sudo pip install project-system

Requirements
------------

**project-system** requires other software in order to function.

virtualenvwrapper
^^^^^^^^^^^^^^^^^

`virtualenvwrapper <https://pypi.org/project/virtualenvwrapper/>`_ is used to manage Python virtual environments.

::

    pip install virtualenvwrapper

Optional Support
----------------

**project-system** benefits from the support of several optional packages.

Tmux
^^^^

To get the most from project-system, use `tmux <https://github.com/tmux/tmux/wiki>`_.

To install ``tmux`` on Debian-like systems:

::

    apt install tmux

Tab Completion
^^^^^^^^^^^^^^

The ``project-workon`` script can auto-complete the names of projects.
Shell support for either ``bash`` or ``zsh`` must be installed for tab completion to work correctly.

To install completion scripts:

::

    mkdir ~/.completion.d
    project-completion-init

Now the ``project-workon`` script supports auto-completion of projects by name.

Ensure ~/.bashrc contains the following:

::

    for bcfile in ${COMPLETION_PATH}/* ; do
        [ -f "\$bcfile" ] && . \$bcfile
    done

Diamond-Patterns
^^^^^^^^^^^^^^^^

**project-system** is designed to work with `Diamond-Patterns <http://diamond-patterns.rtfd.io>`_, which is installed with ``pip``:

::

    pip install diamond-patterns

The natural way to start a new project is:

::

    project-new my-new-article
    diamond pattern article

Here, ``article`` can be replaced with any of the available patterns.  Read the `Diamond-Patterns <http://diamond-patterns.rtfd.io>`_ documentation to learn more.
