# Write your MySQL query statement below


SELECT Q.id, Q.year, ifnull(N.npv,0) as npv FROM Queries Q
LEFT JOIN NPV N
on Q.id = N.id and Q.year=N.year