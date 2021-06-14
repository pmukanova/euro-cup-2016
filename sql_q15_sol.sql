with bookings as
(SELECT
p.match_no AS m_no,
(SELECT referee_id
FROM test_match_mast
WHERE  match_no = m_no) as referee_id,
COUNT(p.player_id) as player_booked
FROM test_player_booked as p
GROUP BY match_no, referee_id
ORDER BY player_booked DESC
),
referee AS 
(SELECT referee_id,
SUM(player_booked) as total_booking
FROM bookings
GROUP BY referee_id
ORDER BY total_booking DESC
LIMIT 1
)

SELECT referee_name 
from test_referee_mast
WHERE referee_id = (select referee_id from referee)

