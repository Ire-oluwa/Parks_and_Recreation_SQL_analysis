SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = "Leslie";

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != "Female";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (birth_date > "1985-01-01" AND age > 44) OR gender = "Male";

-- LIKE statement
-- `%` represents any value while `-` represents a specific value
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a__%";