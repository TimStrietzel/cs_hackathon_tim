{{ config(materialized='table') }}

with y42_orgs as (
    select *
    from {{source('salesforce','SF_Y42_ORGS')}}
)

select * from y42_orgs