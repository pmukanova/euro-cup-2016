use euro_cup_2016;

SELECT 
	COUNT(booking_time) as bookings
FROM test_player_booked 
WHERE play_schedule = 'ST'
