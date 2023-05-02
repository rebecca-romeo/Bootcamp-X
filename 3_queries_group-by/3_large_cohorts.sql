-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- cohorts (id, name, start_date, end_date)

SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM cohorts
JOIN students on cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_count;