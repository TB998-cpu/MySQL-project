-- Group BY
-- It groups together rows that have the same values in the specified column or columns.
-- Is going to allow us to group rows that have the same data and run aggregate functions on them

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY
-- is used to sort the result-set in ascending or descending order.

SELECT *
FROM employee_demographics
ORDER BY gender, age; 

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC; 

-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%planner'
GROUP BY occupation
HAVING AVG(salary) > 50000;



