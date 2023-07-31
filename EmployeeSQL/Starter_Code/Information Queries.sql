SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
LIMIT 10;

COPY (SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no)
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\Employee_Salary.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

COPY (SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01')
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\hired_1986.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

COPY (SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no)
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\manager_info.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
LIMIT 10;

COPY (SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no)
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\employee_departments.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

COPY (SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%')
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\Hercules_B.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
LIMIT 10;

COPY (SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales')
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\Sales_Dept.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
LIMIT 20;

COPY (SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development'))
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\Sales_and_Development.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT last_name, COUNT(*) AS name_frequency
FROM employees
GROUP BY last_name
ORDER BY name_frequency DESC
LIMIT 10;

COPY (SELECT last_name, COUNT(*) AS name_frequency
FROM employees
GROUP BY last_name
ORDER BY name_frequency DESC)
TO 'C:\Users\gello\OneDrive\Desktop\bootcamp\homework\9-SQL\SQL_Challenge_1\EmployeeSQL\Starter_Code\Output\Surname_Frequency.csv' WITH (FORMAT CSV, HEADER);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
