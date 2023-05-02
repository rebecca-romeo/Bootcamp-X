-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- assignments (id, name, content, duration, day, chapter)
-- assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback)
-- cohorts (id, name, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- teachers (id, name, is_active, start_date, end_date)

SELECT count(assistance_requests.created_at) as total_assitances, students.name
FROM assistance_requests
JOIN students on student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;