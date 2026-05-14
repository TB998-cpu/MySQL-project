-- CTEs (Common Table Expressions)

WITH CTE_example AS
(
Select gender, AVG(salary) avg_salary
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON DEM.employee_id = SAL.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_example;

/* SELECT AVG(avg_salary)
FROM CTE_example;

This won't work because the table doesn´t exist
A "temporary table" must be created
*/


WITH CTE_example AS
(
Select first_name, gender, age, birth_date, adress country
FROM employee_demographics DEM
WHERE birth_date > '1985-01-01'
),
CTE_example_2 AS
(SELECT *
FROM employee_salary
WHERE salary > 45000
)
SELECT *
FROM CTE_example
JOIN CTE_example_2
	ON CTE_example.first_name = CTE_example_2.first_name;