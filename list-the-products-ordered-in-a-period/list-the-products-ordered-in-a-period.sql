# Write your MySQL query statement below

SELECT P.product_name, sum(O.unit) unit  FROM Orders O
LEFT JOIN Products P on P.product_id = O.product_id
WHERE MONTH(O.order_date) = 2
GROUP BY P.product_name
HAVING unit >=100