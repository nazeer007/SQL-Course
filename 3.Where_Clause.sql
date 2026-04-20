#WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1970-01-01'
;

# AND, OR, NOT -- Logical Operator
SELECT *
FROM employee_demographics
WHERE birth_date > '1970-01-01'
AND gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND NOT gender = 'male') OR age > 45
;

# LIKE Statement
# % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;
