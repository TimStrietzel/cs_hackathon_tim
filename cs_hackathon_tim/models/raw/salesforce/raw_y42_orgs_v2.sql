{{ config(materialized='table') }}

with y42_orgs_v2 as (
    select *
    from {{source('salesforce','SF_Y42_ORGS_V2')}}
)

select * from y42_orgs_v2