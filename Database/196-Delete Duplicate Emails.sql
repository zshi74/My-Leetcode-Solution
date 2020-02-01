# Write your MySQL query statement below
# 196. Delete Duplicate Emails


DELETE FROM Person
WHERE id NOT IN (SELECT *
                 FROM (SELECT min(Id)
                       FROM Person
                       GROUP BY Email) p)