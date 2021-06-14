use euro_cup_2016;

SELECT 
	COUNT(st.won) as wins
FROM test_soccer_team as st
INNER JOIN test_match_details as md
using(team_id)
WHERE points = 1 AND decided_by != 'P'
