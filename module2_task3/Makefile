.PHONY: build run stop clean help test lint

help:	## Display help for the commands usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build:	lint ## Compile the source code of the application to a binary named awesome-api
	go build

run:	## Run the application in background by executing the binary and write logs
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command kill
	kill $(shell pgrep awesome-api)

clean:	## Stop the application. Delete the binary and the log file
	make stop
	rm -f ./awesome-api ./awesome-api.log
	rm -f coverage-units.out
	rm -f coverage-integrations.out

test:	unit-tests integration-tests	## Test to ensure that it behave as expected when the application start.
	curl -i -X GET http://localhost:9999
	curl -i -X GET http://localhost:9999/health

lint:	## Run the linter golangci-lint
	golangci-lint run

unit-tests:	## unit-tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests:	## integration tests
	go test -v -coverprofile=coverage-integration.out -tags=integration
