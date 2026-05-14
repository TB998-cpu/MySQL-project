-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN (SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1);

-- Scalar subquery, example 1

SELECT salary.first_name, salary, age, adress, country,
    (SELECT AVG(salary) 
    FROM employee_salary) AS Math
FROM employee_salary AS salary
JOIN employee_demographics AS demo
    ON salary.employee_id = demo.employee_id;
    
-- Example 2, AVG of only the MAX ages

SELECT AVG(`MAX(age)`)
	FROM (SELECT gender, MAX(age)
	FROM employee_demographics
	GROUP BY gender) AS Agg_Table
    



