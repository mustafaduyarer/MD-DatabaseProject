SELECT 
    p.professor_id,
    p.professor_name,
    AVG(CASE 
            WHEN g.grade = 'A' THEN 4.0
            WHEN g.grade = 'B' THEN 3.0
            WHEN g.grade = 'C' THEN 2.0
            WHEN g.grade = 'D' THEN 1.0
            WHEN g.grade = 'F' THEN 0.0
        END) AS AverageGrade
FROM 
    grades g
JOIN 
    professors p ON g.professor_id = p.professor_id
GROUP BY 
    p.professor_id, p.professor_name;
