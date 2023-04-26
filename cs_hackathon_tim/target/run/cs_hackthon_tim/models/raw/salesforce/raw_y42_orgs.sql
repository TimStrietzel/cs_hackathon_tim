
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_y42_orgs`
    
    
    OPTIONS()
    as (
      

with y42_orgs as (
    select *
    from `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_Y42_ORGS`
)

select * from y42_orgs
    );
  