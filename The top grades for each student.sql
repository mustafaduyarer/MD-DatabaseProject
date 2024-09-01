SELECT 
    s.student_id,
    s.student_name,
   
    MAX(g.grade) AS TopGrade
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
GROUP BY 
    s.student_id, s.student_name;