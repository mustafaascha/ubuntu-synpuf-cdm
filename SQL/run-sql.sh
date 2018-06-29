#!/bin/bash

#source activate py27

#for i in {1..20}
#do
#    python python_etl/etlCDMV5.py $i
#done

#http://www.zsh.org/mla/users/2002/msg00033.html
#https://stackoverflow.com/questions/246215/how-can-i-list-files-with-their-absolute-path-in-linux

#ls -d -1 /home/ETL-CMS/cache
#psql -U postgres -f SQL/init-postgres.SQL
#psql -U postgres -f SQL/create_CDMv5_tables.sql
#psql -U postgres -f SQL/load_CDMv5_vocabulary.sql
#psql -U postgres -f SQL/load_CDMv5_synpuf.sql
#psql -U postgres -f SQL/create_CDMv5_constraints.sql
#psql -U postgres -f SQL/create_CDMv5_indices.sql
#psql -U postgres -f SQL/create_CDMv5_condition_era.sql
#psql -U postgres -f SQL/create_CDMv5_drug_era_non_stockpile.sql

#https://stackoverflow.com/questions/29161323/how-to-keep-associative-array-order-in-bash
declare -A fls;                            declare -A orders;  
fls["i"]="init-postgres.SQL";                         orders+=("i")
fls["ct"]="create_CDMv5_tables.sql";                  orders+=("ct")
fls["lv"]="load_CDMv5_vocabulary.sql";                orders+=("lv")
fls["ls"]="load_CDMv5_synpuf.sql";                    orders+=("ls")
fls["cc"]="create_CDMv5_constraints.sql";             orders+=("cc")
fls["ci"]="create_CDMv5_indices.sql";                 orders+=("ci")
fls["cce"]="create_CDMv5_condition_era.sql";          orders+=("cce")
fls["cde"]="create_CDMv5_drug_era_non_stockpile.sql"; orders+=("")



#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash
for file in "${orders[@]}" 
do
  sudo -i -u postgres psql -U postgres -f $(pwd)/SQL/${fls[$file]}
	echo ${fls[$file]} has been run
done

















