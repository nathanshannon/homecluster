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

devinit:
	minikube start --memory 8192 --cpus 4
	make -C bootstrap
