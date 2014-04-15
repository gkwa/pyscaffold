#!/bin/bash                                                                                                                                           
set -e

# Install additional requirements
pip install pytest sphinx

# Setup a test project and run some common tasks
PROJECT="my_project"
putup $PROJECT
cd $PROJECT
python setup.py test
python setup.py docs
python setup.py version
python setup.py sdist
python setup.py bdist
