
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_zendesk_metrics`
    
    
    OPTIONS()
    as (
      SELECT id,
       ticket_id,
       initially_assigned_at as assigned_at,
       CAST(JSON_VALUE(requester_wait_time_in_minutes,'$.business') AS INTEGER) as requester_wait_time_in_minutes,
       CAST(JSON_VALUE(full_resolution_time_in_minutes,'$.business') AS INTEGER) as full_resolution_time_in_minutes,
       reopens
FROM `y42-solution-engineering`.`vdemo_public_cshackathoneumultiregion_main`.`Integrations_Y42_Analytics_Integrations_src_zendesk_ticket_metrics`
    );
  