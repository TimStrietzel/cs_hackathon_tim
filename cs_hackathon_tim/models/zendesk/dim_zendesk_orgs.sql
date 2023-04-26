SELECT id,
       name,
       domain_names
FROM {{source('zendesk','orgs')}}
