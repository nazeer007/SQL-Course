# Having vs Where

# Invalid
SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

# HAVING is going to run only after the GROUP BY runs
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' # row level filter
GROUP BY occupation
HAVING AVG(salary) > 75000 # Aggregate function level
;
