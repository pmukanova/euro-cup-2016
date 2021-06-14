with bookings as
(SELECT
p.match_no AS m_no,
(SELECT referee_id
FROM test_match_mast
WHERE  match_no = m_no) as referee_id,
COUNT(p.player_id) as player_booked
FROM test_player_booked as p
GROUP BY match_no, referee_id
ORDER BY player_booked DESC)

SELECT referee_id as id,
(SELECT referee_name
FROM test_referee_mast
WHERE referee_id = id) as name,
SUM(player_booked) as total_booking
FROM bookings
GROUP BY referee_id
ORDER BY total_booking DESC



