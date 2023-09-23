SELECT s.fullname, g.grade
FROM grades g
JOIN students s ON s.id = g.student_id
WHERE g.discipline_id = 1 AND s.group_id = 1
ORDER BY s.fullname;