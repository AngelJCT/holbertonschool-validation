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
	$(HUGO) new $(POSTS_DIR)/$(POST_NAME).md
