use euro_cup_2016;

SELECT 
	DISTINCT match_no
	venue_id,
    venue_name
FROM test_penalty_shootout as ps
INNER JOIN test_match_mast as mm
using(match_no)
INNER JOIN test_soccer_venue as sc
USING (venue_id)
