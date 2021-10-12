SELECT assignment_id, day, chapter, name, COUNT(assistance_requests) AS total_requests
FROM assignments
JOIN assistance_requests ON (assignments.id = assistance_requests.assignment_id)
GROUP BY assignment_id, day, chapter, name
ORDER BY total_requests DESC;

-- List each assignment with the total number of assistance requests with it. 