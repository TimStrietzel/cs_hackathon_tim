
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_contacts`
    
    
    OPTIONS()
    as (
      with contacts as (
    select *
    from `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_CONTACTS`
)

select * from contacts
    );
  