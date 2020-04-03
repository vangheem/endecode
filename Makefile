#The shell we use
SHELL := /bin/bash


.PHONY: build
build: ## This help message
	yarn build --dest=docs
	## poor man's routing...
	mkdir -p docs/b64 docs/url docs/json docs/yaml docs/html
	cp docs/index.html docs/b64/index.html
	cp docs/index.html docs/url/index.html
	cp docs/index.html docs/json/index.html
	cp docs/index.html docs/yaml/index.html
	cp docs/index.html docs/html/index.html
	echo "endecode.org" > docs/CNAME
	git add docs/*