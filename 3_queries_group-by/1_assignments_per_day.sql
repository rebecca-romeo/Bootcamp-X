-- assignments (id, name, content, duration, day, chapter)

SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;