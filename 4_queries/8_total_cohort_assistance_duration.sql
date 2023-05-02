-- assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback)
-- teachers (id, name, is_active, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- assignments (id, name, content, duration, day, chapter)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- cohorts (id, name, start_date, end_date)

SELECT cohorts.name, SUM(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;