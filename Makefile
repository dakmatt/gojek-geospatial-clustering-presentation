.PHONY: install_conda create_env activate_env env remove_env
#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = gojek-geospatial-clustering-presentation
PROJECT_DIR = $(shell pwd)
PYTHON_INTERPRETER = PYTHONPATH=$(PROJECT_DIR)/vendor ~/.pyenv/shims/python

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Install conda
install_conda:
	pyenv install miniconda3-latest && pyenv local miniconda3-latest

## Set up conda environment on Linux with GPU
create_env:
	conda env create --name $(PROJECT_NAME) --file environment.yaml

## Activate conda environment
activate_env:
	pyenv local miniconda3-latest/envs/$(PROJECT_NAME)

## Set up and activate environment
env: install_conda create_env activate_env

## remove conda environment
remove_env:
	pyenv local miniconda3-latest && rm -rf ~/.pyenv/versions/miniconda3-latest/envs/$(PROJECT_NAME)

## Delete all compiled Python files
clean:
	find . -name "*.pyc" -exec rm {} \;

## Lint using flake8
lint:
	flake8 --exclude=lib/,bin/,docs/conf.py .

## Run doc tests and unit tests
test:
	nosetests --with-doctest

present:
	jupyter nbconvert notebooks/main.ipynb  --to slides --post serve

