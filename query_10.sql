SELECT d.name  
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
WHERE g.student_id = 1 AND d.teacher_id = 2
GROUP BY d.id;