SELECT player_id,
player_name,
playing_club
FROM test_goal
INNER JOIN test_player_mast
USING (player_id)
WHERE posi_to_play = "DF" 