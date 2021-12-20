# Write your MySQL query statement below



# select E.id, E.name, count(E2.id) mcount
# FROM Employee E
# Left join Employee E2
# on E.id = E2.managerId
# where E.name = 'John'
# GROUP BY E.id
# HAVING count(E2.id) >= 5


select distinct m.name as name
from employee e join employee m
on m.id = e.managerid
group by m.id
having count(*) >= 5


# self_join
- https://siyoon210.tistory.com/28


