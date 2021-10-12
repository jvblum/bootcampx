SELECT 
  teachers.name AS teacher_name, 
  students.name AS student_name, 
  assignments.name AS assignment_name,
  (completed_at - started_at) AS duration
FROM assistance_requests
JOIN assignments ON (assistance_requests.assignment_id = assignments.id)
JOIN teachers ON (assistance_requests.teacher_id = teachers.id)
JOIN students ON (assistance_requests.student_id = students.id)
ORDER BY duration;