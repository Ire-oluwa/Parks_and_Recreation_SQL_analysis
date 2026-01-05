SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

-- INNER JOIN TAKES IN ONLY THE COMMON VALUES OF MULTIPLE TABLES
SELECT dem.employee_id,
		dem.first_name,
        dem.last_name,
        sal.occupation,
        sal.salary
FROM parks_and_recreation.employee_demographics as dem
INNER JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
-- OUTER JOIN COMBINES ALL VALUES WHETHER OR NOT THEY ARE NULL ON A COMMON COLUMN
SELECT sal.employee_id,
		sal.first_name,
        sal.last_name,
        sal.occupation,
        sal.salary
FROM parks_and_recreation.employee_demographics as dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;