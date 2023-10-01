-- 5 What is the trend in university rankings over the years according to each system?

SELECT
    u.university_name,
    ury.year,
    AVG(ury.score) AS average_score,
    rs.system_name
FROM
    university u
JOIN
    university_ranking_year ury ON u.id = ury.university_id
JOIN
    ranking_criteria rc ON ury.ranking_criteria_id = rc.id
JOIN
    ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY
    u.university_name, ury.year, rs.system_name
ORDER BY
    u.university_name, ury.year, rs.system_name;