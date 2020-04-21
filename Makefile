.PHONY: all

.DELETE_ON_ERROR:

all: build \
	build/chaws.shellcheck.done \
	build/cfn.shellcheck.done

build:
	mkdir -p build

build/%.shellcheck.done: build bin/%
	@rm -f $@
	shellcheck -s bash bin/$* && touch $@
