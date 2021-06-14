SELECT 
m.referee_id,
r.referee_name,
s.venue_name,
COUNT(match_no) as matches
FROM test_match_mast as m
INNER JOIN test_soccer_venue as s
USING (venue_id)
INNER JOIN test_referee_mast as r
USING (referee_id)
GROUP BY referee_id, referee_name, venue_name
