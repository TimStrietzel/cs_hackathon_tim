
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`dim_ticket`
    
    
    OPTIONS()
    as (
      SELECT id,
       subject,
       description,
       organization_id
FROM `y42-solution-engineering`.`vdemo_public_cshackathoneumultiregion_main`.`Integrations_Y42_Analytics_Integrations_src_zendesk_tickets`
    );
  