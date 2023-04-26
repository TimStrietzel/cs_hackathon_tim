SELECT id,
       subject,
       description,
       organization_id
FROM {{source('zendesk','tickets')}}
