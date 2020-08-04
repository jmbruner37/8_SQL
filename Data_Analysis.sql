--Data Analysis



--List the following details of each employee: employee number, last name, first name, sex, and salary.
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex,
Salaries.salary
from Employees
inner join Salaries on
Employees.emp_no = Salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date from Employees
where hire_date >= '1985-12-31'
and hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select Department_Manager.dept_no, 
	   Departments.dept_name,
	   Department_Manager.emp_no,
	   Employees.last_name,
	   Employees.first_name
from Department_Manager
inner join Departments on
Department_Manager.dept_no = Departments.dept_no
inner join Employees on
Department_Manager.emp_no = Employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select Employees.emp_no, 
	   Employees.last_name, 
	   Employees.first_name,
	   Departments.dept_name
from Employees
inner join Department_Manager on
Employees.emp_no = Department_Manager.emp_no
inner join Departments on
Department_Manager.dept_no = Departments.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from Employees as e
where first_name = 'Hercules'
and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from Employees as e
join Department_Employees on
e.emp_no = Department_Employees.emp_no
inner join Departments as d on
Department_Employees.dept_no = d.dept_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from Employees as e
join Department_Employees on
e.emp_no = Department_Employees.emp_no
inner join Departments as d on
Department_Employees.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) from Employees
group by last_name
order by count(last_name) desc;
