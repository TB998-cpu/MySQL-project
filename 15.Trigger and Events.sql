-- Triggers and Events

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- For multiple lines of code, use Delimiter $$
-- How insert new values on tables

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Paul', 'Jhonson', 'Web developer', 100000, NULL);


-- Events
-- It works like a "scheculed automator"
-- Example 1 - Retire people over the age of 60

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$

SHOW VARIABLES LIKE 'event%';









