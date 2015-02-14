BUILDERS=$(shell find builders/* -type d)

.PHONY: builders $(BUILDERS) squash_and_publish update_repo
builders: $(BUILDERS)

$(BUILDERS): mozharness
	$(MAKE) -C $@

mozharness:
	hg clone https://hg.mozilla.org/build/mozharness

squash_and_publish: mozharness
	utils/squash-and-publish.sh ${DOCKER_USER-$USER}

update_repo: mozharness
	utils/update-repo.sh ${UPDATE_REPO_BRANCH-automation} ${UPDATE_REPO-origin}
