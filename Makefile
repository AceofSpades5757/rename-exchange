#############
### Setup ###
#############

# Paths
SRCPATH := $(CURDIR)
PROJECTNAME := $(shell basename "$(CURDIR)")

# Variables
PYTHON = python3

# Settings
.DEFAULT_GOAL = help

# Global Variables
env: venv/bin/activate

###################
### Definitions ###
###################

define HELP
Manage $(PROJECTNAME). Usage:

make build      - Build distributions.
make test       - Test using tox.
make clean      - Clean temporary files and caches.
endef
export HELP

################
### Commands ###
################

all help:
	@echo "$$HELP"

test:
	tox

build:
	./make-manylinux-wheel.sh

clean:
	find . -name '*.pyc'       -delete
	find . -name '__pycache__' -delete
	rm dist/*
