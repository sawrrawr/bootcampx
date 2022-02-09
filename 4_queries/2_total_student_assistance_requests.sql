SELECT students.name, COUNT(assistance_requests.id)
FROM students
JOIN assistance_requests
ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;