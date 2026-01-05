SELECT gender,
	   avg(age) as average_age,
       min(age) as youngest_age,
       max(age) as oldest_age,
       count(age) as number_of_persons
       
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- ORDER BY
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;