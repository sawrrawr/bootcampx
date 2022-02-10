const { Pool } = require('pg');

const pool = new Pool ({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const cohortName = process.argv[2];
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`];
pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teacher;
`, values)
.then(res => {
  console.log(res.rows);
  })
.catch(err => {
  console.log('ERROR');
  console.log(err.message);
});