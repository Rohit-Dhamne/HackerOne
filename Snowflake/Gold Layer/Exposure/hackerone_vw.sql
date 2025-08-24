create or replace view hackerone_vw as
select
    fact_report.report_id,
    fact_report.created_date,
    fact_report.disclosed_date,
    fact_report.title as report_title,
    fact_report.sub_state,
    fact_report.vote_count,
    fact_report.has_bounty,
    fact_report.vulnerability_information,
    dim_reporter.username_bk as reporter_username,
    dim_reporter.verified as is_reporter_verified,
    dim_team.profile_name as team_name,
    dim_weakness.weakness_string as weakness_summery,
    ifnull(dim_scope.max_severity, 'unknown') as severity
from fact_report
left join dim_reporter
    on dim_reporter.reporter_sk = fact_report.reporter_sk
left join dim_team
    on dim_team.team_sk = fact_report.team_sk
left join dim_weakness
    on dim_weakness.weakness_sk = fact_report.weakness_sk
left join dim_scope 
    on dim_scope.scope_sk = fact_report.scope_sk
;