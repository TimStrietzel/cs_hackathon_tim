
  
    

    create or replace table `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_fields`
    
    
    OPTIONS()
    as (
      SELECT id,
       ticket_id,
       initially_assigned_at as assigned_at,
       JSON_VALUE(requester_wait_time_in_minutes,'$.business') as requester_wait_time_in_minutes,
       JSON_VALUE(full_resolution_time_in_minutes,'$.business') as full_resolution_time_in_minutes,
       reopens
FROM `y42-solution-engineering`.`vdemo_public_cshackathoneumultiregion_main`.`Integrations_Y42_Analytics_Integrations_src_zendesk_ticket_fields`




raw_title
custom_field_options
visible_in_portal
created_at
description
title
type
required
editable_in_portal
updated_at
system_field_options
regexp_for_validation
tag
id
collapsed_for_agents
raw_title_in_portal
active
agent_description
raw_description
url
required_in_portal
removable
sub_type_id
position
title_in_portal
    );
  