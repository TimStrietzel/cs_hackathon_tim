SELECT
org.name as org_name,
account.name as account_name,
account.at_risk_since as account_at_risk_since,
account.churned_at as account_churned_at,
account.is_first_value_acchieved as account_is_first_value_acchieved,
account.is_implementation_acchieved as account_is_implementation_acchieved,
account.is_in_production as account_is_in_production,
account.is_churned as account_is_churned,
account.status as account_status,
account.customer_journey_phase,
account.customer_journey_status,
account.segment as account_segment,
account.data_team_size
FROM {{ref('dim_salesforce_account')}} account
JOIN {{ref('dim_salesforce_orgs')}} org
ON account.id = org.account_id