all: dependencies\
		 download\
		 setup

.PHONY: dependencies download setup

VPATH = install_files

dependencies: dependencies.sh
	bash install_files/00-dependencies.sh

synpuf_1.zip: download.sh
	bash install_files/01-download.sh

setup: setup.sh
	bash install_files/02-setup.sh
