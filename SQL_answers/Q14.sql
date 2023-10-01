-- 14 How has the ranking score of universities evolved over the years?
SELECT u.university_name, uyr.year, uyr.score, uyr.ranking_criteria_id
FROM university u
JOIN university_ranking_year uyr ON u.id = uyr.university_id
ORDER BY year, score desc;