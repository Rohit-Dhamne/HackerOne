create or replace table dim_weakness_stage as
select distinct
    variant_col:weakness:id::number as weakness_id,
    variant_col:weakness:name::string as weakness_string
from bronze.hackerone_disclosed_reports
where variant_col:weakness:id is not null;