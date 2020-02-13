# Write your MySQL query statement below
## 584. Find Customer Referee

SELECT name
FROM customer
WHERE referee_id != 2 or referee_id IS NULL