# Write your MySQL query statement below
# 181. Employees Earning More Than Their Managers

SELECT e1.Name Employee
FROM Employee e1
JOIN Employee e2 ON e1.ManagerId = e2.Id
WHERE e1.Salary > e2.Salary