# Write your MySQL query statement below
# 580. Count Student Number in Departments

SELECT dept_name, count(student_id) as student_number
FROM student
RIGHT OUTER JOIN department ON student.dept_id = department.dept_id
GROUP BY department.dept_name
ORDER BY count(student_id) DESC, department.dept_name