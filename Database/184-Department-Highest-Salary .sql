# Write your MySQL query statement below
# 184. Department Highest Salary


SELECT Department.name As Department,
       Employee.name As Employee,
       Employee.Salary
FROM Employee
JOIN Department ON Employee.DepartmentId = Department.Id
WHERE (Employee.DepartmentId, Salary) IN (SELECT DepartmentId, MAX(Salary)
                                FROM Employee
                                GROUP BY DepartmentId)