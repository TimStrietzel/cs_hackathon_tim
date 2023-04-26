
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_opportunities`
    
    
    OPTIONS()
    as (
      with opportunities as (
    select *
    from `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_OPPORTUNITIES`
)

select * from opportunities
    );
  