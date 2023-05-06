.PHONY: build run stop clean help test lint

help:	## Display help for the commands usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:	## Compile the source code of the application to a binary named awesome-api
	make lint
	go get github.com/gorilla/mux
	go build -o awesome-api

run:	## Run the application in background by executing the binary and write logs
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command kill
	@if [ -n "$(shell pgrep awesome-api)" ]; then \
		kill $(shell pgrep awesome-api) && rm awesome-api.pid; \
	fi

clean:	## Stop the application. Delete the binary and the log file
	make stop
	rm -f ./awesome-api ./awesome-api.log

test:	## Test to ensure that it behave as expected when the application start.
	curl -i -X GET http://localhost:9999
	curl -i -X GET http://localhost:9999/health

lint:	## Run the linter golangci-lint
	golangci-lint run
