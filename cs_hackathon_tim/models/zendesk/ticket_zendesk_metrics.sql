SELECT id,
       ticket_id,
       initially_assigned_at as assigned_at,
       CAST(JSON_VALUE(requester_wait_time_in_minutes,'$.business') AS INTEGER) as requester_wait_time_in_minutes,
       CAST(JSON_VALUE(full_resolution_time_in_minutes,'$.business') AS INTEGER) as full_resolution_time_in_minutes,
       reopens
FROM {{source('zendesk','metrics')}}
