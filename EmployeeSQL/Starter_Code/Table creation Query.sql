CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE employees (
    emp_no int NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(1) NOT NULL CHECK (sex IN ('M','F')),
    hire_date VARCHAR(255) NOT NULL
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Run this section AFTER importing CSV to employees table or else!
ALTER TABLE employees
	ALTER COLUMN birth_date
	TYPE date
	USING (to_date(birth_date,'MM/DD/YYYY'));
	
ALTER TABLE employees
	ALTER COLUMN hire_date
	TYPE date
	USING (to_date(hire_date,'MM/DD/YYYY'));
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no int NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary integer NOT NULL,
	PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------