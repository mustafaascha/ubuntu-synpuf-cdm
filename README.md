# ubuntu-synpuf-cdm: Automate a SynPuf CDM installation

Using Ubuntu 16.04, this repository lets you `make` your own PostgreSQL OMOP CDM V5 database. 

After installing git, run `git clone https://github.com/mustafaascha/ubuntu-synpuf-cdm`, then `cd ubuntu-synpuf-cdm`, and then `make`. You will have to download your own vocabulary files and place them in the 'vocab' folder, but these scripts will run the `cpt4.jar` for you (if you don't know what that is, then don't worry about it until otherwise necessary). 

To avoid re-entering your administrator password at each SQL script execution, you can do `sudo su` and then `make`. Otherwise, you will have to respond to the script to indicate whether you would like full or partial data downloads, whether you have placed vocabulary files in the right directory, and whatever commands normally require root access. 






