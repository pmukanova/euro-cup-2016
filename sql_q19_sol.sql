SELECT 
COUNT(player_id) captain_gk
FROM test_player_mast
WHERE posi_to_play = "GK" 
AND player_id in (SELECT player_captain 
					FROM test_match_captain)