-- Window Functions / Aggregate-like operation

-- Example without window function

Select gender, AVG(salary)
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON DEM.employee_id = SAL.employee_id
GROUP BY gender;

-- Example with window function (OVER(PARTITION BY)

Select DEM.first_name, DEM.last_name, gender, 
AVG(salary) OVER(PARTITION BY gender)
	FROM employee_demographics DEM
		JOIN employee_salary SAL
		ON DEM.employee_id = SAL.employee_id;
    
-- Example 2 / SUM rolling salary per gender

Select DEM.first_name, DEM.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY DEM.employee_id) AS Total_salary_gender
	FROM employee_demographics DEM
		JOIN employee_salary SAL
		ON DEM.employee_id = SAL.employee_id;
        
-- Example 3 / Row_Number(), RANK() and DENSE_RANK()

Select DEM.first_name, DEM.last_name, gender, salary,
ROW_NUMBER() OVER(partition by gender ORDER BY salary DESC),
RANK() OVER(partition by gender ORDER BY salary DESC),
DENSE_RANK() OVER(partition by gender ORDER BY salary DESC)
	FROM employee_demographics DEM
		JOIN employee_salary SAL
		ON DEM.employee_id = SAL.employee_id;
        





