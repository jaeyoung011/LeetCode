# Write your MySQL query statement below


select S.name from SalesPerson S
where S.sales_id  not in (select O.sales_id from Orders O
                         join Company C on C.com_id = O.com_id
                         where C.name = 'Red'
                        )