-- INSERT example
INSERT INTO Departments (dept_id, dept_name) VALUES (1, 'Engineering');
INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES (101, 'Alice Johnson', 1);
INSERT INTO Salaries (salary_id, emp_id, amount) VALUES (1001, 101, 5500);

-- UPDATE example
UPDATE Employees SET dept_id = 1 WHERE emp_id = 101;

-- DELETE example
DELETE FROM Salaries WHERE salary_id = 1001;
