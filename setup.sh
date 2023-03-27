#!/bin/bash

VENV_PATH=.venv

# set up virtual environment
python3 -m venv $VENV_PATH
$VENV_PATH/bin/pip install -q -U pip setuptools
$VENV_PATH/bin/pip install -q -U poetry

$VENV_PATH/bin/poetry completions bash >> ~/.bash_completion

# install dependencies
$VENV_PATH/bin/poetry install

# enable pre-commit checks
$VENV_PATH/bin/pre-commit install
