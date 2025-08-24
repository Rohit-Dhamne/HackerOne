create or replace table reports_core as 
select
variant_col:id::number as report_id,
variant_col:title::string as title,
variant_col:visibility::string as visibility,
variant_col:substate::string as sub_state,
variant_col:vote_count::number as vote_count,
variant_col:"has_bounty?"::boolean as has_bounty,
variant_col:vulnerability_information::string as vulnerability_information,
variant_col:created_at::timestamp as create_at,
variant_col:disclosed_at::timestamp as disclosed_at,
variant_col:reporter:username::string as reporter_username_bk,
variant_col:team:handle::string as team_handle_bk,
variant_col:weakness:id::number as weakness_id_bk,
variant_col:structured_scope:databaseId::number as scope_dbid_bk
from bronze.hackerone_disclosed_reports;