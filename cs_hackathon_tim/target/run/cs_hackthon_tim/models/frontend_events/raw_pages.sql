
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`raw_pages`
    
    
    OPTIONS()
    as (
      with pages as (
    select *
    from `y42-solution-engineering`.`vdemo_public_cshackathoneumultiregion_main`.`Integrations_Y42_Frontend_Events_pages_1`
)

select * from pages
    );
  