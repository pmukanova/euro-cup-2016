
SELECT * FROM test_player_mast AS p
WHERE playing_club = "Liverpool"
AND team_id = (
SELECT country_id 
FROM test_soccer_country
WHERE country_name = "England"
)





