SELECT *
FROM parks_and_recreation.employee_salary
;

-- UNION takes distinct values as opposed to UNION ALL
SELECT first_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name
FROM parks_and_recreation.employee_salary
;

-- Unions must have the same number of columns
SELECT first_name, last_name, "Old Man" as Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = "MALE"

UNION 

SELECT first_name, last_name, "Old Woman" as Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = "FEMALE"

UNION 

SELECT first_name, last_name, "Highly Paid"
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;