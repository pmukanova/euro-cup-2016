SELECT 
DISTINCT m.player_gk as goalkeeper,
(SELECT player_name
FROM test_player_mast
WHERE player_id = m.player_gk) as name
FROM test_match_details as m
WHERE play_stage = "G" 
AND team_id = (SELECT country_id 
				FROM test_soccer_country
                WHERE country_name = "Germany")
                
