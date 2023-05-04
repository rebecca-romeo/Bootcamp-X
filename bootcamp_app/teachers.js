const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcamp_x'
});

const args = process.argv.slice(2);

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers on teacher_id = teachers.id
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${args[0] || 'JUL02'}%'
ORDER BY teachers.name;

`)
.then(res => {
  console.log("connected")
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);

  })
})
.catch(err => console.error('query error', err.stack));

