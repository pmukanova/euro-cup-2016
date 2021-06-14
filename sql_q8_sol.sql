SELECT 
COUNT(kick_id) as shots,
team_id,
(SELECT country_name 
FROM test_soccer_country
WHERE country_id = team_id) as country
FROM test_penalty_shootout as p
GROUP BY match_no, team_id
ORDER BY shots DESC 
LIMIT 2
