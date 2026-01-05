SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT first_name, age,
	CASE
		WHEN age <= 35 THEN "Young"
        WHEN age BETWEEN 36 AND 50 THEN "Middle Age"
        ELSE "Old"
	END AS Label
FROM parks_and_recreation.employee_demographics
;

SELECT CONCAT(first_name, " ", last_name) AS full_name,
		salary,
	CASE
		WHEN salary < 50000 THEN salary * 1.05
        WHEN salary > 50000 THEN salary * 1.07
	END AS new_salary,
    CASE
		WHEN dept_id = 6 THEN salary * 0.10
    END as bonus
FROM parks_and_recreation.employee_salary
;
