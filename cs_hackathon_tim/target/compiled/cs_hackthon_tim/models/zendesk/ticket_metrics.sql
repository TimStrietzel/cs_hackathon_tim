SELECT id,
       ticket_id,
       initially_assigned_at as assigned_at,
       JSON_VALUE(requester_wait_time_in_minutes,'$.business') as requester_wait_time_in_minutes,
       JSON_VALUE(full_resolution_time_in_minutes,'$.business') as full_resolution_time_in_minutes,
       reopens
FROM `y42-solution-engineering`.`vdemo_public_cshackathoneumultiregion_main`.`Integrations_Y42_Analytics_Integrations_src_zendesk_ticket_metrics`