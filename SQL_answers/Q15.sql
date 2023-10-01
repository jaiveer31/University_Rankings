-- 15 Is there a relationship between a university's ranking score and the number of students over time?

SELECT
    u.university_name,
    uyr.year,
    uyr.num_students,
    AVG(ury.score) AS average_score
FROM
    university u
JOIN
    university_year uyr ON u.id = uyr.university_id
LEFT JOIN
    university_ranking_year ury ON u.id = ury.university_id AND uyr.year = ury.year
GROUP BY
    u.university_name, uyr.year, uyr.num_students;