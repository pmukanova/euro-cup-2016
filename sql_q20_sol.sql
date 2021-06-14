SELECT 
player_name
FROM test_player_mast
WHERE player_id in (SELECT player_id
			FROM test_player_in_out
			WHERE play_schedule = "NT" AND play_half = 1 AND in_out = "I")