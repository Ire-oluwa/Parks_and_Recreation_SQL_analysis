DROP TEMPORARY TABLE IF EXISTS data
;

CREATE TEMPORARY TABLE data(
	first_name varchar(50),
    last_name varchar(50),
    favourite_film varchar(100)
)
;

INSERT INTO data
VALUES
("Ron", "Weasley", "The Lord of the Bombs: The Twin Towers"),
("Jack", "Sparrow", "Nuremberg")
;

SELECT *
FROM data
;

DROP TEMPORARY TABLE IF EXISTS salary_over_50k;

CREATE TEMPORARY TABLE salary_over_50k
(
	SELECT *
	FROM employee_salary
	WHERE salary >= 60000
)
;

SELECT *
FROM salary_over_50k