all:
	utils/generate-builder-dockerfiles.sh
	utils/squash-and-publish.sh
