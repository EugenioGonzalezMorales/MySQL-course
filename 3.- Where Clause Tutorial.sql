-- WHERE Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie';


SELECT * 
FROM employee_salary
WHERE salary > 50000;

SELECT * 
FROM employee_demographics
WHERE gender != 'Female';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATORS --

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;


-- LIKE STATEMENT
-- % (what ever, set at the beggining or at the end) and _ (which ever character, is like, a specific space for any character)

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';