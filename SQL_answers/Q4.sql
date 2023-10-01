-- 4 Are there any common criteria used by different ranking systems?

SELECT criteria_name
FROM ranking_criteria
GROUP BY criteria_name
HAVING COUNT(DISTINCT ranking_system_id) = 0;