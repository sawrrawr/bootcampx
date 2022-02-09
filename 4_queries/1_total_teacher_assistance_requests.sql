SELECT teachers.name AS teacher_name, COUNT(assignment_id)
FROM assistance_requests
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';