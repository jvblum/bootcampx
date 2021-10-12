SELECT students.name AS students, AVG(assignment_submissions.duration) AS avg_assignment_duration, AVG(assignments.duration) AS estimated_avg_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY avg_assignment_duration;