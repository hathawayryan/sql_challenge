--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees, salaries
Where employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
WHERE right(hire_date, 4) = '1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex 
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT count(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;




