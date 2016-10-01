#!/usr/bin/bash
# project_system (c) Ian Dennis Miller

# for Ruby
source /usr/local/rvm/scripts/rvm
bundle install --path vendor/bundle

# for Python
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv -a . -r requirements.txt project_system
source ~/.virtualenvs/project_system/bin/activate
