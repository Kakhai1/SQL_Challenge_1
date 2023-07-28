CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    emp_no int NOT NULL PRIMARY KEY,
    title_id VARCHAR(255) REFERENCES titles(title_id),
    birth_date date NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no) -- Adding a primary key constraint on 'dept_no'
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no int NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary integer NOT NULL
);

SELECT * FROM employees
