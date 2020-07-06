#The shell we use
SHELL := /bin/bash


.PHONY: build
build: ## This help message
	yarn build --dest=docs
	## poor man's routing...
	mkdir -p docs/b64 docs/url docs/json docs/yaml docs/html docs/jwt docs/timestamp
	cp docs/index.html docs/b64/index.html
	cp docs/index.html docs/url/index.html
	cp docs/index.html docs/json/index.html
	cp docs/index.html docs/yaml/index.html
	cp docs/index.html docs/html/index.html
	cp docs/index.html docs/jwt/index.html
	cp docs/index.html docs/timestamp/index.html
	echo "endecode.org" > docs/CNAME
	git add docs/*