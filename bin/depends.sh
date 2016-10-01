#!/usr/bin/bash
# project_system (c) Ian Dennis Miller

source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv -a . -r requirements-dev.txt project_system
source ~/.virtualenvs/project_system/bin/activate
