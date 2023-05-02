-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- assignments (id, name, content, duration, day, chapter)
-- cohorts (id, name, start_date, end_date)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;