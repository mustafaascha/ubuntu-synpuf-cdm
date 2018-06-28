#!/bin/bash

ubuntu_version=$(lsb_release -a 2> /dev/null | grep Codename | awk '{print $2}')

sources=$(echo '/etc/apt/sources.list.d/pgdg.list')

#sudo touch $sources
#echo "deb http://apt.postgresql.org/pub/repos/apt/ $ubuntu_version-pgdg main" > $sources

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-10

echo 'Would you like to retrieve all or partial data? Enter f or p'
read fp

if [$fp == "f"]
	then
		data="install_files/full-data.txt"
	else
		data="install_files/sampled-data.txt"
fi

the_d=$(pwd)

mkdir cache

while read _hash _link; do
	f=$(echo $_link | sed 's/.*\///')
	wget -O $f $_link
	shasum cache/$f | awk '$1==$_hash{print"$f successfully downloaded\n"}'
done <$the_d/data-download.txt

cd cache
ls -1 | xargs gunzip
cd ..

echo 'Please visit http://www.ohdsi.org/web/athena/ and download the SNOMED, ICD9CM, ICD9Proc, CPT4, HCPCS, LOINC, RxNorm, and NDC vocabulary files'
echo 'When you have downloaded these files, press enter.'
read _
