all: depends\
		 synpuf_1.zip\
		 setup

.PHONY: depends setup

VPATH = install_files

depends:
	bash install_files/00-dependencies.sh

synpuf_1.zip: 01-download.sh
	bash install_files/01-download.sh

setup:
	bash install_files/02-setup.sh
