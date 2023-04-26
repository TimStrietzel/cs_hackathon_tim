SELECT
    org.org_name as org_name,
    tickets.avg_full_resolution_time_in_minutes as avg_full_resolution_time_in_minutes,
    CASE WHEN tickets.avg_full_resolution_time_in_minutes BETWEEN 0 AND 10000 THEN 5
         WHEN tickets.avg_full_resolution_time_in_minutes BETWEEN 10001 AND 20000 THEN 4
         WHEN tickets.avg_full_resolution_time_in_minutes BETWEEN 20001 AND 30000 THEN 3
         WHEN tickets.avg_full_resolution_time_in_minutes BETWEEN 30001 AND 40000 THEN 2
         WHEN tickets.avg_full_resolution_time_in_minutes BETWEEN 40001 AND 50000 THEN 1
         ELSE 0
        END as health_score,
    tickets.total_resolution_time_in_minutes as total_resolution_time_in_minutes,
    tickets.total_tickets as total_tickets,
    org.account_segment as segment,
    org.account_name as account_name,
    org.account_is_churned as is_churned,
    org.customer_journey_status as customer_journey_status,
    org.customer_journey_phase as customer_journey_phase,
    org.data_team_size as data_team_size,
    org.account_is_first_value_acchieved as is_first_value_acchieved,
    org.account_is_implementation_acchieved as is_implementation_acchieved,
    org.account_is_in_production as is_in_production
FROM `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_analytics_by_org` as tickets
JOIN `y42-solution-engineering`.`cs_hackathon_tim`.`org_salesforce_combined` as org
ON tickets.org_name = org.account_name