BUILDERS=$(shell find builders/* -type d)

.PHONY: builders $(BUILDERS)
builders: $(BUILDERS)

$(BUILDERS): mozharness
	$(MAKE) -C $@

mozharness:
	hg clone https://hg.mozilla.org/build/mozharness
