
    
    

with dbt_test__target as (

  select id as unique_field
  from `y42-solution-engineering`.`cs_hackathon_tim`.`raw_accounts`
  where id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


