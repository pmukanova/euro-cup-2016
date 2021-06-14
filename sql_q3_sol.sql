use euro_cup_2016;

SELECT 
	match_no,
	play_stage as stage,
	goal_score AS score
FROM test_match_mast
WHERE stop1_sec = 0;
