.POSIX:

default: bootstrap

all: default

.PHONY: bootstrap
bootstrap:
	make -C bootstrap

devinit:
	minikube start --memory 8192 --cpus 4
	make -C bootstrap
