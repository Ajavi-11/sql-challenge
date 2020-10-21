drop table Employees;
drop table Departments;
drop table Departments_Employees;
drop table Department_Manager;
drop table Salaries;
drop table Titles;

-- DATA ENGINEERING

CREATE TABLE Employees (
	emp_no Int  NOT NULL,
	emp_title VARCHAR  NOT NULL,
	birth_date date  NOT NULL,
	first_name VARCHAR  NOT NULL,
	last_name VARCHAR  NOT NULL,
	sex VARCHAR  NOT NULL,
	hire_date date  NOT NULL,
		PRIMARY KEY (emp_no)
); 

SELECT * FROM Employees;

CREATE TABLE Departments (
	dept_no VARCHAR  NOT NULL,
	dept_name VARCHAR  NOT NULL,
		PRIMARY KEY (dept_no)
);

SELECT * FROM Departments;

CREATE TABLE Department_Manager (
	dept_no VARCHAR  NOT NULL,
	emp_no INT  NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)

);

SELECT * FROM Department_Manager;

CREATE TABLE Department_Employees(
	emp_no Int  NOT NULL,
	dept_no VARCHAR  NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Department_Employees

CREATE TABLE Salaries (
	emp_no Int  NOT NULL,
	salary INTEGER  NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries;

CREATE TABLE Titles (
	emp_title VARCHAR  NOT NULL,
	title VARCHAR  NOT NULL,
		PRIMARY KEY (emp_title)
);
SELECT * FROM Titles;

