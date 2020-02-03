## 570. Managers with at Least 5 Direct Reports

SELECT e1.Name 
FROM Employee e1
WHERE e1.Id IN (SELECT ManagerId
                FROM Employee
                GROUP BY ManagerId
                HAVING count(ManagerId) >= 5)