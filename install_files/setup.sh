#!/bin/bash


export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"

cd vocab
java -jar cpt4.jar
cd ..

cd SQL
sed -i.bk "s/SUBTHIS/$the_d/g"
cd ..

sudo systemctl start postgresql

source SQL/run-sql.sh

#echo 'Done setting up your SynPUF OMOP CDM!'
