SELECT cohorts.name, COUNT(students.id) AS student_count
FROM cohorts
JOIN students
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY COUNT(students.id);