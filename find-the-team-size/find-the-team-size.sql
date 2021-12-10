# Write your MySQL query statement below



WITH tb1 AS (
select employee_id, team_id, count(*) as ct
    FROM Employee
    GROUP BY team_id
)

SELECT E.employee_id, T.ct AS team_size FROM Employee E
left join tb1 T on T.team_id = E.team_id