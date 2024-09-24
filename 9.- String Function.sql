-- STRING FUNCTIONS 

-- length ---------------------

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- upper and lower ------------

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY 2;

-- trim -----------------------
SELECT TRIM('           sky     ');

-- left trim
SELECT LTRIM('           sky     ');

-- right trim
SELECT RTRIM('           sky     ');

-- substring --------------------

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- replace -----------------------

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- locate ---------------------------

SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE(first_name, 'An', first_name)
FROM employee_demographics;

-- concat ----------------------------
SELECT first_name, 
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
