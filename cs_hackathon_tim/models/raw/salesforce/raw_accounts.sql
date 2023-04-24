{{ config(materialized='table') }}

with accounts as (
    select *
    from {{source('salesforce','SF_ACCOUNTS')}}
)

select * from accounts