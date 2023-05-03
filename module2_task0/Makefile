.PHONY: build run stop clean help test

help:	## Display help for the commands usage
	@echo "help: Display this help message"
	@echo "build: Compile the source code of the application to a binary named awesome-api"
	@echo "run: Run the application in background and write logs into a file named awesome-api.log"
	@echo "stop: Stop the application"
	@echo "clean: Stop the application and delete the binary awesome-api and the log file awesome-api.log"
	@echo "test: Test the application by sending HTTP requests"

build:	## Compile the source code of the application to a binary named awesome-api
	go build -o awesome-api

run:	## Run the application in background by executing the binary and write logs
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command kill
	-kill "$(shell pgrep awesome-api)"

clean: stop	## Stop the application. Delete the binary and the log file
	rm -f ./awesome-api ./awesome-api.log

test:	## Test to ensure that it behave as expected when the application start.
	curl -i -X GET http://localhost:9999 || true
	curl -i -X GET http://localhost:9999/health || true
