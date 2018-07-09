#!/bin/bash

#https://stackoverflow.com/questions/29161323/how-to-keep-associative-array-order-in-bash
fls=(
"init-postgres.sql"
"create_CDMv5_tables.sql"
"load_CDMv5_vocabulary.sql"
"load_CDMv5_synpuf.sql"
"create_CDMv5_constraints.sql"
"create_CDMv5_indices.sql"
"create_CDMv5_condition_era.sql"
"create_CDMv5_drug_era_non_stockpile.sql"
)

the_dir=$(pwd)

#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash
#for file in "${!orders[@]}" 
for file in "${!fls[@]}" 
do
  sudo -i -u postgres psql -U postgres -f $the_dir/SQL/${fls[$file]}
  echo "${fls[$file]} has been run"
done

