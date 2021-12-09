# Write your MySQL query statement below



SELECT country_name, CASE WHEN tep <= 15 then 'Cold'
                        WHEN tep >= 25 then 'Hot'
                        ELSE 'Warm'
                        END AS 'weather_type'
FROM
(SELECT C.country_name, AVG(W.weather_state) as tep
FROM Countries C left join Weather W on C.country_id = W.country_id
WHERE MONTH(W.day) = 11
GROUP BY C.country_name
) AS RES

