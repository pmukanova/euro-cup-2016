SELECT 
player_name,
jersey_no,
playing_club 
FROM test_player_mast
WHERE posi_to_play = "GK"
AND team_id = (
SELECT country_id 
FROM test_soccer_country
WHERE country_name = "England"
);