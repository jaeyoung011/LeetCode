# Write your MySQL query statement below


SELECT D.dept_name, IFNULL(count(S.dept_id),0) as student_number
FROM Department D LEFT JOIN Student S
on D.dept_id = S.dept_id
GROUP BY dept_name
ORDER BY student_number desc , dept_name asc