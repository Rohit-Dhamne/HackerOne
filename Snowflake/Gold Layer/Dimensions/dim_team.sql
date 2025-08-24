create or replace table dim_team(
    team_sk number identity primary key,
    HANDLE_BK string not null,
    TEAM_ID number,
    OFFERS_BOUNTIES boolean,
    DEFAULT_CURRENCY string,
    STATE string,
    PROFILE_NAME string,
    PROFILE_WEBSITE string
);