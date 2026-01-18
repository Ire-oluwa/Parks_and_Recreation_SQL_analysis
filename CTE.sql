WITH CTE AS (
	SELECT dem.gender,
		AVG(sal.salary) avg_salary,
		MAX(sal.salary) max_salary,
        MIN(sal.salary) min_salary,
        COUNT(sal.salary) count
	FROM employee_demographics dem
	JOIN employee_salary sal
		ON dem.employee_id = sal.employee_id
	GROUP BY dem.gender
)
SELECT *
FROM CTE
;