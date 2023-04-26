
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_accounts`
    
    
    OPTIONS()
    as (
      with accounts as (
    select *
    from `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_ACCOUNTS`
)

select * from accounts
    );
  