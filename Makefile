#! /usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
DOCKER_REPOSITORY_NAME=k6docker_k6
EXEC_FILES=\
	bin/k6

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	docker-compose build
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin

uninstall:
	docker inspect --type=image $(DOCKER_REPOSITORY_NAME) &> /dev/null && docker rmi $(DOCKER_REPOSITORY_NAME) || true
	test -d $(prefix)/bin && \
	(cd $(prefix) && rm -f $(EXEC_FILES))
