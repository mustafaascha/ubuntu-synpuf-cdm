/*********************************************************************************
# Copyright 2016 Observational Health Data Sciences and Informatics
#
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
********************************************************************************/

\COPY synpuf5.CARE_SITE FROM 'SUBTHIS/cache/care_site.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.CONDITION_OCCURRENCE FROM 'SUBTHIS/cache/condition_occurrence.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.DEATH FROM 'SUBTHIS/cache/death.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.DEVICE_COST FROM 'SUBTHIS/cache/device_cost.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.DRUG_COST FROM 'SUBTHIS/cache/drug_cost.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.DRUG_EXPOSURE FROM 'SUBTHIS/cache/drug_exposure.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.DEVICE_EXPOSURE FROM 'SUBTHIS/cache/device_exposure.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.LOCATION FROM 'SUBTHIS/cache/location.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.MEASUREMENT FROM 'SUBTHIS/cache/measurement_occurrence.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.OBSERVATION FROM 'SUBTHIS/cache/observation.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.PERSON FROM 'SUBTHIS/cache/person.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.PROCEDURE_OCCURRENCE FROM 'SUBTHIS/cache/procedure_occurrence.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.PROCEDURE_COST FROM 'SUBTHIS/cache/procedure_cost.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.PROVIDER FROM 'SUBTHIS/cache/provider.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.SPECIMEN FROM 'SUBTHIS/cache/specimen.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.VISIT_COST FROM 'SUBTHIS/cache/visit_cost.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.VISIT_OCCURRENCE FROM 'SUBTHIS/cache/visit_occurrence.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.OBSERVATION_PERIOD FROM 'SUBTHIS/cache/observation_period.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
\COPY synpuf5.PAYER_PLAN_PERIOD FROM 'SUBTHIS/cache/payer_plan_period.csv' WITH DELIMITER E',' CSV HEADER QUOTE E'\b';
