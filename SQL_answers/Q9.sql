-- 9 Is there a relationship between a university's score and the student-staff ratio?

SELECT ury.score, uyr.student_staff_ratio, university.university_name
FROM university_year uyr
JOIN university_ranking_year ury ON uyr.university_id = ury.university_id AND uyr.year = ury.year
JOIN university ON university.id = ury.university_id