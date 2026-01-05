SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
-- you can't use WHERE for an aggregated value
HAVING AVG(age) > 40