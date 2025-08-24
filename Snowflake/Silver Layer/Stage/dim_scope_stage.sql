create or replace table dim_scope_stage as 
select distinct
    variant_col:structured_scope:asset_identifier::string as asset_identifier,
    variant_col:structured_scope:asset_type::string as asset_type,
    variant_col:structured_scope:databaseId::number as databaseId,
    variant_col:structured_scope:max_severity::string as max_severity
from bronze.hackerone_disclosed_reports
where variant_col:structured_scope:databaseId is not null;