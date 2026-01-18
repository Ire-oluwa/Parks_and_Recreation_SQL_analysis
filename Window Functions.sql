SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT ROW_NUMBER() OVER(PARTITION BY dem.gender ORDER BY sal.salary ASC) AS row_num,
		dem.first_name,
        dem.last_name,
        dem.gender,
        sal.salary,
        RANK() OVER(PARTITION BY dem.gender ORDER BY sal.salary ASC) AS rank_num,
        AVG(sal.salary) OVER(PARTITION By dem.gender) AS avg_salary_gender,
        SUM(sal.salary) OVER(PARTITION By dem.gender ORDER BY sal.salary) AS rolling_sum_gender
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
;