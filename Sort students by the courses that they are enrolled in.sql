SELECT 
    c.course_name,
    s.student_id,
    s.student_name
    
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
JOIN 
    courses c ON g.course_id = c.course_id
ORDER BY 
    c.course_name, s.student_name;
