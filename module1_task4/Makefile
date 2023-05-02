.PHONY: build clean post help

build:	## Build the Hugo site
	hugo

clean:	## Clean the 'dist' directory
	rm -rf dist/

post:	## Create a new post using POST_NAME and POST_TITLE env variables
	@if [ -z "$(POST_NAME)" ] || [ -z "$(POST_TITLE)" ]; then \
		echo "Error: POST_NAME and POST_TITLE environment variables must be set."; \
		exit 1; \
	fi
	hugo new posts/$(POST_NAME).md
	echo "---\ntitle: \"$(POST_TITLE)\"\ndate: $$(date +%Y-%m-%dT%H:%M:%S%z)\ndraft: true\n---\n" > content/posts/$(POST_NAME).md

help:	## Display help information about Makefile targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
