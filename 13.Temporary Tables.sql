-- Temporary Tables // They only work while the project is open
-- If the project is closed, the tables stop working

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
movie varchar(50),
release_date date,
producer varchar(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES 
('Anna', 'Lenora', 'How to train your Dragon', '2001-04-21', 'Universal Pictures'),
('John', 'Hamberg', 'Puss in Boots', '2010-11-25', 'DreamWorks Animation'),
('Paul', 'Maya', 'Wish Dragon', '2005-02-02', 'Sony Pictures Animation'),
('Jonny', 'Hardy', 'Wild Robot', '2001-04-21', 'DreamWorks Animation'),
('Carla', 'Poll', 'The Croods', '1995-03-02', 'Universal Pictures');

-- Another way to create Temporary tables, irl situation

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE SALARY >= 50000;

-- After creating the table

SELECT *
FROM salary_over_50k;
