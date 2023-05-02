-- assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback)
-- teachers (id, name, is_active, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- assignments (id, name, content, duration, day, chapter)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- cohorts (id, name, start_date, end_date)

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;