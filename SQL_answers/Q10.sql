-- 10 How does the number of female students differ among universities?

SELECT university_name, SUM(pct_female_students) AS total_female_students
FROM university_year
JOIN university ON university.id = university_year.university_id
GROUP BY university_name
ORDER BY total_female_students desc;