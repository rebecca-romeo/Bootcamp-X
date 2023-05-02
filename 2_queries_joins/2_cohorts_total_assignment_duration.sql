-- cohorts (id, name, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)

SELECT SUM(duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';