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
sudo -u postgres psql -U postgres -d postgres -c "ALTER USER postgres WITH password 'password';"

sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get -y install oracle-java10-installer


