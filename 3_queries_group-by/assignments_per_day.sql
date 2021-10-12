SELECT day, COUNT(day) AS assignments_per_day
FROM assignments
GROUP BY day
ORDER BY day;