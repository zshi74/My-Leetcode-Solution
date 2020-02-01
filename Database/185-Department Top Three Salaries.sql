## 185. Department Top Three Salaries

SELECT d.name As Department, a.name As Employee, a.Salary
FROM (SELECT *,
      DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) Rank
      FROM Employee) a
JOIN department d ON a.departmentid = d.id
WHERE Rank <= 3