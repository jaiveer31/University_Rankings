-- 11 What is the distribution of universities across different countries?

SELECT country_name, COUNT(DISTINCT university.id) AS num_universities
FROM country
LEFT JOIN university ON country.id = university.country_id
GROUP BY country_name;