.PHONY: all pdf html epub clean clean-all

REVIEW_CONFIG_FILE ?= config.yml

all: pdf

pdf:
	./build-in-docker.sh pdf

html:
	./build-in-docker.sh html

epub:
	./build-in-docker.sh epub

clean:
	rm -rf articles/CubeSatStructure-*/
	rm -f articles/*.pdf articles/*.epub articles/*.html articles/*.xml articles/*.txt
	rm -rf articles/webroot

clean-all: clean
	rm -rf node_modules
