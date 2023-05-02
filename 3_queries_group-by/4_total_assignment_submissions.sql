-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- cohorts (id, name, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohort_id = cohorts.id
JOIN assignment_submissions on student_id = students.id
GROUP BY cohort
ORDER BY total_submissions DESC;