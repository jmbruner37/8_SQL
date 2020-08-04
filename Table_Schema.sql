-- data engineering

create table Employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date date NOT NULL,
		primary key (emp_no)
);

select * from Employees

create table Departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
		primary key(dept_no)
);

select * from Departments

create table Department_Employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
		foreign key (emp_no) references Employees (emp_no),
		foreign key (dept_no) references Departments (dept_no)
		
);

select * from Department_Employees

create table Department_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
		foreign key (dept_no) references Departments (dept_no),
		foreign key (emp_no) references Employees (emp_no)
);

select * from Department_Manager

create table Salaries (
	emp_no INT NOT NULL,
		salary INT NOT NULL,
		foreign key(emp_no) references Employees(emp_no)
);

select * from Salaries

create table Titles (
	emp_title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
		primary key(emp_title_id)
);

select * from Titles
