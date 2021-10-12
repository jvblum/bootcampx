SELECT day, COUNT(day) AS assignments_per_day
FROM assignments
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day;