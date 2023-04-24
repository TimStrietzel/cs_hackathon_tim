select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from `y42-solution-engineering`.`cs_hackathon_tim`.`raw_accounts`
where id is null



      
    ) dbt_internal_test