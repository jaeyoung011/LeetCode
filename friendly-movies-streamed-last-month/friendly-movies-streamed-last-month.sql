# Write your MySQL query statement below

SELECT distinct(C.title) FROM Content C
LEFT JOIN TVProgram T
ON T.content_id = C.content_id
WHERE month(program_date) = 6
        and year(program_date) = 2020
        and kids_content = 'Y'
        and content_type = 'Movies'