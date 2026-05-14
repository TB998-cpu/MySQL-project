-- Select statement

SELECT * 
FROM little_company_2.employee_demographics;

SELECT distinct age 
FROM little_company_2.employee_demographics;

SELECT first_name, age, gender
FROM little_company_2.employee_demographics;

SELECT first_name, last_name, age, (age + 10) * 10 + 10 AS older_age
FROM little_company_2.employee_demographics;


