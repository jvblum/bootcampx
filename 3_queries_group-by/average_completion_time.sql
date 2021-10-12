SELECT students.name AS students, AVG(assignment_submissions.duration) AS avg_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY avg_assignment_duration DESC;