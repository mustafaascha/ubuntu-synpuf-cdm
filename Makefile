all: depends\
     download\
     setup

.PHONY: depends download setup

VPATH = install_files

depends:
	bash install_files/00-dependencies.sh

download:
	bash install_files/01-download.sh

setup:
	bash install_files/02-setup.sh
