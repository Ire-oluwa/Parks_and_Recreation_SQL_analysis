SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT (CONCAT(first_name, " ", last_name)) AS full_name,
		salary,
        occupation
FROM parks_and_recreation.employee_salary
WHERE salary > (
 SELECT AVG(salary)
			FROM parks_and_recreation.employee_salary
)
ORDER BY salary DESC
;
