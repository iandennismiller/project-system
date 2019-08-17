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

**project-system** requires some other software in order to function.

virtualenvwrapper
^^^^^^^^^^^^^^^^^

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
