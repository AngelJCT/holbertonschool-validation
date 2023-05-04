.PHONY: build run stop clean help test lint

help:	## Display help for the commands usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:	lint ## Compile the source code of the application to a binary named awesome-api
	go build

run:	## Run the application in background by executing the binary and write logs
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command kill
	kill $(shell pgrep awesome-api)

clean:	## Stop the application. Delete the binary and the log file
	make stop
	rm -f ./awesome-api ./awesome-api.log

test:	## Test to ensure that it behave as expected when the application start.
	curl -i -X GET http://localhost:9999
	curl -i -X GET http://localhost:9999/health

lint:	## Run the linter golangci-lint
	golangci-lint run

unit-tests:	## unit-tests
	go test -v -short -coverprofile=coverage-units.out
	go tool cover -html=coverage.out -o coverage.html