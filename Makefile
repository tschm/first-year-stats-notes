.DEFAULT_GOAL := help


.PHONY: help
help:  ## Display this help screen
	@echo -e "\033[1mAvailable commands:\033[0m"
	@grep -E '^[a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}' | sort


#.PHONY: compile
#compile: ## Compile both documents
#	@tectonic ridge_shapley.tex

.PHONY: clean
clean: ## clean the folder
	@git clean -X -f


.PHONY: install
install: ## install tectonic
	@curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net |sh
