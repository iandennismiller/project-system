Configuration
=============

Sample Configuration
--------------------

::

    # project-system

    # command to open a project
    # or, use your own script to open a project:
    # PROJECT_OPEN_CMD=~/bin/project-open
    PROJECT_OPEN_CMD=project-open

    # location of work directory
    WORK_PATH=~/Work

    # command to enter a virtual environment.
    # it will be invoked with argument: WORK_CMD PROJECT_NAME
    WORK_CMD="workon"

    # command to open an editor focused on the current path
    EDIT_CMD="subl ."

    # python interpreters
    PYTHON_BIN=/usr/local/bin/python3
