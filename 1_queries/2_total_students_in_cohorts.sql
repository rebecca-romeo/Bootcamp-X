SELECT COUNT(*)
FROM students
WHERE cohort_id <= 3;

-- alternative:
-- WHERE cohort_id IN (1,2,3);