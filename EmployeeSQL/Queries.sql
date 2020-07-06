-- Question 1
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

-- Question 2
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question 3
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
FROM dept_manager
INNER JOIN employees
ON (employees.emp_no = dept_manager.emp_no)
INNER JOIN departments
ON (departments.dept_no = dept_manager.dept_no)

-- Question 4	
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
	
-- Question 5
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Question 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name = 'Sales'

-- Question 7
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name IN('Sales', 'Development')

-- Question 8
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
Group By last_name
Order By COUNT(last_name) DESC




