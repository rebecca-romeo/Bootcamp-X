SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL

-- compass added this line:
ORDER BY cohort_id;