
SELECT
match_no,
COUNT(player_id) as faul_cards
FROM test_player_booked
GROUP BY match_no
ORDER BY faul_cards DESC
LIMIT 1



