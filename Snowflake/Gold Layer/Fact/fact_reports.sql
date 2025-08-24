CREATE OR REPLACE TABLE fact_report AS
SELECT
    r.report_id,
    dr.reporter_sk,
    dt.team_sk,
    dw.weakness_sk,
    ds.scope_sk,
    r.created_at as created_date,
    r.disclosed_at as disclosed_date_sk,
    r.title,
    r.visibility,
    r.sub_state,
    r.vote_count,
    IFF(r.has_bounty,1,0) AS has_bounty,
    r.vulnerability_information
FROM SILVER.reports_core r
LEFT JOIN GOLD.dim_reporter dr
  ON r.reporter_username_bk = dr.username_bk
LEFT JOIN GOLD.dim_team dt
  ON r.team_handle_bk = dt.handle_bk
LEFT JOIN GOLD.dim_weakness dw
  ON r.weakness_id_bk = dw.weakness_id
LEFT JOIN GOLD.dim_scope ds
  ON r.scope_dbid_bk = ds.databaseid;