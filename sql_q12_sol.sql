SELECT 
team_id,
(SELECT country_name
FROM test_soccer_country
WHERE country_id = team_id) AS country,
posi_to_play,
COUNT(g.goal_id) AS goals
FROM test_player_mast
INNER JOIN test_goal as g
USING (team_id)
GROUP BY team_id, posi_to_play
