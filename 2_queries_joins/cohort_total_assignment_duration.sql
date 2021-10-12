SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

-- alter
-- SELECT SUM(duration) AS total_duration
-- FROM assignment_submissions
-- JOIN students ON (student_id = students.id)
-- JOIN cohorts ON (cohort_id = cohorts.id)
-- WHERE cohorts.name = 'FEB12';