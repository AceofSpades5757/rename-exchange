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

make run        - Run $(PROJECTNAME).
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

clean:
	find . -name '*.pyc'       -delete
	find . -name '__pycache__' -delete
