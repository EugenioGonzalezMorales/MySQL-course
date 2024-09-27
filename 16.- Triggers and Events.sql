-- Triggers and Events

-- Triggers

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
	FOR EACH ROW 
BEGIN
INSERT INTO employee_demographics(employee_id, first_name, last_name)
VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$

DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Eugenio', 'Gonzalez', 'Boss', 1000000, NULL);

-- Events

SELECT *
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN 
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$

DELIMITER ;

-- in case events isnt working
	-- event_scheduler must be ON
SHOW VARIABLES LIKE 'event%';
