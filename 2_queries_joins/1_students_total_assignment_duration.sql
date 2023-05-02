-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)

SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students
ON students.id = student_id
WHERE students.name IN ('Ibrahim Schimmel');

-- alternative:
-- WHERE students.name = 'Ibrahim Schimmel';