-- Joins
-- Join is the same as INNER Join

SELECT *
FROM employee_demographics AS demo
JOIN employee_salary AS salary
	ON demo.employee_id = salary.employee_id;

SELECT demo.employee_id, age, occupation
FROM employee_demographics AS demo
JOIN employee_salary AS salary
	ON demo.employee_id = salary.employee_id;
    
-- Outer Joins
    
SELECT *
FROM employee_demographics AS demo
LEFT JOIN employee_salary AS salary
	ON demo.employee_id = salary.employee_id;
    
SELECT *
FROM employee_demographics AS demo
RIGHT JOIN employee_salary AS salary
	ON demo.employee_id = salary.employee_id;
    
-- Self Join

SELECT *
FROM employee_salary AS salary_1
JOIN employee_salary AS salary_2
	ON salary_1.employee_id + 2 = salary_2.employee_id;
    
-- Joining multiple tables

SELECT *
FROM employee_demographics AS demo
JOIN employee_salary AS salary
	ON demo.employee_id = salary.employee_id
JOIN parks_departments AS parks
	ON salary.dept_id = parks.department_id;
    

