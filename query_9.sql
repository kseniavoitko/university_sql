SELECT d.name 
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id
WHERE g.student_id = 2
GROUP BY g.discipline_id;