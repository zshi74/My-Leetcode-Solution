# Write your MySQL query statement below
# 183. Customers Who Never Order

SELECT Name Customers
FROM Customers
WHERE Id NOT IN (SELECT customerId
                 FROM Orders)
