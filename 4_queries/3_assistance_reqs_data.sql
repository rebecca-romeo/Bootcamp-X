-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- assignments (id, name, content, duration, day, chapter)
-- assistance_requests (id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback)
-- cohorts (id, name, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- teachers (id, name, is_active, start_date, end_date)

SELECT
  teachers.name as teacher,
  students.name as student,
  assignments.name as assignment,
  (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers on teacher_id = teachers.id
JOIN students on student_id = students.id
JOIN assignments on assignment_id = assignments.id
ORDER BY duration

