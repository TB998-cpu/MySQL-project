# Where clause
# The WHERE clause is used to filter records (rows of data)
# It's going to extract only those records that fulfill a specified condition.

SELECT *
FROM employee_salary 
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary 
WHERE salary > 50000;

SELECT *
FROM employee_salary 
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender != ('female');

-- AND or NOT -- Logical Operators

SELECT first_name, last_name, age
FROM employee_demographics
WHERE gender = ('male') AND age > 40;

SELECT first_name, city, birth_date
FROM employee_demographics
WHERE city = ('Las Vegas') AND birth_date > '1985-01-01';

SELECT first_name, age, gender
FROM employee_demographics
WHERE age > 40 OR gender = ('male');

SELECT first_name, age, gender
FROM employee_demographics
WHERE age > 40 OR NOT gender = ('male');

SELECT *
FROM employee_demographics
WHERE (first_name = 'Chris' AND age = 43) OR age > 50;

-- LIKE statement / % and _

SELECT *
FROM employee_demographics
WHERE country LIKE '%na%';

SELECT *
FROM employee_demographics
WHERE country LIKE 'United%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '__ril';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '__nn_';


