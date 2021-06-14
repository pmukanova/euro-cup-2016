use euro_cup_2016;

SELECT 
	COUNT(io.in_out) as substitutions,
	mm.play_stage as stage
FROM test_player_in_out as io
INNER JOIN test_match_mast as mm
USING (match_no)
GROUP BY play_stage;