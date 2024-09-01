SELECT 
    c.course_id,
    c.course_name,
    AVG(CASE 
            WHEN g.grade = 'A' THEN 4.0
            WHEN g.grade = 'B' THEN 3.0
            WHEN g.grade = 'C' THEN 2.0
            WHEN g.grade = 'D' THEN 1.0
            WHEN g.grade = 'F' THEN 0.0
        END) AS AverageGrade
FROM 
    courses c
JOIN 
    grades g ON c.course_id = g.course_id
GROUP BY 
    c.course_id, c.course_name
ORDER BY 
    AverageGrade ASC;
