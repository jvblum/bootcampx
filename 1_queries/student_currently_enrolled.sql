SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL;
-- A student's end date will be NULL when they are currently enrolled in Bootcamp. 