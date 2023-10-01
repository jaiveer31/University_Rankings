-- 12 How has the ranking of universities changed over the years?

SELECT u.university_name, AVG(ury.score) AS average_score, ury.year
FROM university_ranking_year ury
JOIN university u ON u.id = ury.university_id
GROUP BY u.university_name, ury.year
ORDER BY year, average_score desc;