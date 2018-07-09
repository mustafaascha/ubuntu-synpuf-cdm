# ubuntu-synpuf-cdm: Automate a SynPuf CDM installation

Using Ubuntu 16.04, this repository lets you `make` your own PostgreSQL OMOP CDM V5 database. 

Starting from a fresh Ubuntu 16.04 install: 

1. After installing git, run `git clone https://github.com/mustafaascha/ubuntu-synpuf-cdm`, then (2) `cd ubuntu-synpuf-cdm`
2. You will have to download your own vocabulary files and place them in the 'vocab' folder
    - These scripts will run the `cpt4.jar` for you (if you don't know what that is, then don't worry about it until otherwise necessary).   
3. run `make`

You will have to respond to the script to indicate whether you would like full or partial data downloads, whether you have placed vocabulary files in the right directory, and to run commands that normally require root access. To avoid re-entering your administrator password at each SQL script execution, you can use `sudo su` and then `make`. 






