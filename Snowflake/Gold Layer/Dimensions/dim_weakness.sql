create or replace table dim_weakness(
    weakness_sk number identity primary key,
    weakness_id number,
    weakness_string string
);