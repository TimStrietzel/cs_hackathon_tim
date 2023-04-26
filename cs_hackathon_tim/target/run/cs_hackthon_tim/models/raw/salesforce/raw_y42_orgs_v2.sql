
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_y42_orgs_v2`
    
    
    OPTIONS()
    as (
      with y42_orgs_v2 as (
    select *
    from `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_Y42_ORGS_V2`
)

select * from y42_orgs_v2
    );
  