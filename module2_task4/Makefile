.PHONY: build post run stop clean help test lint unit-tests integration-tests check markdownlint markdown-link-check

help:	## Display help for the commands usage
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

build:	## Compile the source code of the application to a binary named awesome-api
	make check
	hugo
	go build

post:	## Create a new post using POST_NAME and POST_TITLE env variables
	@if [ -z "$(POST_NAME)" ] || [ -z "$(POST_TITLE)" ]; then \
		echo "Error: POST_NAME and POST_TITLE environment variables must be set."; \
		exit 1; \
	fi
	hugo new posts/$(POST_NAME).md
	echo "---\ntitle: \"$(POST_TITLE)\"\ndate: $$(date +%Y-%m-%dT%H:%M:%S%z)\ndraft: true\n---\n" > content/posts/$(POST_NAME).md

run:	## Run the application in background by executing the binary and write logs
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command kill
	kill $(shell pgrep awesome-api)

clean:	## Clean the generated files
	-make stop
	-rm -f ./awesome-api ./awesome-api.log coverage*

test:	## Test to ensure that it behave as expected when the application start.
	make unit-tests 
	make integration-tests

lint:	## Run the linter golangci-lint
	golangci-lint run

unit-tests:	## unit-tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests:	## integration tests
	go test -v -coverprofile=coverage-integrations.out

check:	## Check lint of the Markdown and analysis of the links
	markdownlint ./content/posts/*.md
	markdown-link-check ./content/posts/*.md

validate:	## validate
	-make build
	-git clone https://github.com/holbertonschool/W3C-Validator.git
	-./W3C-Validator/w3c_validator.py ./dist/index.html
	-rm -rf W3C-Validator
