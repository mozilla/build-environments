generate_dockerfiles:
	utils/generate-builder-dockerfiles.sh

publish: generate_dockerfiles
	utils/squash-and-publish.sh
