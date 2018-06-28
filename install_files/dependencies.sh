#!/bin/bash

ubuntu_version=$(lsb_release -a 2> /dev/null | grep Codename | awk '{print $2}')

sources=$(echo '/etc/apt/sources.list.d/pgdg.list')

sudo touch $sources
add_src_cmd=$(echo 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $ubuntu_version-pgdg main" > $sources')
echo $add_src_cmd | sudo bash

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-9.5

echo 'setting postgres password to "password", change ASAP!'
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'password';"

export JAVA_HOME="usr/lib/jvm/java-9-openjdk-amd64/jre/bin/java"

sudo apt-get -y install openjdk-9-jdk

