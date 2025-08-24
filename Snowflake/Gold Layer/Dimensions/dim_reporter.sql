create or replace table dim_reporter(
    reporter_sk number identity primary key,
    username_bk string not null,
    url string,
    verified boolean,
    cleared boolean,
    disabled boolean,
    hacker_mediation boolean,
    is_me boolean
);