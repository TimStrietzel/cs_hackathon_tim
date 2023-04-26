with pages as (
    select *
    from {{source('frontend','pages')}}
)

select * from pages