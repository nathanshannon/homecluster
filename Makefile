.POSIX:

default: dev bootstrap

all: default

.PHONY: bootstrap
bootstrap:
	make -C bootstrap

.PHONY: external
external:
	make -C external

.PHONY: tools
tools:
	make -C tools

.PHONY: docs
docs:
	make -C docs

dev:
	make -C dev
	make -C bootstrap

setup:
	### Install a bunch of stuff

