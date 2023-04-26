SELECT ID as id,
       NAME as name,
       ACCOUNT__C as account_id
FROM `y42-solution-engineering`.`cs_hackathon_source_data_salesforce`.`SF_Y42_ORGS_V2`
WHERE not ISDELETED