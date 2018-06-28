#!/bin/bash


export JAVA_HOME="usr/lib/jvm/java-9-openjdk-amd64/jre/bin/java"

cd vocab
java -jar cpt4.jar
cd ..

cd SQL
sed -i.bk "s/SUBTHIS/$the_d/g"
cd ..

source SQL/run-sql.sh

echo 'Done setting up your SynPUF OMOP CDM!'
