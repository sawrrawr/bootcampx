SELECT students.name AS student, AVG(assignment_submissions.duration) AS avg_duration, AVG(assignments.duration) AS estimated_duration
FROM assignments 
JOIN assignment_submissions
ON assignments.id = assignment_submissions.assignment_id
JOIN students
ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_duration;