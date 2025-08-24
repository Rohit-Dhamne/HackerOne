create or replace table dim_reporter_stage as
select distinct
    variant_col:reporter:username::string as username_bk,
    variant_col:reporter:url::string as url,
    variant_col:reporter:verified::boolean as verified,
    variant_col:reporter:cleared::boolean as cleared,
    variant_col:reporter:disabled::boolean as disabled,
    variant_col:reporter:hacker_mediation::boolean as hacker_mediation,
    variant_col:reporter:"is_me?"::boolean as is_me
from bronze.hackerone_disclosed_reports
where variant_col:reporter:username is not null ;