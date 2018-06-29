#!/bin/bash

ubuntu_version=$(lsb_release -a 2> /dev/null | grep Codename | awk '{print $2}')

sources=$(echo '/etc/apt/sources.list.d/pgdg.list')

sudo touch $sources

db_cmd=$(echo "echo \"deb http://apt.postgresql.org/pub/repos/apt/ $ubuntu_version-pgdg main\" > $sources")

echo $db_cmd | sudo bash

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-9.5

echo 'systemctl start postgresql' | sudo bash
echo 'setting postgres password to "password", change ASAP!'
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'password';"

#export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
#sudo apt-get -y install openjdk-8-jdk

#see: http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#sudo apt-get install -y oracle-java9-installer oracle-java9-set-default

sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get -y install oracle-java10-installer


