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
endef
export HELP

################
### Commands ###
################

all help:
	@echo "$$HELP"

test:
	tox
