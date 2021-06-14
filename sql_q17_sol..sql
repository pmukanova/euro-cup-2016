SELECT 
country_name,
COUNT(ass_ref_id) as count
FROM test_soccer_country as s
RIGHT JOIN test_asst_referee_mast as a
USING (country_id)
GROUP BY country_name
ORDER BY count DESC
LIMIT 1