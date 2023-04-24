{{ config(materialized='table') }}

with opportunities as (
    select *
    from {{source('salesforce','SF_OPPORTUNITIES')}}
)

select * from opportunities