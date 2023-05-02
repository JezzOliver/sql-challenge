-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT salaries.salary, employees.emp_no, employees.last_name, employees.first_name, employees.sex
FROM salaries
INNER JOIN employees On
employees.emp_no=salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986. ran out of time to solve
SELECT first_name,last_name, hire_date
FROM employees
Where employees.hire_date >= 1986-01-01
And employees.hire_date <= 1986-12-31
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no,
 departments.dept_name,
 dept_manager.emp_no,
 employees.last_name,
 employees.first_name
FROM dept_manager
Left Join departments ON
departments.dept_no = dept_manager.dept_no
Left Join employees ON
employees.emp_no = dept_manager.emp_no	

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT departments.dept_no,
 employees.emp_no,
 employees.last_name,
 employees.first_name,
 departments.dept_name
FROM dept_emp
Inner Join employees ON
employees.emp_no = dept_emp.emp_no	
Left Join departments ON
departments.dept_no = dept_emp.dept_no

-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name.


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

