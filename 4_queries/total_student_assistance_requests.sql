SELECT COUNT(*) AS total_assistances, name 
FROM assistance_requests
JOIN students ON (students.id = assistance_requests.student_id)
WHERE name = 'Elliot Dickinson'
GROUP BY name;