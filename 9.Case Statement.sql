-- Case Statements

SELECT first_name, adress, country,
CASE
	WHEN country = ('Canada') THEN 'Canada Citizen'
    WHEN country = ('United States') THEN 'US Citizen'
END AS country_citizen
FROM employee_demographics;

SELECT first_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Middle age'
    WHEN age > 50 THEN 'Old'
END AS age_difference
FROM employee_demographics
ORDER BY age;

-- Increase and bonus of the salary

SELECT first_name, last_name, salary,
CASE
	WHEN salary > 50000 THEN salary + (salary * 0.05)
    WHEN salary < 50000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE 
	WHEN dept_id = 6 THEN salary + (salary * 0.10)
END AS bonus
FROM employee_salary;



