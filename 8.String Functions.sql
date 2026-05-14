-- String Functions

Select length('university');

SELECT adress, length(adress)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER(first_name), LOWER(first_name)
FROM employee_demographics;

SELECT TRIM('        university         ');
SELECT LTRIM('       university         ');
SELECT RTRIM('       university         ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2), 
SUBSTRING(birth_date, 1, 4) AS birth_year
FROM employee_demographics;

SELECT country, replace(country, 'a', 'o') 
FROM employee_demographics;

SELECT LOCATE('d','Canada');

SELECT country, LOCATE('d',country)
FROM employee_demographics;

SELECT adress, country,
concat(adress,' ',country)
FROM employee_demographics;




