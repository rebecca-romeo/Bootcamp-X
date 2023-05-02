-- assignments (id, name, content, duration, day, chapter)

SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;