--titles--


CREATE TABLE titles (
				emp_title_id VARCHAR (15) NOT NULL,
				title VARCHAR(25) NOT NULL,
				PRIMARY KEY(emp_title_id));

select * from titles

DROP TABLE titles


--Employees--

CREATE TABLE employees (
				emp_no INT NOT NULL,
				emp_title_id VARCHAR (25) NOT NULL,
				birth_date DATE NOT NULL,
				first_name VARCHAR(25) NOT NULL,
				last_name VARCHAR(25) NOT NULL,
				sex VARCHAR(1) NOT NULL,
				hire_date DATE NOT NULL,
				PRIMARY KEY (emp_no),
    			FOREIGN KEY (emp_title_id) REFERENCES titles (emp_title_id));


select * from employees

DROP TABLE employees

--departments--

CREATE TABLE departments (
  				dept_no VARCHAR(15),
  				dept_name VARCHAR(25) NOT NULL,
  				PRIMARY KEY (dept_no));

select * from departments

DROP TABLE departments


--Dept_emp--

CREATE TABLE dept_emp (
				emp_no INT NOT NULL,
				dept_no VARCHAR(15) NOT NULL,
    			FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    			FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

select * from dept_emp

DROP TABLE dept_emp


--dept_managers--

CREATE TABLE dept_managers (
 				dept_no VARCHAR (15) NOT NULL,
				emp_no INT NOT NULL,
 				FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 				FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select * from dept_managers

DROP TABLE dept_managers


--salaries--

CREATE TABLE salaries (
				emp_no INT NOT NULL,
				salary INT NOT NULL,
				FOREIGN KEY(emp_no) REFERENCES employees(emp_no));
				
select * from salaries

DROP TABLE salaries


--titles--


CREATE TABLE titles (
				emp_title_id VARCHAR (10) NOT NULL,
				title VARCHAR(25) NOT NULL,
				PRIMARY KEY(emp_title_id));

select * from titles

DROP TABLE titles

