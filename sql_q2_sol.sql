use euro_cup_2016;

SELECT 
COUNT(decided_by) as won_by_penalty
FROM test_match_details
WHERE decided_by = 'P';
