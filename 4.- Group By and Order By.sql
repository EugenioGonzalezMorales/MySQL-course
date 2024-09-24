-- Group by

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY age, gender;

-- ORDER BY --  with column number (no recommended)

SELECT *
FROM employee_demographics
ORDER BY 5, 4

