#!/bin/bash


#export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"

cd vocab
java -jar cpt4.jar 5
cd ..

the_dir=$(pwd)
cd SQL
ls | grep load | xargs -I {FL} sed -i.bk "s:SUBTHIS:$the_dir:g" {FL}
cd ..

cd cache
ls | grep _1.csv | sed 's/_1\.csv//' | xargs -I {FILE} mv {FILE}_1.csv {FILE}.csv 
cd ..

echo 'systemctl start postgresql' | sudo bash

source SQL/run-sql.sh

#echo 'Done setting up your SynPUF OMOP CDM!'
