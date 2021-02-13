-- Deliverable 1
-- Steps 1-7
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- Create a new table using the INTO clause.
-- Join both tables on the primary key.
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;
-- Filter the data on the birth_date column to retrieve the employees who were born
-- between 1952 and 1955. Then, order by the employee number.
SELECT * FROM retirement_titles;

-- Steps 8-14
-- Retrieve the employee number, first and last name, and title columns from the 
-- Retirement Titles table. Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
-- Sort the Unique Titles table in ascending order by the employee number and 
-- descending order by the last date of the most recent title.
SELECT * FROM unique_titles

-- Steps 15-21
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) DESC;
-- Group the table by title, then sort the count column in descending order.
SELECT * FROM retiring_titles;

-- Deliverable 2
-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each
-- set of rows defined by the ON () clause. 
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dept_emp.to_date = '9999-01-01')
ORDER BY employees.emp_no;
-- Filter the data on the to_date column to get current employees whose birth dates are between
-- January 1, 1965 and December 31, 1965. Order the table by the employee number.
SELECT * FROM mentorship_eligibility;