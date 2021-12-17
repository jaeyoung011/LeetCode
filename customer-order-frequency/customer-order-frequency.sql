# Write your MySQL query statement below


with tb1 as
(SELECT O.customer_id, MONTH(O.order_date) month, SUM(P.price*O.quantity) as total
From Orders O
LEFT JOIN Product P
on P.product_id = O.product_id
WHERE year(order_date) = 2020 and ( month(order_date) = 6 or month(order_date) = 7)
GROUP BY customer_id, month)

SELECT C.customer_id, C.name FROM Customers C
RIGHT JOIN tb1 T
on T.customer_id = C.customer_id
where total >= 100
group by customer_id, name
having count(name) >= 2