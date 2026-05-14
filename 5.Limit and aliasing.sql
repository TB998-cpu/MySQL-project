-- LIMIT and Aliasing

SELECT first_name, last_name, age, country
FROM employee_demographics
ORDER BY age 
LIMIT 3 , 1;

SELECT gender, AVG(age) AS age_avg
FROM employee_demographics
GROUP BY gender
HAVING age_avg > 40;

SELECT employee_id, first_name, AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY employee_id, first_name
HAVING AVG(salary) > 40000
ORDER BY avg_salary
LIMIT 4 , 1;




