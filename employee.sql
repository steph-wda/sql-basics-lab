--List all employee first and last names only that live in Calgary
SELECT * FROM employee
WHERE city = 'Calgary';

--Find the birthdate for the youngest employee.
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--Find the birthdate for the oldest employee.
SELECT * FROM employee
ORDER BY birth_date 
LIMIT 1;

--Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = (SELECT employee_id FROM employee
                   WHERE first_name = 'Nancy');

--