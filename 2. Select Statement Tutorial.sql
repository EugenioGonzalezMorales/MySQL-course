SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT employee_id, 
last_name, 
birth_date,
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;
# PEMDAS

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;