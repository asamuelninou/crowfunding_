SELECT campaign.cf_id,
(campaign.goal - campaign.pledged) AS remaining_goal_amount
INTO email_contacts_remaining_goal_amount
FROM campaign
WHERE OUTCOME = 'live'
ORDER BY remaining_goal_amount DESC;