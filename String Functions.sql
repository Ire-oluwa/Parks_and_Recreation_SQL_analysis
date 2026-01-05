SELECT UPPER("Sky") as Upper_Case;

SELECT ("     SKYFALL     ") name, TRIM("     SKYFALL     ") trimmed
;
SELECT rtrim("       Sokoto    ");

SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT first_name, LENGTH(first_name) AS len
FROM parks_and_recreation.employee_salary
ORDER BY len DESC
;

SELECT  LOCATE("an", "Canada")
;

SELECT SUBSTRING(first_name, 2, 3)
FROM parks_and_recreation.employee_salary
;

SELECT *, CONCAT(first_name, " ", last_name) as full_name
FROM parks_and_recreation.employee_salary
;