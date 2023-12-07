-- create tables
CREATE TABLE titles (
    title_id VARCHAR(20),
    title VARCHAR(30) NOT NULL,
	CONSTRAINT titles PRIMARY KEY (title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
    emp_no VARCHAR(10),
    emp_title_id VARCHAR(20),
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(5) NOT NULL,
    hire_date VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no VARCHAR(10),
    salary VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no VARCHAR(10),
    dept_no VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);