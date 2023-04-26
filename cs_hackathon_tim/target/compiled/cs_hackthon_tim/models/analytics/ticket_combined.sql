SELECT
org.name as org_name,
org.domain_names,
ticket.id as ticket_id,
ticket.subject as subject,
metric.assigned_at,
metric.requester_wait_time_in_minutes,
metric.full_resolution_time_in_minutes,
metric.reopens
FROM `y42-solution-engineering`.`cs_hackathon_tim`.`dim_ticket` ticket
JOIN `y42-solution-engineering`.`cs_hackathon_tim`.`ticket_metrics` metric
ON ticket.id = metric.ticket_id
JOIN `y42-solution-engineering`.`cs_hackathon_tim`.`dim_zendesk_orgs` org
ON ticket.organization_id = org.id