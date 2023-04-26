
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_analytics_by_org`
    
    
    OPTIONS()
    as (
      SELECT org_name,
       AVG(requester_wait_time_in_minutes) AS avg_requester_wait_time_in_minutes,
       AVG(full_resolution_time_in_minutes) AS avg_full_resolution_time_in_minutes,
       SUM(requester_wait_time_in_minutes) AS total_requester_wait_time_in_minutes,
       SUM(full_resolution_time_in_minutes) AS total_resolution_time_in_minutes,
       count(*) as total_tickets
FROM `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_zendesk_combined`
GROUP BY org_name
    );
  