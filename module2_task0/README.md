# Awesome API

This is a simple HTTP web server written in Golang. It listens for incoming HTTP requests on localhost:9999.

## Prerequisites

Before you can build, run, and test this project, you'll need to have the following software and tools installed on your system:

1. **Go**: You'll need to have [Go](https://golang.org/dl/) installed to compile the project. This project has been tested with Go 1.16 or later. Please follow the [official installation instructions](https://golang.org/doc/install) for your platform.

2. **Make**: This project uses a Makefile to automate the build, run, and test process. You'll need to have [GNU Make](https://www.gnu.org/software/make/) installed on your system. Most Unix-based systems (Linux and macOS) come with Make preinstalled. For Windows users, you can follow this [guide](http://gnuwin32.sourceforge.net/packages/make.htm) to install Make.

3. **Curl**: The test command uses [curl](https://curl.se/) to send HTTP requests to the server. You'll need to have curl installed to run the tests. Many Linux distributions and macOS come with curl preinstalled. For Windows users, you can follow this [guide](https://curl.se/windows/) to install curl.

## Requirements

- Golang
- make

## Usage

1. Build the application: `make build`
2. Run the application: `make run`
3. Test the application: `make test`
4. Stop the application: `make stop`
5. Clean up: `make clean`
6. Display help: `make help`

For more information about the available make targets, run `make help`.
