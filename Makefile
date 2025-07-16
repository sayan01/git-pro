.PHONY: build

all: build

build:
	bash build.sh

cheats:
	bash build.sh cheats

watch:
	find . -type f -name '*.tex' | entr make build