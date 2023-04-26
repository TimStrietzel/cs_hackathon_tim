
SELECT ID as id,
       NAME as name,
       ACCOUNT__C as account_id
FROM {{source('salesforce','orgs')}}
WHERE not ISDELETED