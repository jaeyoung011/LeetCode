# Write your MySQL query statement below


SELECT CASE WHEN U.unique_id IS NULL THEN null
            WHEN U.unique_id IS NOT NULL THEN unique_id
        END AS unique_id, E.name 
FROM Employees E
LEFT JOIN EmployeeUNI U on E.id = U.id


```
LEFT JOIN , RIGHT JOIN 기준이 되는 컬럼에 따라 값이 달라진다.
```
