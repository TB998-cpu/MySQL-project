-- Stored Procedures

CREATE PROCEDURE high_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL high_salary();

-- How to add more queries:
 
DELIMITER $$
CREATE PROCEDURE high_salary2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 40000;
    SELECT *
	FROM employee_salary
	WHERE salary >= 20000;
END $$

CALL high_salary2();

-- Select a salary from a specific ID

DELIMITER $$
CREATE PROCEDURE find_salary(identification INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = identification;
END $$

CALL find_salary(1);



