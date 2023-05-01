HUGO := hugo
POSTS_DIR := content/posts
OUTPUT_DIR := dist
THEME := ananke

.PHONY: build clean post

build:
	$(HUGO) --theme=$(THEME) --destination=$(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)

post:
	@if [ -z "$(POST_NAME)"] || [ -z "$(POST_TITLE)"]; then \
		echo "Usage: make post POST_NAME=<post-name> POST_TITLE=<post-title>"; \
		exit 1; \
	fi
	@$(HUGO) new $(POSTS_DIR)/$(POST_NAME).md
	echo "---\ntitle: \"$(POST_TITLE)\"\ndate: $$(date +%Y-%m-%dT%H:%M:%S%z)\ndraft: true\n---\n" > $(POSTS_DIR)/$(POST_NAME).md"
