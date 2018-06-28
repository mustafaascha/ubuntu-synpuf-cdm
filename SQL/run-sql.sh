#!/bin/bash

#source activate py27

#for i in {1..20}
#do
#    python python_etl/etlCDMV5.py $i
#done

#http://www.zsh.org/mla/users/2002/msg00033.html
#https://stackoverflow.com/questions/246215/how-can-i-list-files-with-their-absolute-path-in-linux

#ls -d -1 /home/ETL-CMS/cache
psql -U postgres -f SQL/init-postgres.SQL
psql -U postgres -f SQL/create_CDMv5_tables.sql
psql -U postgres -f SQL/load_CDMv5_vocabulary.sql
psql -U postgres -f SQL/load_CDMv5_synpuf.sql
psql -U postgres -f SQL/create_CDMv5_constraints.sql
psql -U postgres -f SQL/create_CDMv5_indices.sql
psql -U postgres -f SQL/create_CDMv5_condition_era.sql
psql -U postgres -f SQL/create_CDMv5_drug_era_non_stockpile.sql







