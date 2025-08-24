create or replace table dim_team_stage as 
select distinct
    variant_col:team:handle::string as handle_bk,
    variant_col:team:id::number as team_id,
    variant_col:team:offers_bounties::boolean as offers_bounties,
    variant_col:team:default_currency::string as default_currency,
    variant_col:team:state::string as state,
    variant_col:team:profile:name::string as profile_name,
    variant_col:team:profile:website::string as profile_website,
from bronze.hackerone_disclosed_reports
where variant_col:team:handle is not null;