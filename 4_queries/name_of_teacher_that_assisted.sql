SELECT DISTINCT teachers.name AS teacher, cohorts.name 
FROM assistance_requests
JOIN teachers ON (teachers.id = assistance_requests.teacher_id)
JOIN students ON (students.id = assistance_requests.student_id)
JOIN cohorts ON (cohorts.id = students.cohort_id)
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;
-- Get the name of all teachers that performed an assistance request during a cohort.
--     This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.