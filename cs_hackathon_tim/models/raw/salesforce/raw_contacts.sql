{{ config(materialized='table') }}

with contacts as (
    select *
    from {{source('salesforce','SF_CONTACTS')}}
)

select * from contacts