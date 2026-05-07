DOXYGEN     ?= doxygen
BUILD_DIR   ?= build
HTML_DIR    := $(BUILD_DIR)/html
SITE_DIR    ?=
SITE_SUBDIR ?= plugins
SITE_BRANCH ?= master
SOURCE_REV := $(shell git rev-parse --short HEAD 2>/dev/null || echo unknown)

.PHONY: html clean deploy

html: $(HTML_DIR)/index.html

$(HTML_DIR)/index.html: README.md docs/Doxyfile docs/header.html docs/plugins.css
	$(DOXYGEN) docs/Doxyfile

clean:
	rm -rf $(BUILD_DIR)

deploy: html
	@test -n "$(SITE_DIR)" || { echo "SITE_DIR is required"; exit 1; }
	rm -rf "$(SITE_DIR)/$(SITE_SUBDIR)"
	mkdir -p "$(SITE_DIR)/$(SITE_SUBDIR)"
	cp -a "$(HTML_DIR)/." "$(SITE_DIR)/$(SITE_SUBDIR)/"
	touch "$(SITE_DIR)/.nojekyll"
	cd "$(SITE_DIR)" && \
		git add .nojekyll "$(SITE_SUBDIR)" && \
		if git diff --cached --quiet -- .nojekyll "$(SITE_SUBDIR)"; then \
			echo "No site changes to deploy."; \
		else \
			git config user.name "github-actions[bot]" && \
			git config user.email "41898282+github-actions[bot]@users.noreply.github.com" && \
			git commit -m "Deploy plugin docs for $(SOURCE_REV)" && \
			git push origin "$(SITE_BRANCH)"; \
		fi
