.PHONY: build run stop clean help test lint unit-tests integration-tests check markdown-lint markdown-link-check

help:	## Display help for the commands usage
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

build:	lint ## Compile the source code of the application to a binary named awesome-api
	go build

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
	markdown-lint
	markdown-link-check

markdown-lint:	## markdown-lint
	markdownlint-cli content

markdown-link-check:	## markdown-link-check
	markdown-link-check -p -v content

validate:	## validate
	@echo "./dist/index.html" | xargs -I % sh -c 'curl -s -H "Content-Type: text/html" -d @% -X POST https://validator.holberton.network/html-checker || echo "SUCCESS"'