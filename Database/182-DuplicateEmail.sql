# Write your MySQL query statement below
# 182. Duplicate Emails

SELECT DISTINCT Email
FROM Person
GROUP BY Email
HAVING count(Email) >= 2