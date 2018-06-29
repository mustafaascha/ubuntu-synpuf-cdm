all: dependencies\
		 download\
		 setup

.PHONY: dependencies download setup

VPATH = install_files

dependencies: dependencies.sh
	bash install_files/dependencies.sh

download: download.sh
	bash install_files/download.sh

setup: setup.sh
	bash install_files/setup.sh
