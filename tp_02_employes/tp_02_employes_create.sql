DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees 
(
	emp_id SERIAL 
	--,emp_manager_id INT NULL
	,emp_lastname VARCHAR(50) NOT NULL
	,emp_firstname VARCHAR(50) NOT NULL
	,emp_salary INT NOT NULL
	,emp_hiredate DATE NOT NULL
	--,FOREIGN KEY (emp_manager_id) REFERENCES employees(emp_id)
);

ALTER TABLE employees
	ADD PRIMARY KEY(emp_id)
	,ADD COLUMN emp_manager_id INT NULL
	,ADD CONSTRAINT fk_employees_manager FOREIGN KEY (emp_manager_id) REFERENCES employees(emp_id);