SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time
FROM students
JOIN assistance_requests
ON students.id = assistance_requests.student_id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;
