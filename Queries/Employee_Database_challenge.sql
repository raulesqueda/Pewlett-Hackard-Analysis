--Employee Database Challenge

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table
-- Retrieve the title, from_date, and to_date columns from the Titles table
SELECT emp.emp_no,emp.first_name,emp.last_name,
	   tl.title, tl.from_date, tl.to_date
-- Create a new table using the INTO clause.
INTO ret_employees
FROM employees as emp
INNER JOIN titles as tl
-- Join both tables on the primary key.
ON (emp.emp_no = tl.emp_no)
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--Then, order by the employee number
ORDER BY emp.emp_no;

select * from ret_employees

-- Use Dictinct with Orderby to remove duplicate rows
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
-- Create a Unique Titles table using the INTO clause
INTO unique_titles
FROM ret_employees
-- Sort in ascending order by the employee number and descending order by the the most recent title
WHERE (ret_employees.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

--  Retrieve the number of employees by their most recent job title who are about to retire

-- Use Dictinct with Orderby to remove duplicate rows
-- Retrieve the number of titles from the Unique Titles table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

select * from retiring_titles;

-- Create a Mentorship Eligibility
-- Retrieve the emp_no, first_name, last_name, and birth_date from the Employees table.
-- Retrieve the from_date and to_date  from the Department Employee table.
-- Retrieve the title from the Titles table
-- Use a DISTINCT ON statement to retrieve
SELECT DISTINCT ON (emp.emp_no)
emp.emp_no,
emp.first_name,
emp.last_name,
emp.birth_date,
dep.from_date,
dep.to_date, 
tl.title
-- Create a new table using the INTO clause on the primary key
INTO mentorship_eligibilty
FROM employees as emp
INNER JOIN dept_emp AS dep
ON (emp.emp_no = dep.emp_no)
INNER JOIN titles AS tl
ON (emp.emp_no = tl.emp_no)
-- Filter the data on the to_date column and order the table by the employee number
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND dep.to_date = ('9999-01-01')
ORDER BY emp.emp_no;

select * from mentorship_eligibilty;
