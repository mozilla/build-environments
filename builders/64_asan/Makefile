MOZHARNESS := ../../mozharness
MOZCONFIGS := ${MOZHARNESS}/configs/builds/releng_base_linux_32_builds.py \
	${MOZHARNESS}/configs/builds/releng_sub_linux_configs/64_asan.py

COMPILER_DIR := ../../utils/moz_configs_to_dockerfile
COMPILER := ${COMPILER_DIR}/moz_configs_to_dockerfile.py
TEMPLATE := ${COMPILER_DIR}/templates/Dockerfile_mozharness_cfg.j2

compile:
	${COMPILER} ${TEMPLATE} ${MOZCONFIGS} > Dockerfile
