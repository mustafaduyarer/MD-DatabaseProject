SELECT 
    student_id,
    professor_id,
    COUNT(course_id) AS CommonCourses
FROM 
    grades
GROUP BY 
    student_id, professor_id
ORDER BY 
    CommonCourses DESC
LIMIT 1;
