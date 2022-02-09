SELECT teachers.name, students.name, assignments.name, assistance_requests.completed_at-assistance_requests.started_at AS duration
FROM assistance_requests
JOIN students 
ON students.id = assistance_requests.student_id
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
JOIN assignments
ON assignment_id = assignments.id
ORDER BY duration;