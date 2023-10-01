-- 2 How has the number of universities changed over the years in each country?

SELECT c.country_name, university_year.year, COUNT(u.id) AS num_universities
FROM country c
JOIN university u ON c.id = u.country_id
JOIN university_year ON u.id=university_year.university_id
where university_year.year is not null
group by 1, 2
order by 1, 2