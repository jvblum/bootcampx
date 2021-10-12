SELECT DISTINCT teachers.name AS teacher, cohorts.name AS COHORT, COUNT(assistance_requests) AS total_assistance_request
FROM assistance_requests
JOIN teachers ON (teachers.id = assistance_requests.teacher_id)
JOIN students ON (students.id = assistance_requests.student_id)
JOIN cohorts ON (cohorts.id = students.cohort_id)
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;