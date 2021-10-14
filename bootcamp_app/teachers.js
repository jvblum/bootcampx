const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name 
FROM assistance_requests
JOIN teachers ON (teachers.id = assistance_requests.teacher_id)
JOIN students ON (students.id = assistance_requests.student_id)
JOIN cohorts ON (cohorts.id = students.cohort_id)
WHERE cohorts.name = '${process.argv[2] || JUL02}'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name}: ${user.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));

