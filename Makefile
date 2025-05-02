.PHONY: bootstrap
bootstrap:
	./bin/bootstrap

.PHONY: update
update:
	./bin/update-dotfiles

.PHONY: test
test: shellcheck

.PHONY: shellcheck
shellcheck:
	shellcheck `grep -l bash bin/*`
