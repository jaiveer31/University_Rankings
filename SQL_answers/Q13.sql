-- 13 What is the trend in the percentage of female students over time?

SELECT year, AVG(pct_female_students) AS average_percentage_female_students
FROM university_year
GROUP BY year
ORDER BY year;