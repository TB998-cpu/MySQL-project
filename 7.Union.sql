-- Unions / Also works as a DISTINCT, it will pick unique values

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'US middle age' AS Label
FROM employee_demographics
WHERE age > 45 AND country = 'United States'
UNION 
SELECT first_name, last_name, 'Canada middle age' AS Label
FROM employee_demographics
WHERE age > 45 AND country = 'CANADA'
UNION 
SELECT first_name, last_name, 'Well paid worker' AS Label
FROM employee_salary
WHERE salary > 60000