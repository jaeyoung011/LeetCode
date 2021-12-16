# Write your MySQL query statement below


SELECT U.name, CASE WHEN R.distance is not null then SUM(R.distance)
                    WHEN R.distance is null then 0
               END AS travelled_distance FROM Users U
LEFT JOIN Rides R
on R.user_id = U.id
GROUP BY U.name
ORDER BY travelled_distance DESC, name ASC;