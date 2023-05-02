.PHONY: build clean post

build:
	hugo --minify -s ./ -d ./dist/

clean:
	rm -rf ./dist/

post:
	@if [ -z "$(POST_NAME)" ] || [ -z "$(POST_TITLE)" ]; then \
		echo "Error: POST_NAME and POST_TITLE environment variables must be set."; \
		exit 1; \
	fi
	hugo new posts/$(POST_NAME).md
	echo "---\ntitle: \"$(POST_TITLE)\"\ndate: $$(date +%Y-%m-%dT%H:%M:%S%z)\ndraft: true\n---\n" > content/posts/$(POST_NAME).md"
