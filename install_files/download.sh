#!/bin/bash

echo 'Would you like to retrieve all or partial data? Enter f or p'
read fp

if [$fp == "f"]
	then
		data="install_files/full-data.txt"
	else
		data="install_files/sampled-data.txt"
fi

the_d=$(pwd)

if [! -e cache]
	then 
		mkdir cache
fi

while read _hash _link; do
  f=$(echo $_link | sed 's/.*\///')
  cd cache
  wget -O $f $_link
  shasum $f | awk '{if ($1==$_hash) {print "$f successfully downloaded\n"} 
										else {print "There was a problem downloading $f\n"}}'
	unzip $f
	cd ..
done <$the_d/$data

echo 'Please visit http://www.ohdsi.org/web/athena/ and download the SNOMED, ICD9CM, ICD9Proc, CPT4, HCPCS, LOINC, RxNorm, and NDC vocabulary files. Unzip and place them in the vocab folder.'
echo 'When you have downloaded these files, press enter.'
read _ 




