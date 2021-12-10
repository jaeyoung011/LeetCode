# Write your MySQL query statement below

SELECT id, name FROM Students
where department_id not in (select id from Departments)