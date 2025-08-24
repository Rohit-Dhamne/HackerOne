create or replace table dim_scope(
    scope_sk number identity primary key,
    asset_identifier string,
    asset_type string,
    databaseid number,
    max_severity string
);