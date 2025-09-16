-- Create Departments table
CREATE TABLE Departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(100) NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100) NOT NULL,
    dept_id NUMBER,
    hire_date DATE DEFAULT SYSDATE,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Create Salaries table
CREATE TABLE Salaries (
    salary_id NUMBER PRIMARY KEY,
    emp_id NUMBER, 
    amount NUMBER(10,2) NOT NULL,
    effective_date DATE DEFAULT SYSDATE,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
