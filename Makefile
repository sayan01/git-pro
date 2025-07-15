.PHONY: build

all: build

build:
	bash build.sh
	rm -rf slides.{aux,nav,out,toc,log,bbl,blg,snm} 2>/dev/null || true